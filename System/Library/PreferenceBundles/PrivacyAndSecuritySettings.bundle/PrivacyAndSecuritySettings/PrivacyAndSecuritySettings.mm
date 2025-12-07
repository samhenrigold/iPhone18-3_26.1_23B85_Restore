uint64_t sub_2850()
{
  v2 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -5;
  v9 = 8;
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_2948;
  v6 = &unk_6DFD8;
  v7 = &v10;
  v8 = &v2;
  if (ACMKernelControl())
  {
    v0 = 0;
  }

  else
  {
    v0 = *(v11 + 6) == 0;
  }

  _Block_object_dispose(&v10, 8);
  return *&v0 & ((v2 & 8) >> 3);
}

uint64_t sub_2948(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_2A28@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v61 = sub_44BC(&qword_77070, &qword_562A0);
  __chkstk_darwin(v61);
  v62 = &v52 - v2;
  v57 = sub_44BC(&qword_77078, &qword_562A8);
  __chkstk_darwin(v57);
  v4 = (&v52 - v3);
  v55 = sub_44BC(&qword_77080, &qword_562B0);
  __chkstk_darwin(v55);
  v6 = &v52 - v5;
  v58 = sub_44BC(&qword_77088, &qword_562B8);
  __chkstk_darwin(v58);
  v56 = &v52 - v7;
  v60 = sub_44BC(&qword_77090, &qword_562C0);
  __chkstk_darwin(v60);
  v59 = &v52 - v8;
  v9 = sub_53FD8();
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_44BC(&qword_77098, &qword_562C8);
  v13 = __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v52 - v17;
  v19 = *(v1 + 32);
  if (v19 <= 1)
  {
    if (!*(v1 + 32))
    {
      v64 = *(v1 + 16);
      v65 = 0;

      sub_44BC(&qword_770D0, &qword_562D8);
      sub_4714();
      sub_540D8();
      v24 = v67;
      *v4 = v66;
      *(v4 + 8) = v24;
      swift_storeEnumTagMultiPayload();
      sub_44BC(&qword_770C0, &qword_562D0);
      sub_45D8();
      sub_4688();
      v25 = v59;
      sub_540D8();
      sub_4790(v25, v62, &qword_77090, &qword_562C0);
      swift_storeEnumTagMultiPayload();
      sub_4504();
      sub_540D8();
      v26 = v25;
      return sub_47F8(v26, &qword_77090, &qword_562C0);
    }

    v53 = v16;
    v34 = objc_allocWithZone(ISIcon);
    v35 = sub_54638();
    v36 = [v34 initWithBundleIdentifier:v35];

    v37 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v38 = *v1;
    v66 = *v1;
    v67 = *(v1 + 8);
    if (v67)
    {
      v39 = v38;
    }

    else
    {

      sub_54818();
      v45 = sub_54168();
      v52 = v36;
      v46 = v45;
      sub_53C08();

      sub_53FC8();
      swift_getAtKeyPath();
      sub_47F8(&v66, &qword_770D8, &qword_562E0);
      (*(v54 + 8))(v11, v9);
      v39 = v64;
    }

    [v37 setScale:v39];
    [v37 setDrawBorder:1];
    sub_53B98();
    v47 = v53;
    (*(v53 + 16))(v6, v18, v12);
    swift_storeEnumTagMultiPayload();
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8, &protocol conformance descriptor for AsyncIconImage<A>);
    v48 = v56;
    sub_540D8();
    sub_4790(v48, v4, &qword_77088, &qword_562B8);
    swift_storeEnumTagMultiPayload();
    sub_44BC(&qword_770C0, &qword_562D0);
    sub_45D8();
    sub_4688();
    v49 = v59;
    sub_540D8();
    sub_47F8(v48, &qword_77088, &qword_562B8);
    sub_4790(v49, v62, &qword_77090, &qword_562C0);
    swift_storeEnumTagMultiPayload();
    sub_4504();
    sub_540D8();
    sub_47F8(v49, &qword_77090, &qword_562C0);
    return (*(v47 + 8))(v18, v12);
  }

  else
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        swift_storeEnumTagMultiPayload();
        sub_4504();
        return sub_540D8();
      }

      v20 = [objc_opt_self() settingsIconCache];
      v21 = sub_54638();
      v22 = [v20 imageForKey:v21];

      if (v22)
      {
        *&v23 = COERCE_DOUBLE(sub_54318());
      }

      else
      {
        *&v23 = 0.0;
      }

      v64 = *&v23;
      v65 = 1;

      sub_44BC(&qword_770D0, &qword_562D8);
      sub_4714();
      sub_540D8();
      v50 = v67;
      *v4 = v66;
      *(v4 + 8) = v50;
      swift_storeEnumTagMultiPayload();
      sub_44BC(&qword_770C0, &qword_562D0);
      sub_45D8();
      sub_4688();
      v51 = v59;
      sub_540D8();
      sub_4790(v51, v62, &qword_77090, &qword_562C0);
      swift_storeEnumTagMultiPayload();
      sub_4504();
      sub_540D8();

      v26 = v51;
      return sub_47F8(v26, &qword_77090, &qword_562C0);
    }

    v53 = v16;
    v27 = objc_allocWithZone(ISIcon);
    v28 = sub_54638();
    v29 = [v27 initWithType:v28];

    v30 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v31 = *v1;
    v66 = *v1;
    v67 = *(v1 + 8);
    if (v67)
    {
      v32 = v31;
    }

    else
    {

      sub_54818();
      v40 = sub_54168();
      v52 = v29;
      v41 = v40;
      sub_53C08();

      sub_53FC8();
      swift_getAtKeyPath();
      sub_47F8(&v66, &qword_770D8, &qword_562E0);
      (*(v54 + 8))(v11, v9);
      v32 = v64;
    }

    [v30 setScale:v32];
    [v30 setDrawBorder:1];
    sub_53B98();
    v42 = v53;
    (*(v53 + 16))(v6, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8, &protocol conformance descriptor for AsyncIconImage<A>);
    v43 = v56;
    sub_540D8();
    sub_4790(v43, v4, &qword_77088, &qword_562B8);
    swift_storeEnumTagMultiPayload();
    sub_44BC(&qword_770C0, &qword_562D0);
    sub_45D8();
    sub_4688();
    v44 = v59;
    sub_540D8();
    sub_47F8(v43, &qword_77088, &qword_562B8);
    sub_4790(v44, v62, &qword_77090, &qword_562C0);
    swift_storeEnumTagMultiPayload();
    sub_4504();
    sub_540D8();
    sub_47F8(v44, &qword_77090, &qword_562C0);
    return (*(v42 + 8))(v15, v12);
  }
}

uint64_t sub_36B4(uint64_t *a1)
{
  if (sub_532F0(2, 26, 0, 0))
  {
    sub_54118();

    return sub_53EB8();
  }

  else
  {
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    sub_54998();
    swift_getWitnessTable();
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    return sub_53EB8();
  }
}

uint64_t sub_3818(uint64_t *a1)
{
  if (sub_532F0(2, 26, 0, 0))
  {
    sub_54118();
    sub_53EB8();
  }

  else
  {
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    sub_54998();
    swift_getWitnessTable();
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3A38()
{
  sub_54668();
  v0 = sub_54718();

  return v0;
}

uint64_t sub_3A74(uint64_t a1)
{
  sub_54668();
  sub_546C8();
}

Swift::Int sub_3AC8(uint64_t a1)
{
  sub_54668();
  sub_54C28();
  sub_546C8();
  v1 = sub_54C58();

  return v1;
}

uint64_t sub_3B44(uint64_t a1, id *a2)
{
  result = sub_54648();
  *a2 = 0;
  return result;
}

uint64_t sub_3BBC(uint64_t a1, id *a2)
{
  v3 = sub_54658();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3C3C@<X0>(uint64_t *a2@<X8>)
{
  sub_54668();
  v3 = sub_54638();

  *a2 = v3;
  return result;
}

Swift::Int sub_3D24(uint64_t a1, uint64_t a2)
{
  sub_54C28();
  swift_getWitnessTable();
  sub_53AA8();
  return sub_54C58();
}

uint64_t sub_3D8C(void *a1, uint64_t *a2)
{
  v2 = sub_54668();
  v4 = v3;
  if (v2 == sub_54668() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_54BD8();
  }

  return v7 & 1;
}

void *sub_3E78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3E88@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_54638();

  *a2 = v3;
  return result;
}

uint64_t sub_3ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_54668();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3EFC(uint64_t a1)
{
  v2 = sub_4164(&qword_77060, type metadata accessor for SRSensor, &unk_55FA8);
  v3 = sub_4164(&qword_77068, type metadata accessor for SRSensor, &unk_55F48);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3FB8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_54BD8();
      }
    }

    else if (!a6)
    {
      return sub_54328();
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_54BD8();
    }

    return 0;
  }

  if (a3 != 3)
  {
    return a6 == 4 && !(a5 | a4);
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_54BD8();
}

uint64_t sub_4088(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_41D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_4304(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_4320(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_437C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_43D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_43E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_4430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_4478(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_44BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_4504()
{
  result = qword_770A0;
  if (!qword_770A0)
  {
    sub_4590(&qword_77090, &qword_562C0);
    sub_45D8();
    sub_4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770A0);
  }

  return result;
}

uint64_t sub_4590(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_45D8()
{
  result = qword_770A8;
  if (!qword_770A8)
  {
    sub_4590(&qword_77088, &qword_562B8);
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770A8);
  }

  return result;
}

unint64_t sub_4688()
{
  result = qword_770B8;
  if (!qword_770B8)
  {
    sub_4590(&qword_770C0, &qword_562D0);
    sub_4714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770B8);
  }

  return result;
}

unint64_t sub_4714()
{
  result = qword_770C8;
  if (!qword_770C8)
  {
    sub_4590(&qword_770D0, &qword_562D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770C8);
  }

  return result;
}

uint64_t sub_4790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_44BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_47F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_44BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_489C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4590(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsListItemIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsListItemIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4A60()
{
  result = qword_770F0;
  if (!qword_770F0)
  {
    sub_4590(&qword_770F8, qword_56330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770F0);
  }

  return result;
}

uint64_t sub_4AC4(char a1)
{
  switch(a1)
  {
    case 8:
      v1 = [objc_opt_self() defaultWorkspace];
      if (!v1)
      {
        __break(1u);
        JUMPOUT(0x5A1CLL);
      }

      v2 = v1;
      v3 = sub_54638();
      [v2 applicationIsInstalled:v3];

      v4 = sub_54628();
      __chkstk_darwin(v4 - 8);
      break;
    default:
      v5 = sub_54628();
      __chkstk_darwin(v5 - 8);
      break;
  }

  sub_54618();
  if (qword_76FE0 != -1)
  {
    swift_once();
  }

  v6 = sub_53908();
  v7 = sub_7700(v6, qword_7BC00);
  __chkstk_darwin(v7);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_539F8();
  __chkstk_darwin(v10 - 8);
  sub_539E8();
  return sub_53928();
}

unint64_t sub_5AD0(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
    case 9:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 16:
      result = 0x6C7070612E6D6F63;
      break;
    case 7:
    case 22:
    case 24:
      result = 0xD000000000000025;
      break;
    case 8:
      v3 = [objc_opt_self() defaultWorkspace];
      if (!v3)
      {
        __break(1u);
        JUMPOUT(0x6050);
      }

      v4 = v3;
      v5 = sub_54638();
      v6 = [v4 applicationIsInstalled:v5];

      if (v6)
      {
        result = 0xD000000000000019;
      }

      else
      {
        result = 0xD000000000000024;
      }

      break;
    case 10:
    case 29:
      result = 0xD000000000000022;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 19:
    case 35:
      result = 0xD000000000000028;
      break;
    case 14:
    case 21:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 37:
      result = 0xD00000000000002DLL;
      break;
    case 18:
    case 39:
      result = 0xD000000000000027;
      break;
    case 20:
    case 36:
      result = 0xD000000000000029;
      break;
    case 23:
      result = 0xD000000000000035;
      break;
    case 25:
      result = 0xD00000000000001FLL;
      break;
    case 26:
      v7 = [objc_opt_self() currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (v8)
      {
        result = 0xD000000000000016;
      }

      else
      {
        result = 0xD000000000000012;
      }

      break;
    case 27:
    case 28:
    case 30:
      return result;
    case 31:
    case 42:
      result = 0xD000000000000037;
      break;
    case 32:
      result = 0xD000000000000023;
      break;
    case 33:
      result = 0xD00000000000002CLL;
      break;
    case 34:
      result = 0xD000000000000031;
      break;
    case 40:
      result = 0xD000000000000026;
      break;
    case 41:
      result = 0xD000000000000021;
      break;
    case 43:
      result = 0xD00000000000002FLL;
      break;
    case 44:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t sub_6104(char a1)
{
  result = 0x4E4F495441434F4CLL;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 6:
    case 8:
    case 9:
    case 11:
    case 12:
    case 19:
    case 20:
    case 21:
    case 25:
      result = sub_54668();
      break;
    case 4:
      result = 0x45434341454C4946;
      break;
    case 5:
      v3 = [objc_opt_self() defaultWorkspace];
      if (!v3)
      {
        __break(1u);
        JUMPOUT(0x6620);
      }

      v4 = v3;
      v5 = sub_54638();
      v6 = [v4 applicationIsInstalled:v5];

      if (v6)
      {
        result = 0x48544C414548;
      }

      else
      {
        result = 0x445F48544C414548;
      }

      break;
    case 7:
      result = 0x445F444552494150;
      break;
    case 10:
      result = 0x524F535345434341;
      break;
    case 13:
    case 34:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x4C544341544E4F43;
      break;
    case 15:
      result = 0x5355434F46;
      break;
    case 16:
      result = 0x574F4C4C4957;
      break;
    case 17:
    case 38:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x454E5F4C41434F4CLL;
      break;
    case 22:
      result = 0x5359454B53534150;
      break;
    case 23:
      result = 0x43414E414D4C41;
      break;
    case 24:
      result = 0x455F455255434553;
      break;
    case 26:
      result = 0x54454C4C4157;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x4D41435F4E49414DLL;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0x444E554F52525553;
      break;
    case 31:
      result = 0x53494C4B434F4C42;
      break;
    case 32:
      result = 0x435F595445464153;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x5349545245564441;
      break;
    case 36:
      result = 0x5F59434156495250;
      break;
    case 37:
      result = 0xD000000000000019;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0xD000000000000017;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD000000000000020;
      break;
    case 43:
      result = 0xD000000000000018;
      break;
    case 44:
      result = 0x4E574F444B434F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_66D4(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 6:
    case 8:
    case 9:
    case 11:
    case 12:
    case 14:
    case 16:
    case 19:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
      result = sub_54668();
      break;
    case 26:
      result = 0x54454C4C4157;
      break;
    default:
      return result;
  }

  return result;
}

id sub_68B0(unsigned __int8 a1)
{
  if (a1 > 0x24u)
  {
    if (a1 - 37 < 2)
    {
      return &dword_0 + 1;
    }
  }

  else if (a1 == 2 || a1 == 5 || a1 == 8)
  {
    v2 = objc_opt_self();
    v3 = sub_54638();
    v4 = [v2 applicationWithBundleIdentifier:v3];

    return v4;
  }

  return 0;
}

id sub_6A08(char a1)
{
  v2 = sub_53918();
  __chkstk_darwin(v2 - 8);
  sub_4AC4(a1);
  sub_54688();
  v12 = 0u;
  v13 = 0u;
  v3 = sub_54638();
  v4 = [objc_allocWithZone(PSSpecifier) initWithName:v3 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  swift_unknownObjectRelease();
  if (v4)
  {

    sub_66D4(a1);
    if (!v5)
    {
      sub_6104(a1);
    }

    v6 = sub_54638();

    [v4 setIdentifier:{v6, v12, v13}];

    if (a1 == 24)
    {
      v7 = sub_54638();
      v8 = sub_54638();
      [v4 setProperty:v7 forKey:v8];

      v9 = sub_54638();
      v10 = sub_54638();
      [v4 setProperty:v9 forKey:v10];
    }

    return v4;
  }

  else
  {
    result = sub_54B48();
    __break(1u);
  }

  return result;
}

Swift::Int sub_6D5C()
{
  v1 = *v0;
  sub_54C28();
  sub_54C38(v1);
  return sub_54C58();
}

Swift::Int sub_6DD0(uint64_t a1)
{
  v2 = *v1;
  sub_54C28();
  sub_54C38(v2);
  return sub_54C58();
}

unint64_t sub_6E28()
{
  result = qword_77100;
  if (!qword_77100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77100);
  }

  return result;
}

unint64_t sub_6E88(char a1)
{
  result = 0x676E696B63617274;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x7261646E656C6163;
    case 3:
      return 0x73746361746E6F63;
    case 4:
      return 0x646E4173656C6966;
    case 5:
      return 0x68746C616568;
    case 6:
    case 21:
      return 0xD000000000000012;
    case 7:
      return 0x6544646572696170;
    case 8:
      return 0x736F746F6870;
    case 9:
      return 0x7265646E696D6572;
    case 10:
      return 0x726F737365636361;
    case 11:
      return 0x746F6F7465756C62;
    case 12:
      return 0x6172656D6163;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 25:
    case 27:
      return 0xD000000000000011;
    case 15:
      return 0x7375636F66;
    case 16:
      return 0x74694B656D6F68;
    case 17:
      v3 = 5;
      goto LABEL_41;
    case 18:
      return 0x74654E6C61636F6CLL;
    case 19:
      return 0x6F68706F7263696DLL;
    case 20:
      return 0xD000000000000010;
    case 22:
      return 0x7379656B73736170;
    case 23:
      v3 = 10;
      goto LABEL_41;
    case 24:
      return 0x6C45657275636573;
    case 26:
      return 0x74656C6C6177;
    case 28:
      return 0x656D61436E69616DLL;
    case 29:
      v3 = 9;
LABEL_41:
      result = v3 | 0xD000000000000010;
      break;
    case 30:
      result = 0x646E756F72727573;
      break;
    case 31:
      result = 0x73696C6B636F6C62;
      break;
    case 32:
      result = 0x6843797465666173;
      break;
    case 33:
    case 37:
      result = 0xD000000000000017;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000014;
      break;
    case 39:
      result = 0x53646E4161746164;
      break;
    case 40:
      result = 0x65706F6C65766564;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD00000000000001ELL;
      break;
    case 43:
      result = 0xD000000000000016;
      break;
    case 44:
      result = 0x6E776F646B636F6CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void *sub_7400(char a1)
{
  v1 = 0;
  switch(a1)
  {
    case 1:
      v1 = kTCCServiceUserTracking;
      if (kTCCServiceUserTracking)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_4;
    case 2:
      goto LABEL_12;
    case 3:
      goto LABEL_20;
    case 6:
      goto LABEL_18;
    case 8:
      goto LABEL_8;
    case 9:
      goto LABEL_14;
    case 11:
      goto LABEL_22;
    case 12:
      goto LABEL_24;
    case 14:
      goto LABEL_32;
    case 15:
      goto LABEL_30;
    case 16:
      goto LABEL_6;
    case 19:
      goto LABEL_16;
    case 20:
      goto LABEL_10;
    case 21:
LABEL_4:
      v1 = kTCCServiceNearbyInteraction;
      if (kTCCServiceNearbyInteraction)
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_6:
      v1 = kTCCServiceWillow;
      if (!kTCCServiceWillow)
      {
        __break(1u);
LABEL_8:
        v1 = kTCCServicePhotos;
        if (!kTCCServicePhotos)
        {
          __break(1u);
LABEL_10:
          v1 = kTCCServiceMotion;
          if (!kTCCServiceMotion)
          {
            __break(1u);
LABEL_12:
            v1 = kTCCServiceCalendar;
            if (!kTCCServiceCalendar)
            {
              __break(1u);
LABEL_14:
              v1 = kTCCServiceReminders;
              if (!kTCCServiceReminders)
              {
                __break(1u);
LABEL_16:
                v1 = kTCCServiceMicrophone;
                if (!kTCCServiceMicrophone)
                {
                  __break(1u);
LABEL_18:
                  v1 = kTCCServiceMediaLibrary;
                  if (!kTCCServiceMediaLibrary)
                  {
                    __break(1u);
LABEL_20:
                    v1 = kTCCServiceAddressBook;
                    if (!kTCCServiceAddressBook)
                    {
                      __break(1u);
LABEL_22:
                      v1 = kTCCServiceBluetoothAlways;
                      if (!kTCCServiceBluetoothAlways)
                      {
                        __break(1u);
LABEL_24:
                        v1 = kTCCServiceCamera;
                        if (!kTCCServiceCamera)
                        {
                          __break(1u);
LABEL_26:
                          v1 = kTCCServiceWebBrowserPublicKeyCredential;
                          if (!kTCCServiceWebBrowserPublicKeyCredential)
                          {
                            __break(1u);
LABEL_28:
                            v1 = kTCCServiceSecureElementAccess;
                            if (!kTCCServiceSecureElementAccess)
                            {
                              __break(1u);
LABEL_30:
                              v1 = kTCCServiceFocusStatus;
                              if (!kTCCServiceFocusStatus)
                              {
                                __break(1u);
LABEL_32:
                                v1 = kTCCServiceContactlessAccess;
                                if (!kTCCServiceContactlessAccess)
                                {
                                  __break(1u);
LABEL_34:
                                  v1 = kTCCServiceFinancialData;
                                  if (!kTCCServiceFinancialData)
                                  {
                                    __break(1u);
LABEL_36:
                                    v1 = kTCCServiceSpeechRecognition;
                                    if (!kTCCServiceSpeechRecognition)
                                    {
                                      __break(1u);
                                      JUMPOUT(0x75C0);
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
                }
              }
            }
          }
        }
      }

LABEL_37:
      v2 = v1;
      return v1;
    case 22:
      goto LABEL_26;
    case 24:
      goto LABEL_28;
    case 25:
      goto LABEL_36;
    case 26:
      goto LABEL_34;
    default:
      return v1;
  }
}

__n128 sub_7630@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for StaticPrivacyAndSecuritySettingsListItemProvider();
  *(swift_initStackObject() + 16) = v3;
  sub_7F60(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_76AC()
{
  result = qword_77108;
  if (!qword_77108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77108);
  }

  return result;
}

uint64_t sub_7700(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_7738(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_777C(void *a1)
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

BOOL sub_77C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 10) = *(a1 + 74);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 10) = *(a2 + 74);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_78C8(v7, v9);
}

BOOL sub_7834(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v3;
  v13[0] = *(a1 + 72);
  *(v13 + 10) = *(a1 + 82);
  v4 = *(a1 + 24);
  v12[0] = *(a1 + 8);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *&v15[10] = *(a2 + 82);
  v14[3] = v8;
  *v15 = v9;
  v14[2] = v7;
  return v2 == v5 && sub_78C8(v12, v14);
}

BOOL sub_78C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1 + 44);
  v9 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return *(a2 + 56) >> 62 == 3 && *a2 == v2 && (sub_541B8() & 1) != 0;
    }

    if (*(a2 + 56) >> 62 != 2)
    {
      return 0;
    }

    if (*a2 != v2)
    {
      return 0;
    }

    v22 = *(a2 + 88);
    v18 = *(a2 + 72);
    v20 = *(a2 + 80);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v8 != 0xFF)
    {
      if (v22 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v18, v20, v22);
      v14 = sub_3FB8(v6, v7, v8, v18, v20, v22);
      sub_7CAC(v18, v20, v22);
      return (v14 & 1) != 0;
    }

    if (v22 == 0xFF)
    {
      return 1;
    }
  }

  else if (v9)
  {
    if (*(a2 + 56) >> 62 != 1)
    {
      return 0;
    }

    if (*a2 != v2)
    {
      return 0;
    }

    v23 = *(a2 + 88);
    v19 = *(a2 + 72);
    v21 = *(a2 + 80);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v8 == 0xFF)
    {
      if (v23 != 0xFF)
      {
        return 0;
      }
    }

    else
    {
      if (v23 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v19, v21, v23);
      v15 = sub_3FB8(v6, v7, v8, v19, v21, v23);
      sub_7CAC(v19, v21, v23);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v17 = v23 >> 8;
    if (v8 >> 8 != 2)
    {
      return v17 != 2 && ((v17 ^ (v8 >> 8)) & 1) == 0;
    }

    if (v17 == 2)
    {
      return 1;
    }
  }

  else
  {
    v10 = *(a2 + 56);
    if (v10 >> 62)
    {
      return 0;
    }

    if (*a2 != v2)
    {
      return 0;
    }

    v12 = *(a2 + 40);
    v11 = *(a2 + 48);
    if ((sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v5 != 0xFF)
    {
      if (v10 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v12, v11, v10);
      v13 = sub_3FB8(v3, v4, v5, v12, v11, v10);
      sub_7CAC(v12, v11, v10);
      return (v13 & 1) != 0;
    }

    if (v10 == 0xFF)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_7C6C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return v3;
}

uint64_t sub_7CAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7CC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_7CC0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return v3;
}

uint64_t sub_7D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_7D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_7D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 6;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7DA0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 90) = 1;
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
      *a1 = -a2 << 6;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7E28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) & 1;
  v3 = *(result + 56) | (a2 << 62);
  *result &= 0x3FuLL;
  *(result + 24) = v2;
  *(result + 56) = v3;
  return result;
}

__n128 sub_7E60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_7E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 6;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7EDC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 98) = 1;
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
      *(a1 + 8) = -a2 << 6;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7F60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_5AD0(v3);
  if (v6 >= 4u)
  {
    v14 = sub_53918();
    __chkstk_darwin(v14 - 8);
    sub_4AC4(v3);
    result = sub_541F8();
    v12 = v15 & 1;
    v13 = 0xC000000000000000;
  }

  else
  {
    sub_7CC0(v4, v5, v6);
    v7 = sub_53918();
    __chkstk_darwin(v7 - 8);
    sub_4AC4(v3);
    result = sub_541F8();
    v12 = v11 & 1;
    v13 = 255;
  }

  *a1 = v3;
  *(a1 + 8) = v3 & 0x3F;
  *(a1 + 16) = result;
  *(a1 + 24) = v9;
  *(a1 + 32) = v12;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v13;
  return result;
}

__n128 sub_80D0@<Q0>(uint64_t a1@<X8>)
{
  sub_7F60(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsListSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsListSectionIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_8284()
{
  result = qword_771B8;
  if (!qword_771B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_771B8);
  }

  return result;
}

uint64_t sub_82D8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_8334(v8, v9) & 1;
}

uint64_t sub_8334(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[4];
  if (a1[4])
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a2[1];
    v4 = a2[2];
    v5 = a2[3];
    v6 = a1;
    v7 = a2;
    sub_4088(v3, v4, a2[3] & 1);

    v8 = sub_541B8();
    sub_84F8(v3, v4, v5 & 1);

    a1 = v6;
    a2 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v9 = a2[8];
  if (!a1[8])
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a1;
  v14 = a2;
  sub_4088(v10, v11, a2[7] & 1);

  v15 = sub_541B8();
  sub_84F8(v10, v11, v12 & 1);

  a1 = v13;
  a2 = v14;
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v16 = a1[9];
  v17 = a2[9];

  return sub_4B8E0(v16, v17);
}

uint64_t sub_84F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8508(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8520(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_853C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_85EC()
{
  result = qword_771C0;
  if (!qword_771C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_771C0);
  }

  return result;
}

void sub_8640(void *a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = v4 - 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_89B8(v5, v43);
      v8 = v44;
      v9 = v45;
      sub_7738(v43, v44);
      (*(v9 + 24))(v46, v8, v9);
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v36 = v46[0];
      v37 = v46[1];
      v38 = v47;
      v39 = v48;
      sub_777C(v43);
      if (*(&v46[0] + 1) >> 6 != 0xFFFFFFFFLL || v47 > 1 || v49 >= 0x100)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_238C8(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_238C8((v10 > 1), v11 + 1, 1, v7);
        }

        v33 = v40;
        v34 = v41;
        v35 = v42;
        v31 = v38;
        v32 = v39;
        v12 = v36;
        v29 = v36;
        v30 = v37;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[104 * v11];
        v14 = v31;
        *(v13 + 3) = v30;
        *(v13 + 4) = v14;
        v15 = v32;
        v16 = v33;
        v17 = v34;
        *(v13 + 64) = v35;
        *(v13 + 6) = v16;
        *(v13 + 7) = v17;
        *(v13 + 5) = v15;
        *(v13 + 2) = v12;
      }

      if (!v6)
      {
        break;
      }

      --v6;
      v5 += 40;
    }

    if (*(v7 + 2))
    {
      if (*(v28 + 17) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_A63C(v7);
        }

        v18 = *(v7 + 2);
        *&v29 = v7 + 32;
        *(&v29 + 1) = v18;
        sub_8A60(&v29);
      }

      v27 = *(v28 + 16);
      v19 = *(v28 + 24);
      v20 = *(v28 + 32);
      v21 = *(v28 + 40);
      v22 = *(v28 + 48);
      v23 = *(v28 + 56);
      v24 = *(v28 + 64);
      v26 = *(v28 + 72);
      v25 = *(v28 + 80);
      sub_8A1C(v19, v20, v21, v22);
      sub_8A1C(v23, v24, v26, v25);
      v4 = v27;
    }

    else
    {

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v25 = 0;
      v7 = 0;
      v4 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v19;
  a1[2] = v20;
  a1[3] = v21;
  a1[4] = v22;
  a1[5] = v23;
  a1[6] = v24;
  a1[7] = v26;
  a1[8] = v25;
  a1[9] = v7;
}

uint64_t sub_88F8()
{
  sub_A754(v0[3], v0[4], v0[5], v0[6]);
  sub_A754(v0[7], v0[8], v0[9], v0[10]);

  return swift_deallocClassInstance();
}

__n128 sub_896C@<Q0>(uint64_t a1@<X8>)
{
  sub_8640(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_89B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8A1C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_4088(result, a2, a3 & 1);
  }

  return result;
}

Swift::Int sub_8A60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_54BA8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_54768();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_8F9C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_8B58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = sub_53FD8();
  v8 = *(v63 - 8);
  result = __chkstk_darwin(v63);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  if (a3 != a2)
  {
    v11 = *a4;
    v12 = sub_53918();
    v13 = *(v12 - 8);
    result = v12 - 8;
    v61 = *(v13 + 64);
    v59 = v11;
    v60 = (v8 + 8);
    v14 = (v11 + 104 * a3);
    v15 = a1 - a3 + 1;
LABEL_5:
    v57 = v14;
    v58 = a3;
    v56 = v15;
    v69 = v15;
    while (1)
    {
      v16 = *v14;
      v17 = v14[2];
      v82[1] = v14[1];
      v82[2] = v17;
      v82[0] = v16;
      v18 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      v83 = *(v14 + 48);
      v82[4] = v19;
      v82[5] = v20;
      v82[3] = v18;
      v21 = *(v14 - 40);
      v22 = *(v14 - 24);
      v23 = *(v14 - 56);
      v85 = *(v14 - 4);
      v84[4] = v21;
      v84[5] = v22;
      v84[3] = v23;
      v24 = *(v14 - 104);
      v25 = *(v14 - 72);
      v84[1] = *(v14 - 88);
      v84[2] = v25;
      v84[0] = v24;
      v26 = v82[0];
      LODWORD(v71) = v24;
      __chkstk_darwin(result);
      sub_A650(v82, &v75);
      sub_A650(v84, &v75);
      sub_4AC4(v26);
      v72 = sub_541F8();
      v66 = v27;
      v67 = v28;
      v68 = v29;
      __chkstk_darwin(v72);
      sub_4AC4(v71);
      v64 = sub_541F8();
      v70 = v30;
      v86 = v31;
      v71 = v32;
      v33 = v62;
      sub_53FC8();
      v34 = sub_541A8();
      v36 = v35;
      v65 = v35;
      v37 = *v60;
      v38 = v63;
      (*v60)(v33, v63);
      *&v75 = v34;
      *(&v75 + 1) = v36;
      sub_53FC8();
      v39 = v64;
      v40 = sub_541A8();
      v42 = v41;
      v37(v33, v38);
      v73 = v40;
      v74 = v42;
      sub_A700();
      v43 = sub_549C8();

      sub_84F8(v39, v70, v86 & 1);

      sub_84F8(v72, v66, v67 & 1);

      sub_A6AC(v84);
      result = sub_A6AC(v82);
      v44 = v69;
      if (v43 != -1)
      {
LABEL_4:
        a3 = v58 + 1;
        v14 = (v57 + 104);
        v15 = v56 - 1;
        if (v58 + 1 == v55)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v45 = v14 - 104;
      v78 = v14[3];
      v79 = v14[4];
      v80 = v14[5];
      v81 = *(v14 + 48);
      v75 = *v14;
      v76 = v14[1];
      v77 = v14[2];
      v46 = *(v14 - 88);
      *v14 = *(v14 - 104);
      v14[1] = v46;
      *(v14 + 12) = *(v14 - 1);
      v47 = *(v14 - 24);
      v14[4] = *(v14 - 40);
      v14[5] = v47;
      v48 = *(v14 - 56);
      v14[2] = *(v14 - 72);
      v14[3] = v48;
      v49 = v75;
      v50 = v77;
      *(v45 + 16) = v76;
      *(v45 + 32) = v50;
      *v45 = v49;
      v51 = v78;
      v52 = v79;
      v53 = v80;
      *(v45 + 96) = v81;
      *(v45 + 64) = v52;
      *(v45 + 80) = v53;
      *(v45 + 48) = v51;
      if (!v44)
      {
        goto LABEL_4;
      }

      v69 = v44 + 1;
      v14 = (v14 - 104);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_8F9C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v184 = a1;
  v196 = sub_53FD8();
  result = __chkstk_darwin(v196);
  v195 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_93:
    v4 = *v184;
    if (!*v184)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_105F8(v12);
      v12 = result;
    }

    v232 = v12;
    v175 = v12;
    v176 = *(v12 + 16);
    if (v176 >= 2)
    {
      v12 = 104;
      while (*v189)
      {
        v177 = *&v175[16 * v176];
        v178 = *&v175[16 * v176 + 24];
        v179 = v191;
        sub_9DBC((*v189 + 104 * v177), (*v189 + 104 * *&v175[16 * v176 + 16]), (*v189 + 104 * v178), v4);
        v191 = v179;
        if (v179)
        {
        }

        if (v178 < v177)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_105F8(v175);
        }

        if (v176 - 2 >= *(v175 + 2))
        {
          goto LABEL_120;
        }

        v180 = &v175[16 * v176];
        *v180 = v177;
        *(v180 + 1) = v178;
        v232 = v175;
        result = sub_1056C(v176 - 1);
        v175 = v232;
        v176 = *(v232 + 16);
        if (v176 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v182 = a4;
  v11 = 0;
  v194 = (v8 + 8);
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11;
    v14 = v11 + 1;
    v186 = v11;
    if (v11 + 1 < v10)
    {
      v183 = v12;
      v203 = *v189;
      v204 = v11 + 1;
      v15 = v203 + 104 * v14;
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 32);
      v193 = v10;
      v219 = v17;
      v220 = v18;
      v218 = v16;
      v19 = *(v15 + 48);
      v20 = *(v15 + 64);
      v21 = *(v15 + 80);
      v224 = *(v15 + 96);
      v222 = v20;
      v223 = v21;
      v221 = v19;
      v22 = v203 + 104 * v11;
      v24 = *(v22 + 64);
      v23 = *(v22 + 80);
      v25 = *(v22 + 48);
      v231 = *(v22 + 96);
      v229 = v24;
      v230 = v23;
      v228 = v25;
      v26 = *v22;
      v27 = *(v22 + 32);
      v226 = *(v22 + 16);
      v227 = v27;
      v225 = v26;
      v28 = v218;
      v29 = v26;
      v30 = sub_53918();
      v31 = *(*(v30 - 8) + 64);
      __chkstk_darwin(v30 - 8);
      sub_A650(&v218, &v211);
      sub_A650(&v225, &v211);
      sub_4AC4(v28);
      v4 = sub_541F8();
      v233 = v32;
      v34 = v33;
      LODWORD(v205) = v33;
      v36 = v35;
      v192 = v31;
      __chkstk_darwin(v4);
      sub_4AC4(v29);
      v37 = sub_541F8();
      v39 = v38;
      v41 = v40;
      v13 = v186;
      v42 = v34 & 1;
      v43 = v233;
      LODWORD(v197) = sub_51F00(v4, v233, v42, v36, v37, v38, v41 & 1, v44);
      sub_84F8(v37, v39, v41 & 1);

      sub_84F8(v4, v43, v205 & 1);

      sub_A6AC(&v225);
      result = sub_A6AC(&v218);
      v45 = v13 + 2;
      if (v13 + 2 >= v193)
      {
        v14 = v13 + 2;
        v75 = v204;
      }

      else
      {
        v46 = v203 + 104 * v13 + 208;
        while (1)
        {
          v233 = &v181;
          v190 = v45;
          v47 = *v46;
          v48 = *(v46 + 32);
          v209[1] = *(v46 + 16);
          v209[2] = v48;
          v209[0] = v47;
          v49 = *(v46 + 48);
          v50 = *(v46 + 64);
          v51 = *(v46 + 80);
          v210 = *(v46 + 96);
          v209[4] = v50;
          v209[5] = v51;
          v209[3] = v49;
          v52 = *(v46 - 40);
          v53 = *(v46 - 24);
          v54 = *(v46 - 56);
          v217 = *(v46 - 8);
          v215 = v52;
          v216 = v53;
          v214 = v54;
          v55 = *(v46 - 104);
          v56 = *(v46 - 72);
          v212 = *(v46 - 88);
          v213 = v56;
          v211 = v55;
          v57 = v209[0];
          LODWORD(v205) = v55;
          __chkstk_darwin(result);
          sub_A650(v209, v208);
          sub_A650(&v211, v208);
          sub_4AC4(v57);
          v58 = sub_541F8();
          v201 = v59;
          v202 = v58;
          LODWORD(v203) = v60;
          v204 = v61;
          v199 = &v181;
          __chkstk_darwin(v58);
          sub_4AC4(v205);
          v198 = sub_541F8();
          v233 = v62;
          LODWORD(v200) = v63;
          v205 = v64;
          v65 = v195;
          sub_53FC8();
          v66 = sub_541A8();
          v68 = v67;
          v199 = v67;
          v69 = *v194;
          v4 = v196;
          (*v194)(v65, v196);
          v208[0] = v66;
          v208[1] = v68;
          sub_53FC8();
          v70 = v198;
          v71 = sub_541A8();
          v73 = v72;
          v69(v65, v4);
          v206 = v71;
          v207 = v73;
          sub_A700();
          v74 = sub_549C8();

          sub_84F8(v70, v233, v200 & 1);

          sub_84F8(v202, v201, v203 & 1);

          sub_A6AC(&v211);
          result = sub_A6AC(v209);
          if ((v197 & 1) == (v74 != -1))
          {
            break;
          }

          v75 = v190;
          v45 = v190 + 1;
          v46 += 104;
          v14 = v193;
          if (v193 == v190 + 1)
          {
            goto LABEL_12;
          }
        }

        v14 = v190;
        v75 = v190 - 1;
LABEL_12:
        v13 = v186;
      }

      v12 = v183;
      if (v197)
      {
        if (v14 < v13)
        {
          goto LABEL_123;
        }

        if (v13 <= v75)
        {
          v76 = v14;
          v77 = 104 * v14 - 104;
          v4 = 104 * v13;
          v78 = v13;
          do
          {
            if (v78 != --v76)
            {
              v80 = *v189;
              if (!*v189)
              {
                goto LABEL_129;
              }

              v79 = v80 + v77;
              v214 = *(v80 + v4 + 48);
              v215 = *(v80 + v4 + 64);
              v216 = *(v80 + v4 + 80);
              v217 = *(v80 + v4 + 96);
              v211 = *(v80 + v4);
              v212 = *(v80 + v4 + 16);
              v213 = *(v80 + v4 + 32);
              result = memmove((v80 + v4), (v80 + v77), 0x68uLL);
              *(v79 + 48) = v214;
              *(v79 + 64) = v215;
              *(v79 + 80) = v216;
              *(v79 + 96) = v217;
              *v79 = v211;
              *(v79 + 16) = v212;
              *(v79 + 32) = v213;
              v13 = v186;
            }

            ++v78;
            v77 -= 104;
            v4 += 104;
          }

          while (v78 < v76);
          v12 = v183;
        }
      }
    }

    v81 = v189[1];
    if (v14 >= v81)
    {
      v11 = v14;
LABEL_39:
      if (v11 < v13)
      {
        goto LABEL_121;
      }

      goto LABEL_40;
    }

    if (__OFSUB__(v14, v13))
    {
      goto LABEL_122;
    }

    v11 = v14;
    if (v14 - v13 >= v182)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v13, v182))
    {
      goto LABEL_124;
    }

    if (v13 + v182 < v81)
    {
      v81 = v13 + v182;
    }

    if (v81 < v13)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v14 != v81)
    {
      break;
    }

LABEL_90:
    if (v11 < v186)
    {
      goto LABEL_121;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1060C(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v128 = *(v12 + 16);
    v127 = *(v12 + 24);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      result = sub_1060C((v127 > 1), v128 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v129;
    v130 = v12 + 16 * v128;
    *(v130 + 32) = v186;
    *(v130 + 40) = v11;
    v4 = *v184;
    if (!*v184)
    {
      goto LABEL_131;
    }

    if (v128)
    {
      while (1)
      {
        v131 = v129 - 1;
        if (v129 >= 4)
        {
          break;
        }

        if (v129 == 3)
        {
          v132 = *(v12 + 32);
          v133 = *(v12 + 40);
          v142 = __OFSUB__(v133, v132);
          v134 = v133 - v132;
          v135 = v142;
LABEL_59:
          if (v135)
          {
            goto LABEL_110;
          }

          v148 = (v12 + 16 * v129);
          v150 = *v148;
          v149 = v148[1];
          v151 = __OFSUB__(v149, v150);
          v152 = v149 - v150;
          v153 = v151;
          if (v151)
          {
            goto LABEL_113;
          }

          v154 = (v12 + 32 + 16 * v131);
          v156 = *v154;
          v155 = v154[1];
          v142 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v142)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v152, v157))
          {
            goto LABEL_117;
          }

          if (v152 + v157 >= v134)
          {
            if (v134 < v157)
            {
              v131 = v129 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v158 = (v12 + 16 * v129);
        v160 = *v158;
        v159 = v158[1];
        v142 = __OFSUB__(v159, v160);
        v152 = v159 - v160;
        v153 = v142;
LABEL_73:
        if (v153)
        {
          goto LABEL_112;
        }

        v161 = v12 + 16 * v131;
        v163 = *(v161 + 32);
        v162 = *(v161 + 40);
        v142 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v142)
        {
          goto LABEL_115;
        }

        if (v164 < v152)
        {
          goto LABEL_3;
        }

LABEL_80:
        v169 = v131 - 1;
        if (v131 - 1 >= v129)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_125;
        }

        if (!*v189)
        {
          goto LABEL_128;
        }

        v170 = v12;
        v171 = *(v12 + 32 + 16 * v169);
        v172 = *(v12 + 32 + 16 * v131);
        v12 = *(v12 + 32 + 16 * v131 + 8);
        v173 = v191;
        sub_9DBC((*v189 + 104 * v171), (*v189 + 104 * v172), (*v189 + 104 * v12), v4);
        v191 = v173;
        if (v173)
        {
        }

        if (v12 < v171)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = sub_105F8(v170);
        }

        if (v169 >= *(v170 + 2))
        {
          goto LABEL_107;
        }

        v174 = &v170[16 * v169];
        *(v174 + 4) = v171;
        *(v174 + 5) = v12;
        v232 = v170;
        result = sub_1056C(v131);
        v12 = v232;
        v129 = *(v232 + 16);
        if (v129 <= 1)
        {
          goto LABEL_3;
        }
      }

      v136 = v12 + 32 + 16 * v129;
      v137 = *(v136 - 64);
      v138 = *(v136 - 56);
      v142 = __OFSUB__(v138, v137);
      v139 = v138 - v137;
      if (v142)
      {
        goto LABEL_108;
      }

      v141 = *(v136 - 48);
      v140 = *(v136 - 40);
      v142 = __OFSUB__(v140, v141);
      v134 = v140 - v141;
      v135 = v142;
      if (v142)
      {
        goto LABEL_109;
      }

      v143 = (v12 + 16 * v129);
      v145 = *v143;
      v144 = v143[1];
      v142 = __OFSUB__(v144, v145);
      v146 = v144 - v145;
      if (v142)
      {
        goto LABEL_111;
      }

      v142 = __OFADD__(v134, v146);
      v147 = v134 + v146;
      if (v142)
      {
        goto LABEL_114;
      }

      if (v147 >= v139)
      {
        v165 = (v12 + 32 + 16 * v131);
        v167 = *v165;
        v166 = v165[1];
        v142 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v142)
        {
          goto LABEL_118;
        }

        if (v134 < v168)
        {
          v131 = v129 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v10 = v189[1];
    if (v11 >= v10)
    {
      goto LABEL_93;
    }
  }

  v82 = v14;
  v185 = v81;
  v183 = v12;
  v83 = *v189;
  v84 = sub_53918();
  v85 = *(v84 - 8);
  result = v84 - 8;
  v86 = *(v85 + 64);
  v192 = v83;
  v193 = v86;
  v87 = v83 + 104 * v14;
  v88 = v186 - v14 + 1;
LABEL_33:
  v190 = v82;
  v187 = v88;
  v188 = v87;
  v203 = v88;
  while (1)
  {
    v89 = *v87;
    v90 = *(v87 + 32);
    v219 = *(v87 + 16);
    v220 = v90;
    v218 = v89;
    v91 = *(v87 + 48);
    v92 = *(v87 + 64);
    v93 = *(v87 + 80);
    v224 = *(v87 + 96);
    v222 = v92;
    v223 = v93;
    v221 = v91;
    v94 = *(v87 - 40);
    v95 = *(v87 - 24);
    v96 = *(v87 - 56);
    v231 = *(v87 - 8);
    v229 = v94;
    v230 = v95;
    v228 = v96;
    v97 = *(v87 - 104);
    v98 = *(v87 - 72);
    v226 = *(v87 - 88);
    v227 = v98;
    v225 = v97;
    v99 = v218;
    LODWORD(v205) = v97;
    __chkstk_darwin(result);
    sub_A650(&v218, &v211);
    sub_A650(&v225, &v211);
    sub_4AC4(v99);
    v200 = sub_541F8();
    v233 = v100;
    LODWORD(v201) = v101;
    v202 = v102;
    __chkstk_darwin(v200);
    sub_4AC4(v205);
    v197 = sub_541F8();
    v204 = v104;
    v205 = v103;
    LODWORD(v199) = v105;
    v106 = v195;
    sub_53FC8();
    v107 = sub_541A8();
    v109 = v108;
    v198 = v108;
    v4 = v194;
    v110 = *v194;
    v111 = v196;
    (*v194)(v106, v196);
    *&v211 = v107;
    *(&v211 + 1) = v109;
    sub_53FC8();
    v112 = v197;
    v113 = sub_541A8();
    v115 = v114;
    v110(v106, v111);
    *&v209[0] = v113;
    *(&v209[0] + 1) = v115;
    sub_A700();
    v116 = sub_549C8();

    sub_84F8(v112, v205, v199 & 1);

    sub_84F8(v200, v233, v201 & 1);

    sub_A6AC(&v225);
    result = sub_A6AC(&v218);
    v117 = v203;
    if (v116 != -1)
    {
LABEL_32:
      v82 = v190 + 1;
      v87 = v188 + 104;
      v88 = v187 - 1;
      if (v190 + 1 != v185)
      {
        goto LABEL_33;
      }

      v11 = v185;
      v12 = v183;
      goto LABEL_90;
    }

    if (!v192)
    {
      break;
    }

    v118 = v87 - 104;
    v214 = *(v87 + 48);
    v215 = *(v87 + 64);
    v216 = *(v87 + 80);
    v217 = *(v87 + 96);
    v211 = *v87;
    v212 = *(v87 + 16);
    v213 = *(v87 + 32);
    v119 = *(v87 - 88);
    *v87 = *(v87 - 104);
    *(v87 + 16) = v119;
    *(v87 + 96) = *(v87 - 8);
    v120 = *(v87 - 24);
    *(v87 + 64) = *(v87 - 40);
    *(v87 + 80) = v120;
    v121 = *(v87 - 56);
    *(v87 + 32) = *(v87 - 72);
    *(v87 + 48) = v121;
    v122 = v211;
    v123 = v213;
    *(v118 + 16) = v212;
    *(v118 + 32) = v123;
    *v118 = v122;
    v124 = v214;
    v125 = v215;
    v126 = v216;
    *(v118 + 96) = v217;
    *(v118 + 64) = v125;
    *(v118 + 80) = v126;
    *(v118 + 48) = v124;
    if (!v117)
    {
      goto LABEL_32;
    }

    v203 = v117 + 1;
    v87 -= 104;
  }

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
  return result;
}

uint64_t sub_9DBC(char *a1, char *a2, char *a3, char *a4)
{
  v100 = sub_53FD8();
  v8 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 - a1;
  v11 = (a2 - a1) / 104;
  v12 = (a3 - a2) / 104;
  v101 = a1;
  if (v11 >= v12)
  {
    v50 = 104 * v12;
    if (a4 != a2 || &a2[v50] <= a4)
    {
      memmove(a4, a2, 104 * v12);
    }

    v14 = &a4[v50];
    if (a3 - a2 < 104 || a2 <= v101)
    {
      v85 = a2;
    }

    else
    {
      v51 = sub_53918();
      v53 = *(v51 - 8);
      v52 = v51 - 8;
      v90 = *(v53 + 64);
      v89 = (v8 + 8);
      v125 = a4;
LABEL_22:
      v98 = a2;
      v54 = a2 - 104;
      v55 = a3 - 104;
      v56 = v14;
      v91 = a2 - 104;
      do
      {
        v104 = &v88;
        v14 = v56;
        v57 = *(v56 - 104);
        v106 = v55;
        v97 = v55 + 104;
        v58 = *(v56 - 72);
        v112 = *(v56 - 88);
        v113 = v58;
        v111 = v57;
        v59 = *(v56 - 56);
        v60 = *(v56 - 40);
        v61 = *(v56 - 24);
        v117 = *(v56 - 8);
        v115 = v60;
        v116 = v61;
        v114 = v59;
        v62 = *(v54 + 5);
        v122 = *(v54 + 4);
        v123 = v62;
        v124 = *(v54 + 48);
        v63 = *(v54 + 1);
        v118 = *v54;
        v119 = v63;
        v64 = *(v54 + 3);
        v120 = *(v54 + 2);
        v121 = v64;
        v65 = v111;
        LODWORD(v103) = v118;
        __chkstk_darwin(v52);
        sub_A650(&v111, &v109);
        sub_A650(&v118, &v109);
        sub_4AC4(v65);
        v94 = sub_541F8();
        v105 = v66;
        LODWORD(v95) = v67;
        v96 = v68;
        __chkstk_darwin(v94);
        sub_4AC4(v103);
        v92 = sub_541F8();
        v103 = v69;
        v104 = v70;
        LODWORD(v102) = v71;
        v72 = v99;
        sub_53FC8();
        v73 = sub_541A8();
        v75 = v74;
        v93 = v74;
        v76 = *v89;
        v77 = v100;
        (*v89)(v72, v100);
        v109 = v73;
        v110 = v75;
        sub_53FC8();
        v78 = v92;
        v79 = sub_541A8();
        v81 = v80;
        v76(v72, v77);
        v107 = v79;
        v108 = v81;
        sub_A700();
        v82 = sub_549C8();

        sub_84F8(v78, v103, v102 & 1);

        sub_84F8(v94, v105, v95 & 1);

        sub_A6AC(&v118);
        v52 = sub_A6AC(&v111);
        if (v82 == -1)
        {
          a3 = v106;
          if (v97 < v98 || v106 >= v98)
          {
            v84 = v91;
            v52 = memmove(v106, v91, 0x68uLL);
            a4 = v125;
          }

          else
          {
            a4 = v125;
            v84 = v91;
            if (v97 != v98)
            {
              v52 = memmove(v106, v91, 0x68uLL);
            }
          }

          if (v14 <= a4 || (a2 = v84, v84 <= v101))
          {
            v85 = v84;
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        v56 = (v14 - 104);
        v83 = v106;
        if (v97 < v14 || v106 >= v14)
        {
          v52 = memmove(v106, v14 - 104, 0x68uLL);
          a4 = v125;
          v54 = v91;
        }

        else
        {
          a4 = v125;
          v54 = v91;
          if (v97 != v14)
          {
            v52 = memmove(v106, v14 - 104, 0x68uLL);
          }
        }

        v55 = v83 - 104;
      }

      while (v56 > a4);
      v14 -= 104;
      v85 = v98;
    }
  }

  else
  {
    v13 = 104 * v11;
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, v13);
    }

    v14 = &a4[v13];
    if (v10 >= 104 && a2 < a3)
    {
      v15 = sub_53918();
      v17 = *(v15 - 8);
      v16 = v15 - 8;
      v91 = *(v17 + 64);
      v92 = &a4[v13];
      v90 = (v8 + 8);
      v106 = a3;
      while (1)
      {
        v125 = a4;
        v98 = a2;
        v18 = *a2;
        v19 = *(a2 + 2);
        v112 = *(a2 + 1);
        v113 = v19;
        v111 = v18;
        v20 = *(a2 + 3);
        v21 = *(a2 + 4);
        v22 = *(a2 + 5);
        v117 = *(a2 + 48);
        v115 = v21;
        v116 = v22;
        v114 = v20;
        v24 = *(a4 + 4);
        v23 = *(a4 + 5);
        v25 = *(a4 + 3);
        v124 = *(a4 + 48);
        v122 = v24;
        v123 = v23;
        v121 = v25;
        v26 = *a4;
        v27 = *(a4 + 2);
        v119 = *(a4 + 1);
        v120 = v27;
        v118 = v26;
        v28 = v111;
        v29 = v26;
        __chkstk_darwin(v16);
        sub_A650(&v111, &v109);
        sub_A650(&v118, &v109);
        sub_4AC4(v28);
        v102 = sub_541F8();
        v104 = v31;
        v105 = v30;
        LODWORD(v103) = v32;
        __chkstk_darwin(v102);
        sub_4AC4(v29);
        v96 = sub_541F8();
        v93 = v34;
        v94 = v33;
        LODWORD(v97) = v35;
        v36 = v99;
        sub_53FC8();
        v37 = sub_541A8();
        v39 = v38;
        v95 = v38;
        v40 = *v90;
        v41 = v100;
        (*v90)(v36, v100);
        v109 = v37;
        v110 = v39;
        sub_53FC8();
        v42 = v94;
        v43 = sub_541A8();
        v45 = v44;
        v40(v36, v41);
        v107 = v43;
        v108 = v45;
        sub_A700();
        v46 = sub_549C8();

        sub_84F8(v96, v42, v97 & 1);

        sub_84F8(v102, v105, v103 & 1);

        sub_A6AC(&v118);
        v16 = sub_A6AC(&v111);
        if (v46 != -1)
        {
          break;
        }

        v47 = v98;
        a2 = v98 + 104;
        v48 = v101;
        a4 = v125;
        v14 = v92;
        if (v101 != v98)
        {
          goto LABEL_10;
        }

LABEL_11:
        v49 = v48 + 104;
        if (a4 >= v14)
        {
          v85 = v49;
          goto LABEL_42;
        }

        v101 = v49;
        if (a2 >= v106)
        {
          v85 = v101;
          goto LABEL_42;
        }
      }

      v47 = v125;
      a4 = v125 + 104;
      v48 = v101;
      a2 = v98;
      v14 = v92;
      if (v101 == v125)
      {
        goto LABEL_11;
      }

LABEL_10:
      v16 = memmove(v48, v47, 0x68uLL);
      goto LABEL_11;
    }

    v85 = v101;
  }

LABEL_42:
  v86 = 104 * ((v14 - a4) / 104);
  if (v85 != a4 || v85 >= &a4[v86])
  {
    memmove(v85, a4, v86);
  }

  return 1;
}

unint64_t sub_A700()
{
  result = qword_772C0;
  if (!qword_772C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_772C0);
  }

  return result;
}

uint64_t sub_A754(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_84F8(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_A798(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_A7AC(uint64_t *a1, int a2)
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

uint64_t sub_A7F4(uint64_t result, int a2, int a3)
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

uint64_t sub_A844(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_4C0FC(*a1, *a2) & 1) == 0 || (sub_4CBA8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_4D714(v3, v5);
}

uint64_t sub_A8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772D0, &qword_57278);
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v19 = *(*(v5 + 48) + v18);
        v20 = *(v5 + 56) + 104 * v18;
        v47 = *(v20 + 48);
        v48 = *(v20 + 64);
        v49 = *(v20 + 80);
        v50 = *(v20 + 96);
        v44 = *v20;
        v45 = *(v20 + 16);
        v46 = *(v20 + 32);
      }

      else
      {
LABEL_16:
        v19 = *(*(v5 + 48) + v18);
        v23 = *(v5 + 56) + 104 * v18;
        v25 = *(v23 + 16);
        v24 = *(v23 + 32);
        v37 = *v23;
        v38 = v25;
        v39 = v24;
        v27 = *(v23 + 64);
        v26 = *(v23 + 80);
        v28 = *(v23 + 48);
        v43 = *(v23 + 96);
        v41 = v27;
        v42 = v26;
        v40 = v28;
        sub_A650(&v37, &v44);
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v44 = v37;
        v45 = v38;
        v46 = v39;
        v47 = v40;
      }

      sub_54C28();
      sub_54C38(v19);
      result = sub_54C58();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      v16 = *(v7 + 56) + 104 * v15;
      *(v16 + 48) = v47;
      *(v16 + 64) = v48;
      *(v16 + 80) = v49;
      *(v16 + 96) = v50;
      *v16 = v44;
      *(v16 + 16) = v45;
      *(v16 + 32) = v46;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_AC20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772C8, &qword_57270);
  v35 = v4;
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 80 * v20;
      if (v35)
      {
        v23 = *v22;
        v36 = *(v22 + 8);
        v37 = *(v22 + 24);
        v38 = *(v22 + 40);
        v39 = *(v22 + 56);
        v40 = *(v22 + 72);
      }

      else
      {
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        v26 = *(v22 + 64);
        *&v42[48] = *(v22 + 48);
        *&v42[64] = v26;
        *&v42[16] = v24;
        *&v42[32] = v25;
        *v42 = *v22;
        v40 = *(&v26 + 1);
        v38 = *&v42[40];
        v39 = *&v42[56];
        v36 = *&v42[8];
        v37 = *&v42[24];
        v23 = v42[0];
        sub_C990(v42, v41);
      }

      sub_54C28();
      sub_54C38(v21);
      result = sub_54C58();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 80 * v15;
      *v16 = v23;
      *(v16 + 24) = v37;
      *(v16 + 8) = v36;
      *(v16 + 56) = v39;
      *(v16 + 40) = v38;
      *(v16 + 72) = v40;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_AF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772D8, &unk_57280);
  v34 = v4;
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_54C28();
      sub_546C8();
      result = sub_54C58();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_B1F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772E0, &qword_5A820);
  v31 = v4;
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v20;
      }

      sub_54C28();
      type metadata accessor for CFString(0);
      sub_CA40();
      sub_53AA8();
      result = sub_54C58();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_B4A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772F8, &qword_57298);
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_CB50((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_CA98(v23, &v36);
        sub_CAF4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_54A38(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_CB50(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_B75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_44BC(&qword_772F0, &qword_57290);
  v38 = v4;
  result = sub_54B78();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_CA98(v27, &v39);
      }

      sub_54C28();
      sub_546C8();
      result = sub_54C58();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_BA2C()
{
  v1 = v0;
  sub_44BC(&qword_772D0, &qword_57278);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_A650(&v31, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 104 * v16;
      v20 = *(v18 + 64);
      v19 = *(v18 + 80);
      v21 = *(v18 + 48);
      v37 = *(v18 + 96);
      v35 = v20;
      v36 = v19;
      v34 = v21;
      v23 = *(v18 + 16);
      v22 = *(v18 + 32);
      v31 = *v18;
      v32 = v23;
      v33 = v22;
      *(*(v4 + 48) + v16) = v17;
      v24 = *(v4 + 56) + 104 * v16;
      v25 = v31;
      v26 = v33;
      *(v24 + 16) = v32;
      *(v24 + 32) = v26;
      *v24 = v25;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      *(v24 + 96) = v37;
      *(v24 + 64) = v28;
      *(v24 + 80) = v29;
      *(v24 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_BBFC()
{
  v1 = v0;
  sub_44BC(&qword_772C8, &qword_57270);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 80 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[4];
        v31 = v19[3];
        v32 = v22;
        v28 = *v19;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + v17) = v18;
        v23 = (*(v4 + 56) + 80 * v17);
        *v23 = v28;
        v24 = v29;
        v25 = v30;
        v26 = v32;
        v23[3] = v31;
        v23[4] = v26;
        v23[1] = v24;
        v23[2] = v25;
        result = sub_C990(&v28, &v27);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BDA0()
{
  v1 = v0;
  sub_44BC(&qword_772D8, &unk_57280);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BF10()
{
  v1 = v0;
  sub_44BC(&qword_772E0, &qword_5A820);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_C074()
{
  v1 = v0;
  sub_44BC(&qword_772F8, &qword_57298);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_CA98(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_CAF4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_CB50(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_C218()
{
  v1 = v0;
  sub_44BC(&qword_772F0, &qword_57290);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_CA98(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_C3CC(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 104;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_238C8(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 10;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_C50C(uint64_t a1)
{
  v1 = a1;
  v75 = *(a1 + 16);
  if (!v75)
  {
    return v1;
  }

  v2 = 0;
  v74 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  v4 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v5 = (v74 + 80 * v2);
    v6 = v5[1];
    v88 = *v5;
    v89 = v6;
    v7 = v5[3];
    v90 = v5[2];
    v91 = v7;
    v92 = v5[4];
    v8 = v88;
    sub_C990(&v88, &v81);
    sub_C990(&v88, &v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79[0] = v3;
    v10 = sub_1C54C();
    v12 = v3[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_37;
    }

    v16 = v11;
    if (v3[3] < v15)
    {
      sub_AC20(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1C54C();
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_40;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v25 = v10;
    sub_BBFC();
    v10 = v25;
    if (v16)
    {
LABEL_9:
      v77 = *&v79[0];
      v18 = (*(*&v79[0] + 56) + 80 * v10);
      v81 = *v18;
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[4];
      v84 = v18[3];
      v85 = v21;
      v82 = v19;
      v83 = v20;
      v22 = v92;
      v24 = v89;
      v23 = v90;
      v18[3] = v91;
      v18[4] = v22;
      v18[1] = v24;
      v18[2] = v23;
      *v18 = v88;
      sub_C9EC(&v81);
      goto LABEL_13;
    }

LABEL_11:
    v26 = *&v79[0];
    *(*&v79[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v26[6] + v10) = v8;
    v27 = (v26[7] + 80 * v10);
    v29 = v91;
    v28 = v92;
    v30 = v90;
    v27[1] = v89;
    v27[2] = v30;
    v27[3] = v29;
    v27[4] = v28;
    *v27 = v88;
    v31 = v26[2];
    v14 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v14)
    {
      goto LABEL_38;
    }

    v77 = v26;
    v26[2] = v32;
LABEL_13:
    v33 = *(&v92 + 1);
    v34 = *(*(&v92 + 1) + 16);
    if (v34)
    {
      break;
    }

    sub_C9EC(&v88);
LABEL_30:
    ++v2;
    v3 = v77;
    if (v2 == v75)
    {
      return v1;
    }

    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return v1;
    }
  }

  v76 = v2;

  v35 = 0;
  v36 = v34 - 1;
  v37 = 32;
  while (1)
  {
    v39 = *(v33 + v37 + 16);
    v38 = *(v33 + v37 + 32);
    v81 = *(v33 + v37);
    v82 = v39;
    v83 = v38;
    v40 = *(v33 + v37 + 48);
    v41 = *(v33 + v37 + 64);
    v42 = *(v33 + v37 + 80);
    v87 = *(v33 + v37 + 96);
    v85 = v41;
    v86 = v42;
    v84 = v40;
    v43 = v81;
    sub_A650(&v81, v79);
    sub_A650(&v81, v79);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    v45 = sub_1C54C();
    v47 = v4[2];
    v48 = (v46 & 1) == 0;
    v14 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v14)
    {
      break;
    }

    v50 = v46;
    if (v4[3] < v49)
    {
      sub_A8C4(v49, v44);
      v45 = sub_1C54C();
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_39;
      }

LABEL_20:
      if ((v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (v44)
    {
      goto LABEL_20;
    }

    v63 = v45;
    sub_BA2C();
    v45 = v63;
    if ((v50 & 1) == 0)
    {
LABEL_24:
      v4 = v78;
      v78[(v45 >> 6) + 8] |= 1 << v45;
      *(v78[6] + v45) = v43;
      v64 = v78[7] + 104 * v45;
      v65 = v87;
      v67 = v85;
      v66 = v86;
      *(v64 + 48) = v84;
      *(v64 + 64) = v67;
      *(v64 + 80) = v66;
      *(v64 + 96) = v65;
      v69 = v82;
      v68 = v83;
      *v64 = v81;
      *(v64 + 16) = v69;
      *(v64 + 32) = v68;
      sub_A6AC(&v81);
      v70 = v78[2];
      v14 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v14)
      {
        goto LABEL_36;
      }

      v78[2] = v71;
      if (v36 == v35)
      {
LABEL_28:

        sub_C9EC(&v88);
        v1 = a1;
        v2 = v76;
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_21:
    v4 = v78;
    v52 = v78[7] + 104 * v45;
    v54 = *(v52 + 16);
    v53 = *(v52 + 32);
    v79[0] = *v52;
    v79[1] = v54;
    v79[2] = v53;
    v56 = *(v52 + 64);
    v55 = *(v52 + 80);
    v57 = *(v52 + 48);
    v80 = *(v52 + 96);
    v79[4] = v56;
    v79[5] = v55;
    v79[3] = v57;
    v58 = v81;
    v59 = v83;
    *(v52 + 16) = v82;
    *(v52 + 32) = v59;
    *v52 = v58;
    v60 = v84;
    v61 = v85;
    v62 = v86;
    *(v52 + 96) = v87;
    *(v52 + 64) = v61;
    *(v52 + 80) = v62;
    *(v52 + 48) = v60;
    sub_A6AC(v79);
    sub_A6AC(&v81);
    if (v36 == v35)
    {
      goto LABEL_28;
    }

LABEL_26:
    ++v35;
    v37 += 104;
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_54C08();
  __break(1u);
LABEL_40:
  result = sub_54C08();
  __break(1u);
  return result;
}

unint64_t sub_CA40()
{
  result = qword_772E8;
  if (!qword_772E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_772E8);
  }

  return result;
}

uint64_t sub_CAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_CB50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_CB74(char a1)
{
  result = 0x4E4F495441434F4CLL;
  switch(a1)
  {
    case 1:
      result = 0x4152545F52455355;
      break;
    case 2:
      result = 0x5241444E454C4143;
      break;
    case 3:
      result = 0x53544341544E4F43;
      break;
    case 4:
      result = 0x45434341454C4946;
      break;
    case 5:
      result = 0x48544C414548;
      break;
    case 6:
      result = 0x445F48544C414548;
      break;
    case 7:
      result = 0x42494C414944454DLL;
      break;
    case 8:
      result = 0x445F444552494150;
      break;
    case 9:
      result = 0x534F544F4850;
      break;
    case 10:
      result = 0x5245444E494D4552;
      break;
    case 11:
      result = 0x524F535345434341;
      break;
    case 12:
      result = 0x50495245505F5442;
      break;
    case 13:
      result = 0x4152454D4143;
      break;
    case 14:
    case 31:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x4C544341544E4F43;
      break;
    case 16:
      result = 0x5355434F46;
      break;
    case 17:
      result = 0x574F4C4C4957;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x454E5F4C41434F4CLL;
      break;
    case 20:
      result = 0x4F48504F5243494DLL;
      break;
    case 21:
      result = 0x4E4F49544F4DLL;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x5359454B53534150;
      break;
    case 24:
      result = 0x43414E414D4C41;
      break;
    case 25:
      result = 0x455F455255434553;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 27:
      result = 0x54454C4C4157;
      break;
    case 28:
      result = 0x53494C4B434F4C42;
      break;
    case 29:
      result = 0x435F595445464153;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x5349545245564441;
      break;
    case 33:
      result = 0x5F59434156495250;
      break;
    case 34:
      result = 0xD000000000000019;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000017;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000020;
      break;
    case 39:
      result = 0xD000000000000018;
      break;
    case 40:
      result = 0x4E574F444B434F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_D0C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_54BE8();

  if (v2 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(uint64_t a1)
{
  result = qword_77370;
  if (!qword_77370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D1B4(uint64_t a1)
{
  sub_D274(319, &qword_77380, &type metadata accessor for PreferencesControllerRecipe);
  if (v1 <= 0x3F)
  {
    sub_D274(319, &qword_77388, &type metadata accessor for SettingsPaneRecipe);
    if (v2 <= 0x3F)
    {
      sub_D2C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_D274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_D2C0()
{
  result = qword_77390;
  if (!qword_77390)
  {
    result = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
    atomic_store(&type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn, &qword_77390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_D468()
{
  result = qword_773C0;
  if (!qword_773C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_773C0);
  }

  return result;
}

uint64_t sub_D4BC@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_E444(0, &qword_774A0, PUITrackersController_ptr);
      v3 = 1;
      goto LABEL_46;
    case 2:
      sub_E444(0, &qword_77490, PUICalendarPrivacyController_ptr);
      v3 = 2;
      goto LABEL_46;
    case 3:
      sub_E444(0, &qword_77488, PUIContactsPrivacyController_ptr);
      v3 = 3;
      goto LABEL_46;
    case 4:
      sub_E444(0, &qword_77480, PUIFileAccessController_ptr);
      v3 = 4;
      goto LABEL_46;
    case 5:
      sub_6A08(5);
      goto LABEL_44;
    case 6:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 6;
      goto LABEL_46;
    case 7:
      v6 = sub_54938();
      __chkstk_darwin(v6 - 8);
      sub_54928();
      goto LABEL_54;
    case 8:
      sub_E444(0, &qword_77478, PUIPhotosPrivacyController_ptr);
      v3 = 8;
      goto LABEL_46;
    case 9:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 9;
      goto LABEL_46;
    case 10:
      sub_E444(0, &qword_77498, PUIAccessoriesController_ptr);
      v3 = 10;
      goto LABEL_46;
    case 11:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 11;
      goto LABEL_46;
    case 12:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 12;
      goto LABEL_46;
    case 13:
      sub_6A08(13);
      v16 = sub_54908();
      __chkstk_darwin(v16 - 8);
      sub_548E8();
      goto LABEL_51;
    case 14:
      v4 = sub_54938();
      __chkstk_darwin(v4 - 8);
      sub_54928();
      sub_544E8();
      goto LABEL_55;
    case 15:
      sub_6A08(15);
      v5 = sub_54908();
      __chkstk_darwin(v5 - 8);
      sub_548E8();
      goto LABEL_51;
    case 16:
    case 41:
    case 42:
      v22 = sub_54938();
      __chkstk_darwin(v22 - 8);
      sub_54918();
LABEL_54:
      sub_544E8();
      goto LABEL_55;
    case 17:
      v7 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
      __chkstk_darwin(v7);
      v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!MOSettingsManager)
      {
        goto LABEL_58;
      }

      v10 = sub_54638();
      v11 = NSClassFromString(v10);

      if (!v11)
      {
        __break(1u);
        goto LABEL_57;
      }

      swift_getObjCClassMetadata();
      v23[1] = &OBJC_PROTOCOL___PSController;
      swift_dynamicCastTypeToObjCProtocolUnconditional();
      sub_E444(0, &qword_77470, UIViewController_ptr);
      if (!swift_dynamicCastMetatype())
      {
LABEL_57:
        __break(1u);
        while (1)
        {
LABEL_58:
          sub_54B48();
          __break(1u);
        }
      }

      sub_6A08(17);
      sub_53B38();
      swift_storeEnumTagMultiPayload();
      return sub_E3E0(v9, a2);
    case 18:
      sub_E444(0, &qword_77408, PUINetworkController_ptr);
      v3 = 18;
      goto LABEL_46;
    case 19:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 19;
      goto LABEL_46;
    case 20:
      sub_E444(0, &qword_77400, PUIMotionFitnessController_ptr);
      v3 = 20;
      goto LABEL_46;
    case 21:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 21;
      goto LABEL_46;
    case 22:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 22;
      goto LABEL_46;
    case 23:
      sub_6A08(23);
      v18 = sub_54908();
      __chkstk_darwin(v18 - 8);
      sub_548F8();
      goto LABEL_51;
    case 24:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 24;
      goto LABEL_46;
    case 25:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 25;
      goto LABEL_46;
    case 26:
      sub_6A08(26);
LABEL_44:
      v20 = sub_54908();
      __chkstk_darwin(v20 - 8);
      sub_548F8();
      goto LABEL_51;
    case 27:
    case 28:
    case 29:
    case 30:
      goto LABEL_58;
    case 31:
      sub_6A08(31);
      v19 = sub_54908();
      __chkstk_darwin(v19 - 8);
      sub_548E8();
      goto LABEL_51;
    case 32:
      sub_6A08(32);
      v13 = sub_54908();
      __chkstk_darwin(v13 - 8);
      sub_548E8();
      goto LABEL_51;
    case 33:
      sub_6A08(33);
      v14 = [objc_opt_self() classForNudityDetectionSettings];
      sub_54668();

      v15 = sub_54908();
      __chkstk_darwin(v15 - 8);
      sub_548E8();
      sub_53B48();
      goto LABEL_55;
    case 34:
      sub_E444(0, &qword_773F0, PUIProblemReportingController_ptr);
      v3 = 34;
      goto LABEL_46;
    case 35:
      sub_E444(0, &qword_773E8, PUIAdSupportController_ptr);
      v3 = 35;
      goto LABEL_46;
    case 36:
      sub_E444(0, &qword_773E0, PUIReportController_ptr);
      v3 = 36;
      goto LABEL_46;
    case 37:
      *a2 = 0;
      goto LABEL_5;
    case 38:
      *a2 = 1;
LABEL_5:
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
      goto LABEL_47;
    case 39:
      sub_E444(0, &qword_773D0, PUIDataAndSensorsController_ptr);
      v3 = 39;
      goto LABEL_46;
    case 40:
      sub_6A08(40);
      v21 = sub_54908();
      __chkstk_darwin(v21 - 8);
      sub_548E8();
LABEL_51:
      sub_53B48();
      goto LABEL_55;
    case 43:
      v17 = sub_54938();
      __chkstk_darwin(v17 - 8);
      sub_54918();
      sub_544F8();
LABEL_55:
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
      return swift_storeEnumTagMultiPayload();
    case 44:
      sub_E444(0, &qword_773D8, PUILockdownModeController_ptr);
      v3 = 44;
      goto LABEL_46;
    default:
      sub_E444(0, &qword_774A8, PUILocationServicesListController_ptr);
      v3 = 0;
LABEL_46:
      sub_6A08(v3);
      sub_53B38();
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
LABEL_47:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_E3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E444(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int sub_E48C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_110CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_FBA0(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_E4F8(void *a1, char *a2)
{
  result = [a1 eventType];
  if (result <= 0x2A && ((1 << result) & 0x60000000400) != 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_50FAC(_swiftEmptyArrayStorage);
    v6 = *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session];
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = v5;
    v10[4] = sub_11120;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_F160;
    v10[3] = &unk_6EC40;
    v8 = _Block_copy(v10);
    v9 = a2;

    [v6 getDevicesWithFlags:8 completionHandler:v8];
    _Block_release(v8);
  }

  return result;
}

id sub_E648()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_54458();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_54498();
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = result;
    sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);

    v15 = sub_54878();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a4;
    aBlock[4] = sub_111C0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_51A90;
    aBlock[3] = &unk_6ECB8;
    v18 = _Block_copy(aBlock);

    sub_54478();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_111CC();
    sub_44BC(&qword_775F0, &qword_574F8);
    sub_11224();
    sub_549E8();
    sub_54888();
    _Block_release(v18);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v20);
  }

  return result;
}

void sub_EA44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_54B58())
    {
      v6 = 0;
      v49 = a2;
      v50 = a2 & 0xC000000000000001;
      v46 = (a2 + 32);
      v47 = a2 & 0xFFFFFFFFFFFFFF8;
      p_type = (&stru_75FF0 + 16);
      v48 = i;
      while (1)
      {
        if (v50)
        {
          v8 = sub_54AB8();
        }

        else
        {
          if (v6 >= *(v47 + 16))
          {
            goto LABEL_51;
          }

          v8 = v46[v6];
        }

        v9 = v8;
        v10 = __OFADD__(v6++, 1);
        if (v10)
        {
          break;
        }

        v11 = [v8 appAccessInfoMap];
        if (v11)
        {
          v12 = v11;
          v53 = v9;
          v51 = v6;
          sub_E444(0, &qword_77600, DADeviceAppAccessInfo_ptr);
          v13 = sub_545C8();

          v14 = *(v13 + 16);
          if (v14)
          {
            a2 = sub_F910(*(v13 + 16), 0);
            v15 = sub_10F74(&v56, (a2 + 32), v14, v13);
            v16 = v56;
            swift_bridgeObjectRetain_n();
            sub_11288(v16);
            if (v15 != v14)
            {
              goto LABEL_50;
            }

            p_type = (&stru_75FF0 + 16);
          }

          else
          {

            a2 = _swiftEmptyArrayStorage;
          }

          v56 = a2;
          sub_E48C(&v56);

          v17 = v56;
          v54 = v56[2];
          if (v54)
          {
            v18 = 0;
            v19 = v56 + 5;
            v52 = v56;
            do
            {
              if (v18 >= v17[2])
              {
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              if (!*(v13 + 16))
              {
                goto LABEL_45;
              }

              v21 = *(v19 - 1);
              v20 = *v19;

              a2 = v13;
              v22 = sub_1BE04(v21, v20);
              if ((v23 & 1) == 0)
              {
                goto LABEL_46;
              }

              if ([*(*(v13 + 56) + 8 * v22) p_type[126]] == &dword_18 + 1)
              {
                swift_beginAccess();
                if (*(*(a3 + 16) + 16) && (sub_1BE04(v21, v20), (v24 & 1) != 0))
                {
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  swift_beginAccess();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v55[0] = *(a3 + 16);
                  a2 = v55[0];
                  *(a3 + 16) = 0x8000000000000000;
                  v27 = sub_1BE04(v21, v20);
                  v28 = *(a2 + 16);
                  v29 = (v26 & 1) == 0;
                  v30 = v28 + v29;
                  if (__OFADD__(v28, v29))
                  {
                    goto LABEL_47;
                  }

                  v31 = v26;
                  if (*(a2 + 24) >= v30)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_BDA0();
                    }
                  }

                  else
                  {
                    sub_AF50(v30, isUniquelyReferenced_nonNull_native);
                    v32 = sub_1BE04(v21, v20);
                    if ((v31 & 1) != (v33 & 1))
                    {
                      sub_54C08();
                      __break(1u);

                      __break(1u);
                      return;
                    }

                    v27 = v32;
                  }

                  v17 = v52;
                  a2 = v55[0];
                  if (v31)
                  {
                    *(*(v55[0] + 56) + 8 * v27) = _swiftEmptyArrayStorage;
                  }

                  else
                  {
                    *(v55[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
                    v34 = (*(a2 + 48) + 16 * v27);
                    *v34 = v21;
                    v34[1] = v20;
                    *(*(a2 + 56) + 8 * v27) = _swiftEmptyArrayStorage;
                    v35 = *(a2 + 16);
                    v10 = __OFADD__(v35, 1);
                    v36 = v35 + 1;
                    if (v10)
                    {
                      goto LABEL_48;
                    }

                    *(a2 + 16) = v36;
                  }

                  *(a3 + 16) = a2;
                  swift_endAccess();
                  p_type = &stru_75FF0.type;
                }

                swift_beginAccess();
                a2 = a3 + 16;
                v38 = sub_F08C(&v56, v21, v20);
                if (*v37)
                {
                  a2 = v37;
                  v39 = v53;
                  sub_54728();
                  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_54758();
                    v17 = v52;
                  }

                  sub_54778();
                }

                (v38)(&v56, 0);
                swift_endAccess();
              }

              ++v18;

              v19 += 2;
            }

            while (v54 != v18);
          }

          i = v48;
          a2 = v49;
          v6 = v51;
        }

        else
        {
        }

        if (v6 == i)
        {
          goto LABEL_53;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_53:
    swift_beginAccess();
    v40 = *(a3 + 16);
    v41 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap;
    v42 = Strong;
    *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap) = v40;

    v43 = *(*(Strong + v41) + 16);
    v44 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount;
    if (v43 != *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount))
    {
      sub_7738((Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator), *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator + 24));
      sub_54AA8(16);

      strcpy(v55, "Reload due to ");
      HIBYTE(v55[1]) = -18;
      v57._countAndFlagsBits = sub_6E88(*(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id));
      sub_546D8(v57);

      type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
      v42 = Strong;
      sub_4B228(v55[0], v55[1]);
    }

    *&v42[v44] = v43;
  }
}

uint64_t (*sub_F08C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10B98(v6, a2, a3);
  return sub_F114;
}

void sub_F114(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_F160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_E444(0, &qword_775D8, DADevice_ptr);
    v4 = sub_54748();
  }

  v6 = a3;
  v5(v4, a3);
}

double sub_F204@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_54048(v52);
  v32 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount);
  v4 = sub_44BC(&qword_775C0, &qword_574F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-v6 - 8];
  v8 = sub_539F8();
  __chkstk_darwin(v8 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v5 + 8))(v7, v4);
  sub_54038(v41);

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_54048(v53);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id);
  v18 = sub_53918();
  __chkstk_darwin(v18 - 8);
  sub_4AC4(v17);
  v19 = sub_541F8();
  v31[104] = v20 & 1;
  v31[96] = v14 & 1;
  LOBYTE(v32) = v17;
  *&v33 = v19;
  *(&v33 + 1) = v21;
  v34 = v20 & 1;
  *&v35 = v22;
  *(&v35 + 1) = v10;
  v36 = v12;
  v37 = v14 & 1;
  v39 = 0;
  v38 = v16;
  v40 = 511;
  LOBYTE(v41._countAndFlagsBits) = v17;
  v41._object = v19;
  v42 = v21;
  v43 = v20 & 1;
  v44 = v22;
  v45 = v10;
  v46 = v12;
  v47 = v14 & 1;
  v48 = v16;
  v49 = 0;
  v50 = 0;
  v51 = 511;
  sub_F828(&v32, v31);
  sub_F884(&v41);
  v23 = v36;
  v24 = v39;
  v25 = v40;
  v26 = v32 & 0x3F;
  v27 = v34 & 1;
  v28 = v37 | 0x4000000000000000;
  *a1 = v17;
  *(a1 + 8) = v26;
  *(a1 + 16) = v33;
  *(a1 + 32) = v27;
  *(a1 + 40) = v35;
  *(a1 + 56) = v23;
  *(a1 + 64) = v28;
  result = *&v38;
  *(a1 + 72) = v38;
  *(a1 + 88) = v24;
  *(a1 + 96) = v25;
  return result;
}

__n128 sub_F640@<Q0>(uint64_t a1@<X8>)
{
  sub_F204(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_F6A0()
{
  result = qword_775C8;
  if (!qword_775C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775C8);
  }

  return result;
}

unint64_t sub_F6F4()
{
  result = qword_775D0;
  if (!qword_775D0)
  {
    sub_4590(&qword_775C0, &qword_574F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775D0);
  }

  return result;
}

Swift::Int sub_F754()
{
  sub_54C28();
  sub_54C38(0);
  return sub_54C58();
}

Swift::Int sub_F7C0(uint64_t a1)
{
  sub_54C28();
  sub_54C38(0);
  return sub_54C58();
}

uint64_t sub_F8D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_F910(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_77610, &qword_57508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_F994(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77610, &qword_57508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_FAA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77628, &unk_575D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

Swift::Int sub_FBA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_54BA8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_54768();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_FD68(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_FC98(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_FC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_54BD8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_FD68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_105F8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10344((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_54BD8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_54BD8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1060C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1060C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10344((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_105F8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1056C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_54BD8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10344(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_54BD8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_54BD8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1056C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_105F8(v3);
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

char *sub_1060C(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77608, &qword_57500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10710(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_549F8() + 1) & ~v5;
    do
    {
      sub_54C28();

      sub_546C8();
      v9 = sub_54C58();

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

uint64_t sub_108C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_549F8() + 1) & ~v5;
    do
    {
      sub_54C28();

      sub_546C8();
      v11 = sub_54C58();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_10A7C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_10AC0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_CB50(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10B3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void (*sub_10B98(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10F40(v7);
  v7[9] = sub_10CA4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10C44;
}

void sub_10C44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10CA4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1BE04(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_BDA0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_AF50(v18, a4 & 1);
    v13 = sub_1BE04(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_54C08();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_10DFC;
}

void sub_10DFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_11290(*(v13 + 48) + 16 * v12);
      sub_10710(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_10F40(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10F68;
}

void *sub_10F74(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_110E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11178()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_111CC()
{
  result = qword_775E8;
  if (!qword_775E8)
  {
    sub_54458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775E8);
  }

  return result;
}

unint64_t sub_11224()
{
  result = qword_775F8;
  if (!qword_775F8)
  {
    sub_4590(&qword_775F0, &qword_574F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoriesFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccessoriesFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_113D4()
{
  result = qword_77620;
  if (!qword_77620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77620);
  }

  return result;
}

void sub_11430()
{
  v1 = v0;
  v2 = [objc_opt_self() numberOfAppsUsingBackgroundMessaging];
  v3 = sub_547F8();

  if (v3 != *(v1 + 24))
  {
    sub_7738((v1 + 40), *(v1 + 64));
    sub_54AA8(16);

    strcpy(v4, "Reload due to ");
    HIBYTE(v4[1]) = -18;
    v5._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v5);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v4[0], v4[1]);
  }

  *(v1 + 24) = v3;
}

void *sub_11560()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_11288(v2);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 40));
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11760()
{
  sub_11560();

  return swift_deallocClassInstance();
}

__n128 sub_117B8@<Q0>(char *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_54048(v59);
  v38 = *(v1 + 24);
  v4 = sub_44BC(&qword_775C0, &qword_574F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_539F8();
  __chkstk_darwin(v8 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v5 + 8))(v7, v4);
  sub_54038(v48);

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_54048(v60);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v1 + 16);
  v18 = sub_53918();
  __chkstk_darwin(v18 - 8);
  sub_4AC4(v17);
  v19 = sub_541F8();
  v37[104] = v20 & 1;
  v37[96] = v14 & 1;
  LOBYTE(v38) = v17;
  v39 = v19;
  v40 = v21;
  v41 = v20 & 1;
  *&v42 = v22;
  *(&v42 + 1) = v10;
  v43 = v12;
  v44 = v14 & 1;
  v46 = 0;
  v45 = v16;
  v47 = 511;
  LOBYTE(v48._countAndFlagsBits) = v17;
  v48._object = v19;
  v49 = v21;
  v50 = v20 & 1;
  v51 = v22;
  v52 = v10;
  v53 = v12;
  v54 = v14 & 1;
  v55 = v16;
  v56 = 0;
  v57 = 0;
  v58 = 511;
  sub_F828(&v38, v37);
  sub_F884(&v48);
  v23 = v39;
  v24 = v40;
  v25 = v43;
  v34 = v45;
  v35 = v42;
  v26 = v46;
  v27 = v47;
  v28 = v38 & 0x3F;
  v29 = v41 & 1;
  v30 = v2;
  v31 = v44 | 0x4000000000000000;
  sub_11B9C(v30);
  v32 = v36;
  *v36 = v17;
  *(v32 + 1) = v28;
  *(v32 + 2) = v23;
  *(v32 + 3) = v24;
  *(v32 + 4) = v29;
  result = v34;
  *(v32 + 40) = v35;
  *(v32 + 7) = v25;
  *(v32 + 8) = v31;
  *(v32 + 72) = result;
  *(v32 + 11) = v26;
  *(v32 + 48) = v27;
  return result;
}

uint64_t sub_11B9C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_54A18();

    if (v4)
    {
      return result;
    }
  }

  else if (*(v3 + 16))
  {
    return result;
  }

  v5 = sub_548B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_opt_self() defaultCenter];
  if (qword_76F98 != -1)
  {
    swift_once();
  }

  sub_548C8();

  swift_allocObject();
  swift_weakInit();
  sub_11EB8();
  sub_53D98();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();
}

__n128 sub_11DC0@<Q0>(uint64_t a1@<X8>)
{
  sub_117B8(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_11E20()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11E58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_11430();
  }

  return result;
}

unint64_t sub_11EB8()
{
  result = qword_777B0;
  if (!qword_777B0)
  {
    sub_548B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_777B0);
  }

  return result;
}

unint64_t sub_11F04()
{
  result = qword_777C0;
  if (!qword_777C0)
  {
    sub_53CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_777C0);
  }

  return result;
}

uint64_t sub_11F7C()
{
  sub_547A8();
  *(v0 + 24) = sub_54798();
  v2 = sub_54788();

  return _swift_task_switch(sub_12010, v2, v1);
}

uint64_t sub_12010()
{

  sub_12074();
  v1 = *(v0 + 8);

  return v1();
}

void sub_12074()
{
  v1 = v0;
  v2 = [objc_opt_self() enumeratorWithOptions:128];
  v3 = [v2 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v4 bundleIdentifier];
      if (v5)
      {
        v6 = v5;
        sub_54668();

        v7 = sub_546A8();
        v9 = v8;

        swift_beginAccess();
        sub_1F8F4(&v14, v7, v9);
        swift_endAccess();
      }

      else
      {
      }

      v4 = [v2 nextObject];
    }

    while (v4);
  }

  v10 = *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_14A04;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12D50;
  aBlock[3] = &unk_6EEF0;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_12270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14068(a3, v25 - v10);
  v12 = sub_547D8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_140D8(v11);
  }

  else
  {
    sub_547C8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_54788();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_546B8() + 32;
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

      sub_140D8(a3);

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

  sub_140D8(a3);
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

void *sub_12530()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_11288(v3);
      *&v1[v2] = &_swiftEmptySetSingleton;

      v20.receiver = v1;
      v20.super_class = ObjectType;
      return objc_msgSendSuper2(&v20, "dealloc");
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_127FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_547D8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_547A8();

  v9 = a3;
  v10 = sub_54798();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = v9;
  sub_12270(0, 0, v7, &unk_576A8, v11);
}

uint64_t sub_12938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_547A8();
  v5[7] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_129D0, v7, v6);
}

uint64_t sub_129D0()
{
  v34 = v0;
  v1 = v0[5];

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];
  if (v3)
  {
    v4 = v0[6];
    v5 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
    v6 = *(v4 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID);
    v7 = *(v4 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID + 8);

    v31 = v5;
    v32 = v4;
    v28 = v0;
    result = swift_beginAccess();
    v29 = 0;
    v30 = v3;
    v9 = 0;
    while (1)
    {
      if (v9 >= v2[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      if (sub_546A8() != v6 || v10 != v7)
      {
        v12 = sub_54BD8();

        if ((v12 & 1) == 0)
        {
          v13 = *(v32 + v31);
          v14 = sub_546A8();
          v16 = v15;

          if (*(v13 + 16))
          {
            sub_54C28();
            sub_546C8();
            v17 = sub_54C58();
            v18 = -1 << *(v13 + 32);
            v19 = v17 & ~v18;
            if ((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
            {
              v20 = ~v18;
              while (1)
              {
                v21 = (*(v13 + 48) + 16 * v19);
                v22 = *v21 == v14 && v21[1] == v16;
                if (v22 || (sub_54BD8() & 1) != 0)
                {
                  break;
                }

                v19 = (v19 + 1) & v20;
                if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }

              if (__OFADD__(v29, 1))
              {
                goto LABEL_35;
              }

              ++v29;
              v3 = v30;
              goto LABEL_23;
            }
          }

LABEL_21:

          v3 = v30;
        }
      }

LABEL_23:
      if (++v9 == v3)
      {
        v0 = v28;
        v23 = v28[6];

        v24 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount;
        v25 = v29;
        if (v29 != *(v23 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount))
        {
          v26 = v28[6];
          sub_7738((v26 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator), *(v26 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator + 24));
          sub_54AA8(16);

          strcpy(v33, "Reload due to ");
          HIBYTE(v33[1]) = -18;
          v36._countAndFlagsBits = sub_6E88(*(v26 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id));
          sub_546D8(v36);

          type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
          sub_4B228(v33[0], v33[1]);

          v25 = v29;
        }

        *(v23 + v24) = v25;
        goto LABEL_31;
      }
    }
  }

LABEL_31:
  v27 = v0[1];

  return v27();
}