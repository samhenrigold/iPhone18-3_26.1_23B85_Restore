uint64_t static Capabilities.isInternalBuild.getter()
{
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2810D5780;
}

uint64_t sub_241C8D9EC()
{
  result = os_variant_has_internal_content();
  byte_2810D5780 = result;
  return result;
}

uint64_t sub_241C8DA14(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall String.append(pathComponent:)(Swift::String pathComponent)
{
  v1 = sub_241CF9008();
  v2 = sub_241CF9008();
  v3 = [v1 stringByAppendingPathComponent_];

  v4 = sub_241CF9038();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void sub_241C8DB10()
{
  v0 = _sSo14NSUserDefaultsC14BookFoundationE05booksB16NeedingMigrationABSgyFZ_0();
  if (qword_2810D56C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2810D56D0;
  sub_241C93918(&qword_27EC6A9B0, &qword_241CFF520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241CFF510;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000241D00EA0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v3;
  strcpy((inited + 80), "BKMenuOnLeft");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v3;
  *(inited + 96) = 0;
  sub_241C8E044(inited);
  swift_setDeallocating();
  sub_241C93918(&qword_27EC6A7C8, &qword_241CFEDC0);
  swift_arrayDestroy();
  v4 = sub_241CF8EE8();

  [v1 registerDefaults_];

  if (v0)
  {
    sub_241CD4268(v0);
  }
}

id _sSo14NSUserDefaultsC14BookFoundationE05booksB16NeedingMigrationABSgyFZ_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_241CF9008();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_241CF95F8();
    swift_unknownObjectRelease();
  }

  else
  {

    v0 = 0;
    memset(v4, 0, sizeof(v4));
  }

  sub_241C8DA14(v4);
  return v0;
}

id sub_241C8DD6C()
{
  result = sub_241C8DD8C();
  qword_2810D56D0 = result;
  return result;
}

id sub_241C8DD8C()
{
  v0 = sub_241CF8CF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundlePath];

  v6 = sub_241CF9038();
  v8 = v7;

  v18[2] = v6;
  v18[3] = v8;
  v18[0] = 0x736B6F6F42;
  v18[1] = 0xE500000000000000;
  sub_241C8DFF0();
  LOBYTE(v6) = sub_241CF95E8();

  v9 = objc_opt_self();
  if (v6)
  {
    v10 = [v9 bu_groupUserDefaults];

    return v10;
  }

  else
  {
    v12 = v9;
    v13 = sub_241CF9008();
    v14 = [objc_opt_self() books];
    v15 = [v14 containerURL];

    sub_241CF8CB8();
    v16 = sub_241CF8C98();
    (*(v1 + 8))(v3, v0);
    v17 = [v12 bu:v13 createWithSuiteName:v16 container:?];

    return v17;
  }
}

unint64_t sub_241C8DFF0()
{
  result = qword_2810D56F0;
  if (!qword_2810D56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56F0);
  }

  return result;
}

unint64_t sub_241C8E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_241C93918(&qword_27EC6A2E8, &qword_241CFCE18);
    v3 = sub_241CF9808();
    v4 = a1 + 32;

    while (1)
    {
      sub_241C8E174(v4, &v13, &qword_27EC6A7C8, &qword_241CFEDC0);
      v5 = v13;
      v6 = v14;
      result = sub_241C8E1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_241C8E30C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_241C8E174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_241C93918(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_241C8E1DC(uint64_t a1, uint64_t a2)
{
  sub_241CF9998();
  sub_241CF90B8();
  v4 = sub_241CF99C8();

  return sub_241C8E254(a1, a2, v4);
}

unint64_t sub_241C8E254(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_241CF98C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_241C8E30C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for MSeries(uint64_t a1)
{
  result = qword_2810D5700;
  if (!qword_2810D5700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241C8E378(uint64_t a1)
{
  result = sub_241CF8CF8();
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

uint64_t type metadata accessor for MAsset(uint64_t a1)
{
  result = qword_2810D5710;
  if (!qword_2810D5710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241C8E498(uint64_t a1)
{
  result = sub_241CF8CF8();
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

uint64_t sub_241C8E5C8(uint64_t a1)
{
  result = sub_241C8E670(319, &unk_2810D56B8, 0x277CBEBD0);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_241C8E670(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t UserDefault.init(_:defaults:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for UserDefault(0, a5, a3, a4);
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 32);

  return v10(v11, a4, a5);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_241CF9598();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (swift_dynamicCastMetatype())
  {
    v9 = *(v2 + 16);
    v10 = sub_241CF9008();
    v11 = [v9 objectForKey_];

    if (v11)
    {
      sub_241CF95F8();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      sub_241C8E670(0, &qword_2810D56A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v15 = v22;
        v16 = [v22 BOOLValue];

        LOBYTE(v25) = v16;
        return swift_dynamicCast();
      }
    }

    else
    {
      sub_241C8EA54(&v25, &qword_27EC6A0B0, &qword_241CFE350);
    }

    return (*(*(v5 - 8) + 16))(a2, v2 + *(a1 + 32), v5);
  }

  else
  {
    v12 = *(v2 + 16);
    v13 = sub_241CF9008();
    v14 = [v12 objectForKey_];

    if (v14)
    {
      sub_241CF95F8();
      swift_unknownObjectRelease();
      sub_241C8E30C(&v23, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
    v18 = swift_dynamicCast();
    v19 = *(v5 - 8);
    v20 = *(v19 + 56);
    if (v18)
    {
      v20(v8, 0, 1, v5);
      return (*(v19 + 32))(a2, v8, v5);
    }

    else
    {
      v20(v8, 1, 1, v5);
      return (*(v19 + 16))(a2, v2 + *(a1 + 32), v5);
    }
  }
}

uint64_t sub_241C8EA54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_241C93918(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (Collection.validate(index:)(a1, a2, a3))
  {
    v5 = sub_241CF94E8();
    v7 = v6;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    (*(v9 + 16))(a4, v7, AssociatedTypeWitness);
    v5(&v13, 0);
    return (*(v9 + 56))(a4, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(*(v11 - 8) + 56);

    return v12(a4, 1, 1, v11);
  }
}

uint64_t Collection.validate(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_241CF9458();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_241CF9208();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v7 & 1;
}

Swift::Bool __swiftcall isFeatureEnabled(_:)(BookFoundation::BooksUIKitFeatureFlag a1)
{
  v1 = *a1;
  v4[3] = &type metadata for BooksUIKitFeatureFlag;
  v4[4] = sub_241C8EE20();
  LOBYTE(v4[0]) = v1;
  v2 = sub_241CF8E58();
  sub_241C8EEE8(v4);
  return v2 & 1;
}

unint64_t sub_241C8EE20()
{
  result = qword_2810D5730;
  if (!qword_2810D5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5730);
  }

  return result;
}

const char *sub_241C8EE88()
{
  v1 = "uip_floating_tab_bar";
  v2 = "uip_fluid_transitions";
  if (*v0 != 2)
  {
    v2 = "uip_document_landing_page";
  }

  if (*v0)
  {
    v1 = "uip_floating_tab_bar_only";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241C8EEE8(void *a1)
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

void OSAllocatedUnfairLock.valueWithLock.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_241C8EFD8(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

uint64_t sub_241C8F048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241CF9038();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_241C8F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C8F150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonLibraryAssetInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

__n128 sub_241C8F21C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_241C8F280@<D0>(uint64_t a1@<X8>)
{
  sub_241CA61B0(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_241C8F2E0@<X0>(uint64_t *a1@<X8>)
{
  result = MSeries.assetsResourceSet.getter();
  *a1 = result;
  return result;
}

uint64_t sub_241C8F318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  v2 = *(*a1 + 48);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_241C8F328(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_241C8F378@<X0>(uint64_t *a1@<X8>)
{
  result = MSeries.currentSort.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_241C8F3D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicit];
  *a2 = result;
  return result;
}

uint64_t sub_241C8F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C8F51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonLibraryAssetInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

unint64_t sub_241C8F6B8@<X0>(unint64_t *a1@<X8>)
{
  result = MAsset.seriesResource.getter();
  *a1 = result;
  return result;
}

void sub_241C8F6E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_241CB4624(v1);
}

uint64_t sub_241C8F764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_241C8F83C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_241C8F90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241C8F984(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_241C8FA00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241C8FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C8FBB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void *sub_241C8FC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241CBC9DC();
  *a1 = result;
  return result;
}

void *sub_241C8FCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241CBCA58();
  *a1 = result;
  return result;
}

uint64_t sub_241C8FCE8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_241C8FD20()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_241C8FD50()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_241C8FD80()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_241C8FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241C8FE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_241C8FF2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_241C8FF50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_241C90054@<X0>(uint64_t *a1@<X8>)
{
  result = MAsset.bookWorkTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_241C9008C@<X0>(uint64_t *a1@<X8>)
{
  result = MAsset.bookWorkAuthorName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_241C9022C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicit];
  *a2 = result;
  return result;
}

id sub_241C902D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPreorder];
  *a2 = result;
  return result;
}

uint64_t sub_241C903D0@<X0>(uint64_t *a1@<X8>)
{
  result = MAsset.publisherName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_241C90418@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsUnifiedProductPage];
  *a2 = result;
  return result;
}

uint64_t sub_241C90498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_241C97000(a1, v4);
  result = (*(*(v3 + 8) + 64))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_241C9060C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSG];
  *a2 = result;
  return result;
}

uint64_t sub_241C90640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_241C907C8()
{
  v1 = sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241C9085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_241C909E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_241C90C08()
{
  swift_unknownObjectRelease();

  sub_241C8EEE8((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 148, 7);
}

uint64_t sub_241C90CA0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CommonLibraryAssetInfo(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

double sub_241C90EAC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_241C90EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_241C90FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_241C91138@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_241C9114C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241C911B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_241C91268@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKMenuOnLeft];
  *a2 = result;
  return result;
}

id sub_241C912B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKSettingFilterBrightImages];
  *a2 = result;
  return result;
}

uint64_t sub_241C912F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C913CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_241C914E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_241C914FC()
{
  v1 = *(v0 + 40);

  return v1;
}

id sub_241C9152C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] _initWithSuiteName:v7 container:v6];

  return v8;
}

__n128 sub_241C915B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241C915C0(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_241C9161C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

__n128 sub_241C9167C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_241C91690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241C916B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t _s14BookFoundation11ContentKindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t sub_241C91738(uint64_t a1)
{
  v2 = *v1;
  sub_241CF9998();
  MEMORY[0x245CFE100](v2);
  return sub_241CF99C8();
}

unint64_t sub_241C9178C()
{
  v1 = 0xD000000000000028;
  v2 = 0xD00000000000007FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000029;
  }

  if (*v0)
  {
    v1 = 0xD000000000000034;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241C917FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 104) = *v6;
  v8 = *(v6 + 8);
  *(v7 + 64) = a6;
  *(v7 + 72) = v8;
  return MEMORY[0x2822009F8](sub_241C91830, 0, 0);
}

uint64_t sub_241C91830()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v1;
  v2 = [objc_opt_self() defaultBag];
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_241C91924;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return sub_241C91D8C(v8, v6, v7, v4, v2, &unk_241CFABC8, 0, v5);
}

uint64_t sub_241C91924(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_241C91A7C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_241C91A7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241C91AE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = sub_241C91B94;

  return MCatalogRequest.fetch()();
}

uint64_t sub_241C91B94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_241C91D74;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_241C91CBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241C91CBC()
{
  v1 = *(v0 + 120);
  v2 = [v1 responseDataItems];

  if (v2)
  {
    sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
    v3 = sub_241CF9298();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_241C91D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 440) = a7;
  *(v9 + 448) = a8;
  *(v9 + 424) = a5;
  *(v9 + 432) = a6;
  *(v9 + 408) = a3;
  *(v9 + 416) = a4;
  *(v9 + 392) = a1;
  *(v9 + 400) = a2;
  *(v9 + 489) = *v8;
  *(v9 + 456) = *(v8 + 8);
  return MEMORY[0x2822009F8](sub_241C91DC8, 0, 0);
}

uint64_t sub_241C91DC8()
{
  v1 = *(v0 + 489);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = sub_241C92528(*(v0 + 392));
  *(v0 + 488) = v1;

  v7 = v3;

  sub_241CD7850(v6, v5, v4, v2, v7, (v0 + 488), (v0 + 192));
  v8 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v8;
  v9 = *(v0 + 240);
  *(v0 + 288) = *(v0 + 224);
  *(v0 + 304) = v9;
  v10 = objc_opt_self();
  sub_241C9300C(v0 + 256, v0 + 320);
  v11 = [v10 defaultBag];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultSessionConfiguration];
  v15 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  v16 = *(v0 + 456);
  v17 = *(v0 + 432);
  v18 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v19 = v13;
  v20 = v15;
  v21 = sub_241CF9008();

  v22 = [v18 initWithClientIdentifier:v21 bag:v19];

  v23 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v20 setProtocolHandler_];

  v24 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v22 bag:v19];
  [v24 setAccount_];
  v25 = [objc_opt_self() currentProcess];
  [v24 setClientInfo_];

  v26 = *(v0 + 288);
  v27 = *(v0 + 304);
  *(v0 + 64) = v26;
  *(v0 + 80) = v27;
  v29 = *(v0 + 256);
  v28 = *(v0 + 272);
  *(v0 + 32) = v29;
  *(v0 + 48) = v28;
  *(v0 + 16) = v24;
  *(v0 + 24) = v20;
  *(v0 + 96) = v19;
  *(v0 + 184) = v19;
  *(v0 + 120) = v29;
  *(v0 + 168) = v27;
  *(v0 + 152) = v26;
  *(v0 + 136) = v28;
  *(v0 + 104) = *(v0 + 16);
  v32 = (v17 + *v17);
  v30 = swift_task_alloc();
  *(v0 + 464) = v30;
  *v30 = v0;
  v30[1] = sub_241C92228;

  return v32(v0 + 104);
}

uint64_t sub_241C92228(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_241C924BC;
  }

  else
  {
    v4 = sub_241C9233C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241C9233C()
{
  v1 = *(v0 + 472);
  if (v1)
  {
    v2 = *(v0 + 489);
    v3 = *(v0 + 448);
    v4 = *(v0 + 456);
    *(v0 + 384) = sub_241CF8ED8();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = v0 + 384;
    sub_241C92DB4(sub_241C93164, v5, v1);
    sub_241C93068(v0 + 256);
    sub_241C930BC(v0 + 16);

    v6 = *(v0 + 384);
    v7 = *(v0 + 8);

    return v7(v6);
  }

  else
  {
    sub_241C93110();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    sub_241C930BC(v0 + 16);
    sub_241C93068(v0 + 256);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_241C924BC()
{
  sub_241C93068(v0 + 256);
  sub_241C930BC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241C92528(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v4)) | (v7 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(*(a1 + 56) + v10);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_241CBF86C(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_241CBF86C((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v4 &= v4 - 1;
        v8[2] = v16 + 1;
        v17 = &v8[3 * v16];
        v17[4] = v13;
        v17[5] = v12;
        *(v17 + 48) = v14;
      }

      while (v4);
    }
  }

  v18 = sub_241C936F8(v8);

  sub_241C93918(&qword_27EC69BD8, &qword_241CFEDD0);
  result = sub_241CF97E8();
  v19 = result;
  v20 = 0;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18[8];
  v24 = (v21 + 63) >> 6;
  v46 = v18;
  v47 = result + 64;
  v45 = result;
  v43 = v18 + 8;
  v44 = v24;
  if (!v23)
  {
LABEL_18:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_35;
      }

      if (v20 >= v24)
      {

        return v19;
      }

      v27 = v43[v20];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v25 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_23:
    v28 = v25 | (v20 << 6);
    v29 = *(v18[6] + v28);
    v30 = *(v18[7] + 8 * v28);
    v31 = *(v30 + 16);
    if (v31)
    {
      v48 = *(v18[6] + v28);
      v50 = MEMORY[0x277D84F90];

      sub_241C94488(0, v31, 0);
      v32 = v50;
      v33 = (v30 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v37 = *(v50 + 16);
        v36 = *(v50 + 24);

        if (v37 >= v36 >> 1)
        {
          sub_241C94488((v36 > 1), v37 + 1, 1);
        }

        *(v50 + 16) = v37 + 1;
        v38 = v50 + 16 * v37;
        *(v38 + 32) = v35;
        *(v38 + 40) = v34;
        v33 += 3;
        --v31;
      }

      while (v31);
      v19 = v45;
      v18 = v46;
      v24 = v44;
      v29 = v48;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v39 = sub_241CDE8A8(v32);

    *(v47 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(v19[6] + v28) = v29;
    *(v19[7] + 8 * v28) = v39;
    v40 = v19[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      break;
    }

    v19[2] = v42;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_241C928A4(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  LODWORD(v48) = a2;
  v9 = sub_241CF9598();
  v40 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v39 - v14;
  v42 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v43 = 1701869940;
  v44 = 0xE400000000000000;
  sub_241CF9668();
  if (*(v18 + 16) && (v19 = sub_241CF45AC(&v45), (v20 & 1) != 0))
  {
    sub_241C93664(*(v18 + 56) + 32 * v19, v47);
    sub_241C93610(&v45);
    if (swift_dynamicCast())
    {
      v39[1] = v5;
      v21 = static MResourceType.classType(for:)(v43, v44);

      if (v21)
      {
        LOBYTE(v45) = v48;
        v46 = a3;
        v48 = *(v21 + 128);
        v22 = a3;

        v24 = v48(v23, &v45);
        if (v24)
        {
          v26 = *(v24 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
          v25 = *(v24 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
          v45 = v24;
          v27 = v24;
          type metadata accessor for MResource();

          v28 = v27;
          if (swift_dynamicCast())
          {
            v48 = v28;
            v29 = v42;
            v30 = *(v42 + 56);
            v30(v15, 0, 1, a5);
            (*(v29 + 32))(v17, v15, a5);
            (*(v29 + 16))(v12, v17, a5);
            v30(v12, 0, 1, a5);
            v45 = v26;
            v46 = v25;
            sub_241CF8F38();
            sub_241CF8F68();

            (*(v29 + 8))(v17, a5);
          }

          else
          {

            (*(v42 + 56))(v15, 1, 1, a5);
            (*(v40 + 8))(v15, v9);
            if (qword_27EC69AA8 != -1)
            {
              swift_once();
            }

            v31 = sub_241CF8E88();
            sub_241C936C0(v31, qword_27EC69E40);
            v32 = sub_241CF8E68();
            v33 = sub_241CF9508();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              v45 = v35;
              *v34 = 136315138;
              swift_getMetatypeMetadata();
              v36 = sub_241CF9A58();
              v38 = sub_241CB3A88(v36, v37, &v45);

              *(v34 + 4) = v38;
              _os_log_impl(&dword_241C8C000, v32, v33, "Failed to cast dataItem response to expected Resource type of: %s", v34, 0xCu);
              sub_241C8EEE8(v35);
              MEMORY[0x245CFE970](v35, -1, -1);
              MEMORY[0x245CFE970](v34, -1, -1);
            }
          }
        }
      }
    }
  }

  else
  {
    sub_241C93610(&v45);
  }
}

void (*sub_241C92DB4(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_241C92E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_241C92F0C;

  return sub_241C917FC(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_241C92F0C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_241C93110()
{
  result = qword_27EC69BD0;
  if (!qword_27EC69BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69BD0);
  }

  return result;
}

uint64_t sub_241C93188(uint64_t a1, id *a2)
{
  result = sub_241CF9018();
  *a2 = 0;
  return result;
}

uint64_t sub_241C93200(uint64_t a1, id *a2)
{
  v3 = sub_241CF9028();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_241C93280@<X0>(uint64_t *a2@<X8>)
{
  sub_241CF9038();
  v3 = sub_241CF9008();

  *a2 = v3;
  return result;
}

uint64_t sub_241C932C4(uint64_t a1)
{
  v2 = sub_241C93C1C(&qword_27EC69C50, type metadata accessor for MCatalogRequestRelationship, &unk_241CFADF4);
  v3 = sub_241C93C1C(&qword_27EC69C58, type metadata accessor for MCatalogRequestRelationship, &unk_241CFAD94);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_241C93380@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_241CF9008();

  *a2 = v3;
  return result;
}

uint64_t sub_241C933C8(uint64_t a1)
{
  v2 = sub_241C93C1C(&qword_27EC69C40, type metadata accessor for MCatalogRequestView, &unk_241CFAF4C);
  v3 = sub_241C93C1C(&qword_27EC69C48, type metadata accessor for MCatalogRequestView, &unk_241CFAEEC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_241C93484()
{
  v0 = sub_241CF9038();
  v1 = MEMORY[0x245CFD8D0](v0);

  return v1;
}

uint64_t sub_241C934C0(uint64_t a1)
{
  sub_241CF9038();
  sub_241CF90B8();
}

uint64_t sub_241C93514(uint64_t a1)
{
  sub_241CF9038();
  sub_241CF9998();
  sub_241CF90B8();
  v1 = sub_241CF99C8();

  return v1;
}

uint64_t sub_241C93588(void *a1, uint64_t *a2)
{
  v2 = sub_241CF9038();
  v4 = v3;
  if (v2 == sub_241CF9038() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_241CF98C8();
  }

  return v7 & 1;
}

uint64_t sub_241C93664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241C936C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_241C936F8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;
    v8 = sub_241CF4160(v7);
    v10 = v1[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    v15 = v1[3];

    if (v15 < v12)
    {
      sub_241CC6BD4(v12, 1);
      v1 = v31;
      v16 = sub_241CF4160(v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v13 = v16;
    }

    if (v14)
    {
      v18 = v1[7];
      v19 = *(v18 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v13) = v19;
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_241CBF86C(0, v19[2] + 1, 1, v19);
        *(v18 + 8 * v13) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = sub_241CBF86C((v21 > 1), v22 + 1, 1, v19);
        v23 = v22 + 1;
        v19 = v24;
        *(v30 + 8 * v13) = v24;
      }

      v19[2] = v23;
      v4 = &v19[3 * v22];
      v4[4] = v5;
      v4[5] = v6;
      *(v4 + 48) = v7;
    }

    else
    {
      sub_241C93918(&qword_27EC69BE0, &unk_241CFABE0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_241CFAAF0;
      *(v25 + 32) = v5;
      *(v25 + 40) = v6;
      *(v25 + 48) = v7;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      *(v1[6] + v13) = v7;
      *(v1[7] + 8 * v13) = v25;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_241C93918(&qword_27EC69BE8, "vE");
  result = sub_241CF9938();
  __break(1u);
  return result;
}

uint64_t sub_241C93918(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_241C93988(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MCatalogRequestHandler.FetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MCatalogRequestHandler.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241C93B38()
{
  result = qword_27EC69C08;
  if (!qword_27EC69C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69C08);
  }

  return result;
}

uint64_t sub_241C93C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Optional<A>.int32Value.getter(uint64_t result, char a2)
{
  if (a2)
  {
    v2 = 0;
    return v2 | ((a2 & 1) << 32);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v2 = result;
    return v2 | ((a2 & 1) << 32);
  }

  __break(1u);
  return result;
}

uint64_t static String.random(length:)(uint64_t result)
{
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = result;
  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
LABEL_13:
    v14 = v2;
    sub_241C93918(&qword_27EC69D20, &qword_241CFB028);
    sub_241C944C8();
    return sub_241CF9198();
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_241C944A8(0, result, 0);
  if ((" a invalid resource type" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v3 = 0;
    v2 = v14;
    while (1)
    {
      result = sub_241CF90C8();
      if (result < 0)
      {
        break;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_15;
      }

      v13 = 0;
      MEMORY[0x245CFE980](&v13, 8);
      if (v4 > v13 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v13 * v4)
        {
          v13 = 0;
          MEMORY[0x245CFE980](&v13, 8);
        }
      }

      sub_241CF90F8();
      v6 = sub_241CF9188();
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_241C944A8((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v2 = v14;
      }

      ++v3;
      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall String.urlQueryEscaped(excludingCharacters:)(Swift::String_optional excludingCharacters)
{
  v3 = v2;
  v4 = v1;
  object = excludingCharacters.value._object;
  v6 = sub_241CF8AB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241CF8A98();
  if (object)
  {
    sub_241CF8AA8();
  }

  v16[0] = v4;
  v16[1] = v3;
  sub_241C8DFF0();
  v10 = sub_241CF95C8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall String.urlFragmentRemoved()()
{
  sub_241C941F4(35, 0xE100000000000000, v0, v1);
  v2 = sub_241CF91B8();
  v3 = MEMORY[0x245CFD7E0](v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_241C941F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_241CF9188() != a1 || v9 != a2)
  {
    v10 = sub_241CF98C8();

    if (v10)
    {
      return v8;
    }

    v8 = sub_241CF90D8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

Swift::String __swiftcall String.leadingSlashesRemoved()()
{

  v0 = sub_241CF91A8();
  v2 = v1;
  v11 = v1;

  v3 = 0;
  while (1)
  {
    v8 = sub_241CF9118();
    if (!v9)
    {
      break;
    }

    if (v8 == 47 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v4 = sub_241CF98C8();

      if ((v4 & 1) == 0)
      {
        break;
      }
    }

    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  if (v3 >= 1)
  {
    sub_241C94400(v3);
    v2 = v11;
  }

  v5 = v0;
  v6 = v2;
LABEL_12:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_241C94400(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_241CF90E8();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

char *sub_241C94488(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C94774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241C944A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C94B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_241C944C8()
{
  result = qword_2810D56E0;
  if (!qword_2810D56E0)
  {
    sub_241C9452C(&qword_27EC69D20, &qword_241CFB028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56E0);
  }

  return result;
}

uint64_t sub_241C9452C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_241C94574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C94DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69DB0, &qword_241CFB0A8, &qword_27EC69DB8, &qword_241CFB0B0);
  *v3 = result;
  return result;
}

char *sub_241C945D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C94EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241C945F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C94FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94614(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95100(a1, a2, a3, *v3, &qword_27EC69D58, &qword_241CFB060, &qword_27EC69D60, &qword_241CFB068);
  *v3 = result;
  return result;
}

void *sub_241C94654(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95100(a1, a2, a3, *v3, &qword_27EC69D68, &qword_241CFB070, &qword_27EC69D70, &qword_241CFB078);
  *v3 = result;
  return result;
}

void *sub_241C94694(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D48, &qword_241CFB050, &qword_27EC69D50, &qword_241CFB058);
  *v3 = result;
  return result;
}

void *sub_241C946D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D78, &qword_241CFB080, &qword_27EC69D80, &qword_241CFB088);
  *v3 = result;
  return result;
}

void *sub_241C94714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95234(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D28, &qword_241CFB030, &qword_27EC69D30, &qword_241CFB038);
  *v3 = result;
  return result;
}

char *sub_241C94774(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_241C94880(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_241C93918(&qword_27EC69D90, &qword_241CFCF80);
  v10 = *(sub_241CF8B38() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_241CF8B38() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_241C94A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69D88, &qword_241CFB090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_241C94B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DE0, &unk_241CFB0D0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_241C94C58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_241C93918(&qword_27EC69DD0, &qword_241CFB0C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241C94DA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_241C93918(&qword_27EC69DC0, &qword_241CFB0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC69DC8, &qword_241CFB0C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241C94EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DA8, &qword_241CFB0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241C94FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DA0, &qword_241CFB098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241C95100(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_241C93918(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_241C95234(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_241C93918(&qword_27EC69D38, &qword_241CFB040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC69D40, &qword_241CFB048);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241C95368(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_241C93918(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_241C954AC(uint64_t a1, unint64_t a2)
{
  v2 = sub_241CF91B8();
  v6 = sub_241C95530(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_241C95530(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_241CF95A8();
    if (!v9 || (v10 = v9, v11 = sub_241CB3EC8(v9, 0), v12 = sub_241C95688(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_241CF90A8();

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
      return sub_241CF90A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_241CF9708();
LABEL_4:

  return sub_241CF90A8();
}

unint64_t sub_241C95688(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_241C958A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241CF9158();
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
          result = sub_241CF9708();
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

    result = sub_241C958A8(v12, a6, a7);
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

    result = sub_241CF9138();
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

unint64_t sub_241C958A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241CF9168();
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
    v5 = MEMORY[0x245CFD8A0](15, a1 >> 16);
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

uint64_t SeriesListSortOrder.sortedAssets(for:)(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 1)
  {
    if (*v1)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = a1 + 32;
        while (1)
        {
          sub_241C96F9C(v13, v19);
          v14 = v20;
          v15 = v21;
          sub_241C97000(v19, v20);
          AssetInfo.sequenceNumber.getter(v14, v15);
          v17 = v16;
          sub_241C8EEE8(v19);
          if ((v17 & 0x100000000) != 0)
          {
            break;
          }

          v13 += 40;
          if (!--v12)
          {
            goto LABEL_17;
          }
        }

        v19[0] = a1;

        v3 = sub_241C9B73C;
        v4 = sub_241C97F88;
      }

      else
      {
LABEL_17:
        v19[0] = a1;

        v3 = sub_241C9AEC8;
        v4 = sub_241C97DF8;
      }
    }

    else
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = a1 + 32;
        while (1)
        {
          sub_241C96F9C(v7, v19);
          v8 = v20;
          v9 = v21;
          sub_241C97000(v19, v20);
          AssetInfo.sequenceNumber.getter(v8, v9);
          v11 = v10;
          sub_241C8EEE8(v19);
          if ((v11 & 0x100000000) != 0)
          {
            break;
          }

          v7 += 40;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v19[0] = a1;

        v3 = sub_241C9CDE8;
        v4 = sub_241C985E4;
      }

      else
      {
LABEL_10:
        v19[0] = a1;

        v3 = sub_241C9C520;
        v4 = sub_241C98438;
      }
    }
  }

  else if (v2 == 2)
  {
    v19[0] = a1;

    v3 = sub_241C9A0A8;
    v4 = sub_241C9794C;
  }

  else
  {
    v19[0] = a1;
    if (v2 == 3)
    {

      v3 = sub_241C992C4;
      v4 = sub_241C9749C;
    }

    else
    {

      v3 = sub_241C98A74;
      v4 = sub_241C97304;
    }
  }

  sub_241C96ED8(v19, v3, v4);
  return v19[0];
}

uint64_t sub_241C95BC8(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = sub_241CF8D88();
  v46 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v17 = a1[3];
  v16 = a1[4];
  sub_241C97000(a1, v17);
  AssetInfo.seriesSortKey.getter(v17, v16);
  if (v18 & 1) != 0 && (v19 = a2[3], v20 = a2[4], sub_241C97000(a2, v19), AssetInfo.seriesSortKey.getter(v19, v20), (v21))
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_241C97000(a1, v22);
    AssetInfo.releaseDate.getter(v22, v23, v9);
    v24 = v46;
    v25 = *(v46 + 48);
    v26 = v25(v9, 1, v10);
    v45 = v25;
    if (v26 == 1)
    {
      sub_241CF8D28();
      if (v25(v9, 1, v10) != 1)
      {
        sub_241CA0DE4(v9);
      }
    }

    else
    {
      (*(v24 + 32))(v15, v9, v10);
    }

    v38 = a2[3];
    v39 = a2[4];
    sub_241C97000(a2, v38);
    AssetInfo.releaseDate.getter(v38, v39, v7);
    v40 = v45;
    if (v45(v7, 1, v10) == 1)
    {
      sub_241CF8D28();
      v41 = v40(v7, 1, v10);
      v42 = v46;
      if (v41 != 1)
      {
        sub_241CA0DE4(v7);
      }
    }

    else
    {
      v42 = v46;
      (*(v46 + 32))(v13, v7, v10);
    }

    v37 = sub_241CF8D58();
    v43 = *(v42 + 8);
    v43(v13, v10);
    v43(v15, v10);
  }

  else
  {
    v27 = a1[3];
    v28 = a1[4];
    sub_241C97000(a1, v27);
    v29 = AssetInfo.seriesSortKey.getter(v27, v28);
    v31 = v30;
    v32 = a2[3];
    v33 = a2[4];
    sub_241C97000(a2, v32);
    v34 = AssetInfo.seriesSortKey.getter(v32, v33);
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v35 & 1) == 0)
    {
      v36 = v34;
    }

    v37 = (v29 < v36) & ~v31;
  }

  return v37 & 1;
}

uint64_t sub_241C95F74(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = sub_241CF8D88();
  v45 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v17 = a1[3];
  v16 = a1[4];
  sub_241C97000(a1, v17);
  AssetInfo.seriesSortKey.getter(v17, v16);
  if (v18 & 1) != 0 && (v19 = a2[3], v20 = a2[4], sub_241C97000(a2, v19), AssetInfo.seriesSortKey.getter(v19, v20), (v21))
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_241C97000(a1, v22);
    AssetInfo.releaseDate.getter(v22, v23, v9);
    v24 = v45;
    v25 = *(v45 + 48);
    v26 = v25(v9, 1, v10);
    v44 = v25;
    if (v26 == 1)
    {
      sub_241CF8D28();
      if (v25(v9, 1, v10) != 1)
      {
        sub_241CA0DE4(v9);
      }
    }

    else
    {
      (*(v24 + 32))(v15, v9, v10);
    }

    v37 = a2[3];
    v38 = a2[4];
    sub_241C97000(a2, v37);
    AssetInfo.releaseDate.getter(v37, v38, v7);
    v39 = v44;
    if (v44(v7, 1, v10) == 1)
    {
      sub_241CF8D28();
      v40 = v39(v7, 1, v10);
      v41 = v45;
      if (v40 != 1)
      {
        sub_241CA0DE4(v7);
      }
    }

    else
    {
      v41 = v45;
      (*(v45 + 32))(v13, v7, v10);
    }

    v36 = sub_241CF8D48();
    v42 = *(v41 + 8);
    v42(v13, v10);
    v42(v15, v10);
  }

  else
  {
    v27 = a1[3];
    v28 = a1[4];
    sub_241C97000(a1, v27);
    v29 = AssetInfo.seriesSortKey.getter(v27, v28);
    if (v30)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    v32 = a2[3];
    v33 = a2[4];
    sub_241C97000(a2, v32);
    v34 = AssetInfo.seriesSortKey.getter(v32, v33) < v31;
    v36 = v34 & ~v35;
  }

  return v36 & 1;
}

uint64_t sub_241C96318(void *a1, void *a2)
{
  v42 = a2;
  v3 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_241CF8D88();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  sub_241C97000(a1, v16);
  AssetInfo.releaseDate.getter(v16, v15, v8);
  v17 = *(v10 + 48);
  v18 = v17(v8, 1, v9);
  v41 = v14;
  if (v18 == 1)
  {
    sub_241CF8D28();
    if (v17(v8, 1, v9) != 1)
    {
      sub_241CA0DE4(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
  }

  v19 = v42;
  v20 = v42[3];
  v21 = v42[4];
  sub_241C97000(v42, v20);
  AssetInfo.releaseDate.getter(v20, v21, v6);
  v22 = v17(v6, 1, v9);
  v23 = v40;
  if (v22 == 1)
  {
    sub_241CF8D28();
    if (v17(v6, 1, v9) != 1)
    {
      sub_241CA0DE4(v6);
    }
  }

  else
  {
    (*(v10 + 32))(v40, v6, v9);
  }

  v24 = v41;
  if (sub_241CF8D68())
  {
    v25 = v39[3];
    v26 = v39[4];
    sub_241C97000(v39, v25);
    v27 = AssetInfo.seriesSortKey.getter(v25, v26);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    v30 = v19[3];
    v31 = v19[4];
    sub_241C97000(v19, v30);
    v32 = AssetInfo.seriesSortKey.getter(v30, v31);
    LOBYTE(v31) = v33;
    v34 = *(v10 + 8);
    v34(v23, v9);
    v34(v24, v9);
    if (v31)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    v36 = v35 < v29;
  }

  else
  {
    v36 = sub_241CF8D48();
    v37 = *(v10 + 8);
    v37(v23, v9);
    v37(v24, v9);
  }

  return v36 & 1;
}

uint64_t sub_241C966B4(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = sub_241CF8D88();
  v46 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v17 = a1[3];
  v16 = a1[4];
  sub_241C97000(a1, v17);
  AssetInfo.seriesSortKey.getter(v17, v16);
  if (v18 & 1) != 0 && (v19 = a2[3], v20 = a2[4], sub_241C97000(a2, v19), AssetInfo.seriesSortKey.getter(v19, v20), (v21))
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_241C97000(a1, v22);
    AssetInfo.releaseDate.getter(v22, v23, v9);
    v24 = v46;
    v25 = *(v46 + 48);
    v26 = v25(v9, 1, v10);
    v45 = v25;
    if (v26 == 1)
    {
      sub_241CF8D28();
      if (v25(v9, 1, v10) != 1)
      {
        sub_241CA0DE4(v9);
      }
    }

    else
    {
      (*(v24 + 32))(v15, v9, v10);
    }

    v38 = a2[3];
    v39 = a2[4];
    sub_241C97000(a2, v38);
    AssetInfo.releaseDate.getter(v38, v39, v7);
    v40 = v45;
    if (v45(v7, 1, v10) == 1)
    {
      sub_241CF8D28();
      v41 = v40(v7, 1, v10);
      v42 = v46;
      if (v41 != 1)
      {
        sub_241CA0DE4(v7);
      }
    }

    else
    {
      v42 = v46;
      (*(v46 + 32))(v13, v7, v10);
    }

    v37 = sub_241CF8D58();
    v43 = *(v42 + 8);
    v43(v13, v10);
    v43(v15, v10);
  }

  else
  {
    v27 = a1[3];
    v28 = a1[4];
    sub_241C97000(a1, v27);
    v29 = AssetInfo.seriesSortKey.getter(v27, v28);
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    v32 = a2[3];
    v33 = a2[4];
    sub_241C97000(a2, v32);
    v34 = AssetInfo.seriesSortKey.getter(v32, v33);
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34;
    }

    v37 = v31 < v36;
  }

  return v37 & 1;
}

BookFoundation::SeriesListSortOrder_optional __swiftcall SeriesListSortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SeriesListSortOrder.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69646E65637361;
  v3 = 0x44657361656C6572;
  v4 = 0x72616C75706F70;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69646E6563736564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_241C96B68()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241C96C58(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241C96D34(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241C96E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69646E65637361;
  v5 = 0xEB00000000657461;
  v6 = 0x44657361656C6572;
  v7 = 0xE700000000000000;
  v8 = 0x72616C75706F70;
  if (v2 != 3)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69646E6563736564;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_241C96ED8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_241CDE83C(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_241C971EC(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_241C96F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_241C97000(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_241C97048()
{
  result = qword_27EC69DE8;
  if (!qword_27EC69DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MClientIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MClientIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241C971EC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_241CF9898();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v9 = sub_241CF92D8();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_241C97304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v7 = v6;
    v16 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v20);
      sub_241C96F9C(v5 - 40, v17);
      v8 = v21;
      v9 = v22;
      sub_241C97000(&v20, v21);
      AssetInfo.title.getter(v8, v9);
      v10 = v18;
      v11 = v19;
      sub_241C97000(v17, v18);
      AssetInfo.title.getter(v10, v11);
      sub_241C8DFF0();
      v12 = sub_241CF95D8();

      sub_241C8EEE8(v17);
      result = sub_241C8EEE8(&v20);
      if (v12 != -1)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        --v6;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v20);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C9749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v53[-v11];
  v13 = sub_241CF8D88();
  v14 = MEMORY[0x28223BE20](v13);
  v62 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v14);
  v71 = &v53[-v18];
  v54 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v64 = (v17 + 48);
    v59 = (v17 + 8);
    v60 = (v17 + 32);
    v20 = v19 + 40 * a3;
    v21 = a1 - a3;
    v61 = v19;
    v58 = v12;
LABEL_5:
    v56 = v20;
    v57 = a3;
    v55 = v21;
    v22 = v20;
    while (1)
    {
      sub_241C96F9C(v22, &v68);
      sub_241C96F9C(v22 - 40, v65);
      v23 = v69;
      v24 = v70;
      sub_241C97000(&v68, v69);
      AssetInfo.seriesSortKey.getter(v23, v24);
      if (v25 & 1) != 0 && (v26 = v66, v27 = v67, sub_241C97000(v65, v66), AssetInfo.seriesSortKey.getter(v26, v27), (v28))
      {
        v29 = v69;
        v30 = v70;
        sub_241C97000(&v68, v69);
        AssetInfo.releaseDate.getter(v29, v30, v12);
        v31 = *v64;
        if ((*v64)(v12, 1, v13) == 1)
        {
          sub_241CF8D28();
          if (v31(v12, 1, v13) != 1)
          {
            sub_241CA0DE4(v12);
          }
        }

        else
        {
          (*v60)(v71, v12, v13);
        }

        v43 = v66;
        v44 = v67;
        sub_241C97000(v65, v66);
        v45 = v63;
        AssetInfo.releaseDate.getter(v43, v44, v63);
        v46 = v45;
        if (v31(v45, 1, v13) == 1)
        {
          v47 = v62;
          sub_241CF8D28();
          v48 = v13;
          if (v31(v46, 1, v13) != 1)
          {
            sub_241CA0DE4(v46);
          }
        }

        else
        {
          v47 = v62;
          (*v60)(v62, v46, v13);
          v48 = v13;
        }

        v49 = v71;
        v42 = sub_241CF8D58();
        v50 = *v59;
        (*v59)(v47, v48);
        v50(v49, v48);
        v19 = v61;
        v13 = v48;
        v12 = v58;
      }

      else
      {
        v32 = v69;
        v33 = v70;
        sub_241C97000(&v68, v69);
        v34 = AssetInfo.seriesSortKey.getter(v32, v33);
        if (v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = v34;
        }

        v37 = v66;
        v38 = v67;
        sub_241C97000(v65, v66);
        v39 = AssetInfo.seriesSortKey.getter(v37, v38);
        if (v40)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        v42 = v36 < v41;
      }

      sub_241C8EEE8(v65);
      result = sub_241C8EEE8(&v68);
      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v57 + 1;
        v20 = v56 + 40;
        v21 = v55 - 1;
        if (v57 + 1 == v54)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_241C914E4(v22, &v68);
      v51 = *(v22 - 24);
      *v22 = *(v22 - 40);
      *(v22 + 16) = v51;
      *(v22 + 32) = *(v22 - 8);
      result = sub_241C914E4(&v68, v22 - 40);
      v22 -= 40;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C9794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v53[-v12];
  v14 = sub_241CF8D88();
  v15 = MEMORY[0x28223BE20](v14);
  v62 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v15);
  v71 = &v53[-v19];
  v54 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v64 = (v18 + 48);
    v60 = (v18 + 8);
    v61 = (v18 + 32);
    v58 = v20;
    v21 = v20 + 40 * a3;
    v22 = a1 - a3;
LABEL_5:
    v56 = v21;
    v57 = a3;
    v55 = v22;
    v23 = v22;
    v24 = v21;
    while (1)
    {
      v63 = v23;
      sub_241C96F9C(v24, &v68);
      sub_241C96F9C(v24 - 40, v65);
      v25 = v69;
      v26 = v70;
      sub_241C97000(&v68, v69);
      AssetInfo.releaseDate.getter(v25, v26, v13);
      v27 = *v64;
      if ((*v64)(v13, 1, v14) == 1)
      {
        sub_241CF8D28();
        if (v27(v13, 1, v14) != 1)
        {
          sub_241CA0DE4(v13);
        }
      }

      else
      {
        (*v61)(v71, v13, v14);
      }

      v28 = v66;
      v29 = v67;
      sub_241C97000(v65, v66);
      AssetInfo.releaseDate.getter(v28, v29, v11);
      if (v27(v11, 1, v14) == 1)
      {
        v30 = v62;
        sub_241CF8D28();
        v31 = v27(v11, 1, v14);
        v32 = v71;
        if (v31 != 1)
        {
          sub_241CA0DE4(v11);
        }
      }

      else
      {
        v30 = v62;
        (*v61)(v62, v11, v14);
        v32 = v71;
      }

      if (sub_241CF8D68())
      {
        v33 = v69;
        v34 = v70;
        sub_241C97000(&v68, v69);
        v35 = AssetInfo.seriesSortKey.getter(v33, v34);
        if (v36)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        v59 = v37;
        v38 = v66;
        v39 = v67;
        sub_241C97000(v65, v66);
        v40 = AssetInfo.seriesSortKey.getter(v38, v39);
        LOBYTE(v39) = v41;
        v42 = v13;
        v43 = v11;
        v44 = *v60;
        (*v60)(v62, v14);
        v44(v71, v14);
        v11 = v43;
        v13 = v42;
        if (v39)
        {
          v45 = 0;
        }

        else
        {
          v45 = v40;
        }

        v46 = v45 < v59;
      }

      else
      {
        v47 = sub_241CF8D48();
        v48 = v30;
        v46 = v47;
        v49 = *v60;
        (*v60)(v48, v14);
        v49(v32, v14);
      }

      sub_241C8EEE8(v65);
      result = sub_241C8EEE8(&v68);
      v50 = v63;
      if (!v46)
      {
LABEL_4:
        a3 = v57 + 1;
        v21 = v56 + 40;
        v22 = v55 - 1;
        if (v57 + 1 == v54)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      sub_241C914E4(v24, &v68);
      v51 = *(v24 - 24);
      *v24 = *(v24 - 40);
      *(v24 + 16) = v51;
      *(v24 + 32) = *(v24 - 8);
      result = sub_241C914E4(&v68, v24 - 40);
      v24 -= 40;
      v52 = __CFADD__(v50, 1);
      v23 = v50 + 1;
      if (v52)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C97DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v26 = a3;
    v18 = v6;
    v19 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v23);
      sub_241C96F9C(v5 - 40, v20);
      v7 = v24;
      v8 = v25;
      sub_241C97000(&v23, v24);
      AssetInfo.sequenceNumber.getter(v7, v8);
      if ((v9 & 0x100000000) != 0)
      {
        MEMORY[0x245CFDCB0](0);
      }

      v11 = v21;
      v10 = v22;
      sub_241C97000(v20, v21);
      v12 = AssetInfo.sequenceNumber.getter(v11, v10);
      if ((v13 & 0x100000000) != 0)
      {
        v12 = MEMORY[0x245CFDCB0](0);
      }

      v14 = MEMORY[0x245CFDCD0](v12);
      sub_241C8EEE8(v20);
      result = sub_241C8EEE8(&v23);
      if ((v14 & 1) == 0)
      {
LABEL_4:
        a3 = v26 + 1;
        v5 = v19 + 40;
        v6 = v18 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v23);
      v15 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v15;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v23, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C97F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v60 = &v52[-v11];
  v12 = sub_241CF8D88();
  v13 = MEMORY[0x28223BE20](v12);
  v61 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v13);
  v70 = &v52[-v17];
  v53 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v63 = (v16 + 48);
    v57 = (v16 + 8);
    v58 = (v16 + 32);
    v19 = v18 + 40 * a3;
    v20 = a1 - a3;
    v59 = v18;
LABEL_5:
    v55 = v19;
    v56 = a3;
    v54 = v20;
    v21 = v19;
    while (1)
    {
      sub_241C96F9C(v21, &v67);
      sub_241C96F9C(v21 - 40, v64);
      v22 = v68;
      v23 = v69;
      sub_241C97000(&v67, v68);
      AssetInfo.seriesSortKey.getter(v22, v23);
      if (v24 & 1) != 0 && (v25 = v65, v26 = v66, sub_241C97000(v64, v65), AssetInfo.seriesSortKey.getter(v25, v26), (v27))
      {
        v28 = v68;
        v29 = v69;
        sub_241C97000(&v67, v68);
        v30 = v60;
        AssetInfo.releaseDate.getter(v28, v29, v60);
        v31 = *v63;
        if ((*v63)(v30, 1, v12) == 1)
        {
          sub_241CF8D28();
          if (v31(v30, 1, v12) != 1)
          {
            sub_241CA0DE4(v30);
          }
        }

        else
        {
          (*v58)(v70, v30, v12);
        }

        v42 = v65;
        v43 = v66;
        sub_241C97000(v64, v65);
        v44 = v62;
        AssetInfo.releaseDate.getter(v42, v43, v62);
        v45 = v44;
        if (v31(v44, 1, v12) == 1)
        {
          v46 = v61;
          sub_241CF8D28();
          v47 = v12;
          if (v31(v45, 1, v12) != 1)
          {
            sub_241CA0DE4(v45);
          }
        }

        else
        {
          v46 = v61;
          (*v58)(v61, v45, v12);
          v47 = v12;
        }

        v48 = v70;
        v41 = sub_241CF8D48();
        v49 = *v57;
        (*v57)(v46, v47);
        v49(v48, v47);
        v18 = v59;
        v12 = v47;
      }

      else
      {
        v32 = v68;
        v33 = v69;
        sub_241C97000(&v67, v68);
        v34 = AssetInfo.seriesSortKey.getter(v32, v33);
        if (v35)
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        v37 = v65;
        v38 = v66;
        sub_241C97000(v64, v65);
        v39 = AssetInfo.seriesSortKey.getter(v37, v38) < v36;
        v41 = v39 & ~v40;
      }

      sub_241C8EEE8(v64);
      result = sub_241C8EEE8(&v67);
      if ((v41 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v19 = v55 + 40;
        v20 = v54 - 1;
        if (v56 + 1 == v53)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_241C914E4(v21, &v67);
      v50 = *(v21 - 24);
      *v21 = *(v21 - 40);
      *(v21 + 16) = v50;
      *(v21 + 32) = *(v21 - 8);
      result = sub_241C914E4(&v67, v21 - 40);
      v21 -= 40;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C98438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v33 = a3;
    v25 = v6;
    v26 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v30);
      sub_241C96F9C(v5 - 40, v27);
      v7 = v31;
      v8 = v32;
      sub_241C97000(&v30, v31);
      v9 = AssetInfo.sequenceNumber.getter(v7, v8);
      if ((v11 & 0x100000000) != 0)
      {
        v12 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v12 = v9;
      }

      v13 = v10;
      v14 = v11;
      v16 = v28;
      v15 = v29;
      sub_241C97000(v27, v28);
      v17 = AssetInfo.sequenceNumber.getter(v16, v15);
      if ((v19 & 0x100000000) != 0)
      {
        v20 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v20 = v17;
      }

      v21 = MEMORY[0x245CFDCD0](v12, v13, v14, v20, v18, v19);
      sub_241C8EEE8(v27);
      result = sub_241C8EEE8(&v30);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v5 = v26 + 40;
        v6 = v25 - 1;
        if (v33 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v30);
      v22 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v22;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v30, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C985E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v54 - v11;
  v12 = sub_241CF8D88();
  v13 = MEMORY[0x28223BE20](v12);
  v61 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v64 = &v54 - v17;
  v55 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = (v16 + 48);
    v59 = (v16 + 8);
    v60 = (v16 + 32);
    v71 = v18;
    v20 = v18 + 40 * a3;
    v21 = a1 - a3;
LABEL_5:
    v57 = v20;
    v58 = a3;
    v56 = v21;
    v22 = v20;
    while (1)
    {
      sub_241C96F9C(v22, &v68);
      sub_241C96F9C(v22 - 40, v65);
      v23 = v69;
      v24 = v70;
      sub_241C97000(&v68, v69);
      AssetInfo.seriesSortKey.getter(v23, v24);
      if (v25 & 1) != 0 && (v26 = v66, v27 = v67, sub_241C97000(v65, v66), AssetInfo.seriesSortKey.getter(v26, v27), (v28))
      {
        v29 = v69;
        v30 = v70;
        sub_241C97000(&v68, v69);
        v31 = v62;
        AssetInfo.releaseDate.getter(v29, v30, v62);
        v32 = v31;
        v33 = *v19;
        if ((*v19)(v32, 1, v12) == 1)
        {
          sub_241CF8D28();
          if (v33(v32, 1, v12) != 1)
          {
            sub_241CA0DE4(v32);
          }
        }

        else
        {
          (*v60)(v64, v32, v12);
        }

        v45 = v66;
        v46 = v67;
        sub_241C97000(v65, v66);
        v47 = v63;
        AssetInfo.releaseDate.getter(v45, v46, v63);
        if (v33(v47, 1, v12) == 1)
        {
          v48 = v61;
          sub_241CF8D28();
          if (v33(v47, 1, v12) != 1)
          {
            sub_241CA0DE4(v47);
          }
        }

        else
        {
          v48 = v61;
          (*v60)(v61, v47, v12);
        }

        v49 = v64;
        v44 = sub_241CF8D58();
        v50 = v48;
        v51 = *v59;
        (*v59)(v50, v12);
        v51(v49, v12);
      }

      else
      {
        v34 = v69;
        v35 = v70;
        sub_241C97000(&v68, v69);
        v36 = AssetInfo.seriesSortKey.getter(v34, v35);
        v38 = v37;
        v39 = v66;
        v40 = v67;
        sub_241C97000(v65, v66);
        v41 = AssetInfo.seriesSortKey.getter(v39, v40);
        v43 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v42 & 1) == 0)
        {
          v43 = v41;
        }

        v44 = (v36 < v43) & ~v38;
      }

      sub_241C8EEE8(v65);
      result = sub_241C8EEE8(&v68);
      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v58 + 1;
        v20 = v57 + 40;
        v21 = v56 - 1;
        if (v58 + 1 == v55)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v71)
      {
        break;
      }

      sub_241C914E4(v22, &v68);
      v52 = *(v22 - 24);
      *v22 = *(v22 - 40);
      *(v22 + 16) = v52;
      *(v22 + 32) = *(v22 - 8);
      result = sub_241C914E4(&v68, v22 - 40);
      v22 -= 40;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C98A74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v103 = result;
    while (1)
    {
      if ((v9 + 1) >= v8)
      {
        v26 = (v9 + 1);
      }

      else
      {
        v112 = v8;
        v106 = v10;
        v11 = *v6;
        sub_241C96F9C(*v6 + 40 * (v9 + 1), &v118);
        v12 = 40 * v9;
        v13 = v11 + 40 * v9;
        sub_241C96F9C(v13, v115);
        v14 = v9;
        v15 = v119;
        v16 = v120;
        sub_241C97000(&v118, v119);
        AssetInfo.title.getter(v15, v16);
        v17 = v116;
        v18 = v117;
        sub_241C97000(v115, v116);
        AssetInfo.title.getter(v17, v18);
        sub_241C8DFF0();
        v109 = sub_241CF95D8();

        sub_241C8EEE8(v115);
        result = sub_241C8EEE8(&v118);
        v104 = v14;
        v19 = v14 + 2;
        v20 = v13 + 80;
        while (v112 != v19)
        {
          sub_241C96F9C(v20, &v118);
          sub_241C96F9C(v20 - 40, v115);
          v21 = v119;
          v22 = v120;
          sub_241C97000(&v118, v119);
          AssetInfo.title.getter(v21, v22);
          v23 = v116;
          v24 = v117;
          sub_241C97000(v115, v116);
          AssetInfo.title.getter(v23, v24);
          v25 = sub_241CF95D8();

          sub_241C8EEE8(v115);
          result = sub_241C8EEE8(&v118);
          ++v19;
          v20 += 40;
          if ((v109 == -1) == (v25 != -1))
          {
            v26 = (v19 - 1);
            goto LABEL_11;
          }
        }

        v26 = v112;
LABEL_11:
        v6 = a3;
        v9 = v104;
        v7 = v103;
        if (v109 == -1)
        {
          if (v26 < v104)
          {
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
            return result;
          }

          if (v104 < v26)
          {
            v27 = v26;
            v28 = 40 * v26 - 40;
            v113 = v26;
            v29 = v104;
            do
            {
              if (v29 != --v27)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v30 = v34 + v12;
                v31 = v34 + v28;
                sub_241C914E4((v34 + v12), &v118);
                v32 = *(v31 + 32);
                v33 = *(v31 + 16);
                *v30 = *v31;
                *(v30 + 16) = v33;
                *(v30 + 32) = v32;
                result = sub_241C914E4(&v118, v31);
              }

              ++v29;
              v28 -= 40;
              v12 += 40;
            }

            while (v29 < v27);
            v10 = v106;
            v7 = v103;
            v26 = v113;
          }
        }
      }

      v35 = v6[1];
      if (v26 >= v35)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v26, v9))
      {
        goto LABEL_119;
      }

      if (v26 - v9 >= a4)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (&v9[a4] >= v35)
      {
        v36 = v6[1];
      }

      else
      {
        v36 = &v9[a4];
      }

      if (v36 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v26 == v36)
      {
LABEL_30:
        v37 = v26;
        if (v26 < v9)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v105 = v9;
        v107 = v10;
        v101 = v5;
        v84 = *v6;
        v85 = v84 + 40 * v26;
        v111 = v36;
        v114 = v26;
        v86 = &v9[-v26];
        do
        {
          v87 = v86;
          v88 = v85;
          do
          {
            sub_241C96F9C(v88, &v118);
            sub_241C96F9C(v88 - 40, v115);
            v89 = v119;
            v90 = v120;
            sub_241C97000(&v118, v119);
            AssetInfo.title.getter(v89, v90);
            v91 = v116;
            v92 = v117;
            sub_241C97000(v115, v116);
            AssetInfo.title.getter(v91, v92);
            sub_241C8DFF0();
            v93 = sub_241CF95D8();

            sub_241C8EEE8(v115);
            result = sub_241C8EEE8(&v118);
            if (v93 != -1)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_124;
            }

            sub_241C914E4(v88, &v118);
            v94 = *(v88 - 24);
            *v88 = *(v88 - 40);
            *(v88 + 16) = v94;
            *(v88 + 32) = *(v88 - 8);
            sub_241C914E4(&v118, v88 - 40);
            v88 -= 40;
          }

          while (!__CFADD__(v87++, 1));
          v37 = v111;
          v85 += 40;
          --v86;
          ++v114;
        }

        while (v114 != v111);
        v5 = v101;
        v10 = v107;
        v6 = a3;
        v7 = v103;
        v9 = v105;
        if (v111 < v105)
        {
          goto LABEL_118;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_241CBFB88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v39 = *(v10 + 2);
      v38 = *(v10 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_241CBFB88((v38 > 1), v39 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v40;
      v41 = &v10[16 * v39];
      *(v41 + 4) = v9;
      *(v41 + 5) = v37;
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v110 = v37;
      if (v39)
      {
        while (1)
        {
          v42 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_50:
            if (v46)
            {
              goto LABEL_107;
            }

            v59 = &v10[16 * v40];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_110;
            }

            v65 = &v10[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_114;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v40 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v69 = &v10[16 * v40];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_64:
          if (v64)
          {
            goto LABEL_109;
          }

          v72 = &v10[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_71:
          v80 = v42 - 1;
          if (v42 - 1 >= v40)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_121;
          }

          if (!*v6)
          {
            goto LABEL_125;
          }

          v81 = *&v10[16 * v80 + 32];
          v82 = *&v10[16 * v42 + 40];
          sub_241C9DBE4((*v6 + 40 * v81), (*v6 + 40 * *&v10[16 * v42 + 32]), *v6 + 40 * v82, v9);
          if (v5)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_241CDE470(v10);
          }

          if (v80 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v83 = &v10[16 * v80];
          *(v83 + 4) = v81;
          *(v83 + 5) = v82;
          v121 = v10;
          result = sub_241CDE3E4(v42);
          v10 = v121;
          v40 = *(v121 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v10[16 * v40 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_105;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_106;
        }

        v54 = &v10[16 * v40];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_108;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v58 >= v50)
        {
          v76 = &v10[16 * v42 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_115;
          }

          if (v45 < v79)
          {
            v42 = v40 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v110;
      if (v110 >= v8)
      {
        goto LABEL_91;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_91:
  v7 = *v7;
  if (!v7)
  {
    goto LABEL_129;
  }

  v9 = v10;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_241CDE470(v9);
    v9 = result;
  }

  v121 = v9;
  v96 = *(v9 + 2);
  if (v96 >= 2)
  {
    while (1)
    {
      v97 = *v6;
      if (!*v6)
      {
        goto LABEL_126;
      }

      v6 = (v96 - 1);
      v98 = *&v9[16 * v96];
      v99 = *&v9[16 * v96 + 24];
      sub_241C9DBE4((v97 + 40 * v98), (v97 + 40 * *&v9[16 * v96 + 16]), v97 + 40 * v99, v7);
      if (v5)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_241CDE470(v9);
      }

      if (v96 - 2 >= *(v9 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v9[16 * v96];
      *v100 = v98;
      *(v100 + 1) = v99;
      v121 = v9;
      result = sub_241CDE3E4(v6);
      v9 = v121;
      v96 = *(v121 + 2);
      v6 = a3;
      if (v96 <= 1)
      {
      }
    }
  }
}

uint64_t sub_241C992C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v156 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v162 = &v156 - v16;
  MEMORY[0x28223BE20](v15);
  v164 = (&v156 - v17);
  v18 = sub_241CF8D88();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v176 = &v156 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v161 = &v156 - v23;
  result = MEMORY[0x28223BE20](v22);
  v165 = &v156 - v27;
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_127:
    a4 = *v160;
    if (!*v160)
    {
      goto LABEL_167;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_129;
  }

  v28 = a3[1];
  v170 = v26;
  v171 = v14;
  v157 = a4;
  v29 = 0;
  v30 = (v25 + 48);
  v173 = (v25 + 8);
  v174 = (v25 + 32);
  v31 = MEMORY[0x277D84F90];
  v163 = a3;
  v172 = v11;
  v177 = (v25 + 48);
  v32 = v28;
  while (1)
  {
    if (v29 + 1 >= v32)
    {
      v32 = v29 + 1;
    }

    else
    {
      v33 = *a3;
      sub_241C96F9C(*a3 + 40 * (v29 + 1), &v182);
      sub_241C96F9C(v33 + 40 * v29, v179);
      LODWORD(v178) = sub_241C966B4(&v182, v179);
      if (v5)
      {
        sub_241C8EEE8(v179);
        sub_241C8EEE8(&v182);
      }

      v158 = 0;
      sub_241C8EEE8(v179);
      result = sub_241C8EEE8(&v182);
      v34 = v29;
      v35 = v29 + 2;
      v159 = v34;
      v5 = 40 * v34;
      a4 = v33 + 40 * v34 + 80;
      a3 = v164;
      v175 = v31;
      v169 = v32;
      while (v32 != v35)
      {
        sub_241C96F9C(a4, &v182);
        sub_241C96F9C(a4 - 40, v179);
        v47 = v183;
        v48 = v184;
        sub_241C97000(&v182, v183);
        AssetInfo.seriesSortKey.getter(v47, v48);
        if (v49 & 1) != 0 && (v50 = v180, v51 = v181, sub_241C97000(v179, v180), AssetInfo.seriesSortKey.getter(v50, v51), (v52))
        {
          v53 = v183;
          v54 = v184;
          sub_241C97000(&v182, v183);
          AssetInfo.releaseDate.getter(v53, v54, a3);
          v55 = *v30;
          if (v55(a3, 1, v18) == 1)
          {
            sub_241CF8D28();
            if (v55(a3, 1, v18) != 1)
            {
              sub_241CA0DE4(a3);
            }
          }

          else
          {
            (*v174)(v165, a3, v18);
          }

          v56 = v180;
          v57 = v181;
          sub_241C97000(v179, v180);
          v58 = v162;
          AssetInfo.releaseDate.getter(v56, v57, v162);
          if (v55(v58, 1, v18) == 1)
          {
            v59 = v161;
            sub_241CF8D28();
            if (v55(v58, 1, v18) != 1)
            {
              sub_241CA0DE4(v58);
            }
          }

          else
          {
            v59 = v161;
            (*v174)(v161, v58, v18);
          }

          v60 = v165;
          v46 = sub_241CF8D58();
          v61 = *v173;
          (*v173)(v59, v18);
          v61(v60, v18);
          a3 = v164;
          v31 = v175;
        }

        else
        {
          v36 = v183;
          v37 = v184;
          sub_241C97000(&v182, v183);
          v38 = AssetInfo.seriesSortKey.getter(v36, v37);
          if (v39)
          {
            v40 = 0;
          }

          else
          {
            v40 = v38;
          }

          v41 = v180;
          v42 = v181;
          sub_241C97000(v179, v180);
          v43 = AssetInfo.seriesSortKey.getter(v41, v42);
          if (v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = v43;
          }

          v46 = v40 < v45;
        }

        sub_241C8EEE8(v179);
        result = sub_241C8EEE8(&v182);
        ++v35;
        a4 += 40;
        v30 = v177;
        v32 = v169;
        if ((v178 ^ v46))
        {
          v32 = v35 - 1;
          break;
        }
      }

      v29 = v159;
      if ((v178 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v32 < v159)
      {
        goto LABEL_160;
      }

      if (v159 < v32)
      {
        v62 = v32;
        v63 = 40 * v32 - 40;
        v64 = v159;
        v169 = v62;
        v65 = v62;
        do
        {
          if (v64 != --v65)
          {
            v66 = *v163;
            if (!*v163)
            {
              goto LABEL_164;
            }

            a4 = v66 + v5;
            v67 = v66 + v63;
            sub_241C914E4((v66 + v5), &v182);
            v68 = *(v67 + 32);
            v69 = *(v67 + 16);
            *a4 = *v67;
            *(a4 + 16) = v69;
            *(a4 + 32) = v68;
            result = sub_241C914E4(&v182, v67);
          }

          ++v64;
          v63 -= 40;
          v5 += 40;
        }

        while (v64 < v65);
        v5 = v158;
        a3 = v163;
        v30 = v177;
        v29 = v159;
        v32 = v169;
      }

      else
      {
LABEL_37:
        v5 = v158;
        a3 = v163;
      }
    }

    v70 = a3[1];
    if (v32 < v70)
    {
      if (__OFSUB__(v32, v29))
      {
        goto LABEL_157;
      }

      if (v32 - v29 < v157)
      {
        if (__OFADD__(v29, v157))
        {
          goto LABEL_158;
        }

        if (v29 + v157 >= v70)
        {
          a4 = a3[1];
        }

        else
        {
          a4 = v29 + v157;
        }

        if (a4 < v29)
        {
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          result = sub_241CDE470(v31);
          v31 = result;
LABEL_129:
          v185 = v31;
          v152 = *(v31 + 2);
          if (v152 >= 2)
          {
            while (*a3)
            {
              v153 = *&v31[16 * v152];
              v154 = *&v31[16 * v152 + 24];
              sub_241C9DFD4((*a3 + 40 * v153), (*a3 + 40 * *&v31[16 * v152 + 16]), *a3 + 40 * v154, a4);
              if (v5)
              {
              }

              if (v154 < v153)
              {
                goto LABEL_154;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_241CDE470(v31);
              }

              if (v152 - 2 >= *(v31 + 2))
              {
                goto LABEL_155;
              }

              v155 = &v31[16 * v152];
              *v155 = v153;
              *(v155 + 1) = v154;
              v185 = v31;
              result = sub_241CDE3E4(v152 - 1);
              v31 = v185;
              v152 = *(v185 + 2);
              if (v152 <= 1)
              {
              }
            }

            goto LABEL_165;
          }
        }

        if (v32 != a4)
        {
          break;
        }
      }
    }

    a4 = v32;
    if (v32 < v29)
    {
      goto LABEL_156;
    }

LABEL_49:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v72 = *(v31 + 2);
    v71 = *(v31 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      result = sub_241CBFB88((v71 > 1), v72 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v73;
    v74 = &v31[16 * v72];
    *(v74 + 4) = v29;
    *(v74 + 5) = a4;
    v166 = a4;
    a4 = *v160;
    if (!*v160)
    {
      goto LABEL_166;
    }

    if (v72)
    {
      while (1)
      {
        v75 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v76 = *(v31 + 4);
          v77 = *(v31 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_68:
          if (v79)
          {
            goto LABEL_145;
          }

          v92 = &v31[16 * v73];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_148;
          }

          v98 = &v31[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_151;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_152;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v73 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v102 = &v31[16 * v73];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_82:
        if (v97)
        {
          goto LABEL_147;
        }

        v105 = &v31[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_150;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_89:
        v113 = v75 - 1;
        if (v75 - 1 >= v73)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*a3)
        {
          goto LABEL_163;
        }

        v114 = *&v31[16 * v113 + 32];
        v115 = *&v31[16 * v75 + 40];
        sub_241C9DFD4((*a3 + 40 * v114), (*a3 + 40 * *&v31[16 * v75 + 32]), *a3 + 40 * v115, a4);
        if (v5)
        {
        }

        if (v115 < v114)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_241CDE470(v31);
        }

        if (v113 >= *(v31 + 2))
        {
          goto LABEL_142;
        }

        v116 = &v31[16 * v113];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v185 = v31;
        result = sub_241CDE3E4(v75);
        v31 = v185;
        v73 = *(v185 + 2);
        v30 = v177;
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v31[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_143;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_144;
      }

      v87 = &v31[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_146;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_149;
      }

      if (v91 >= v83)
      {
        v109 = &v31[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_153;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v32 = a3[1];
    v29 = v166;
    if (v166 >= v32)
    {
      goto LABEL_127;
    }
  }

  v158 = v5;
  v178 = *a3;
  v117 = v178 + 40 * v32;
  v159 = v29;
  v118 = v29 - v32;
  v175 = v31;
  v166 = a4;
LABEL_100:
  v169 = v32;
  v167 = v118;
  v168 = v117;
  v119 = v117;
  while (1)
  {
    sub_241C96F9C(v119, &v182);
    sub_241C96F9C(v119 - 40, v179);
    v120 = v183;
    v121 = v184;
    sub_241C97000(&v182, v183);
    AssetInfo.seriesSortKey.getter(v120, v121);
    if (v122 & 1) != 0 && (v123 = v180, v124 = v181, sub_241C97000(v179, v180), AssetInfo.seriesSortKey.getter(v123, v124), (v125))
    {
      v126 = v183;
      v127 = v184;
      sub_241C97000(&v182, v183);
      v128 = v171;
      AssetInfo.releaseDate.getter(v126, v127, v171);
      v129 = *v30;
      if ((*v30)(v128, 1, v18) == 1)
      {
        sub_241CF8D28();
        if (v129(v128, 1, v18) != 1)
        {
          sub_241CA0DE4(v128);
        }
      }

      else
      {
        (*v174)(v176, v128, v18);
      }

      v141 = v180;
      v142 = v181;
      sub_241C97000(v179, v180);
      v143 = v172;
      AssetInfo.releaseDate.getter(v141, v142, v172);
      v144 = v143;
      if (v129(v143, 1, v18) == 1)
      {
        v145 = v170;
        sub_241CF8D28();
        v146 = v129(v143, 1, v18);
        v147 = v18;
        if (v146 != 1)
        {
          sub_241CA0DE4(v144);
        }
      }

      else
      {
        v145 = v170;
        (*v174)(v170, v143, v18);
        v147 = v18;
      }

      v148 = v176;
      v140 = sub_241CF8D58();
      v149 = *v173;
      (*v173)(v145, v147);
      v149(v148, v147);
      v18 = v147;
      v31 = v175;
      v30 = v177;
    }

    else
    {
      v130 = v183;
      v131 = v184;
      sub_241C97000(&v182, v183);
      v132 = AssetInfo.seriesSortKey.getter(v130, v131);
      if (v133)
      {
        v134 = 0;
      }

      else
      {
        v134 = v132;
      }

      v135 = v180;
      v136 = v181;
      sub_241C97000(v179, v180);
      v137 = AssetInfo.seriesSortKey.getter(v135, v136);
      if (v138)
      {
        v139 = 0;
      }

      else
      {
        v139 = v137;
      }

      v140 = v134 < v139;
    }

    sub_241C8EEE8(v179);
    result = sub_241C8EEE8(&v182);
    if ((v140 & 1) == 0)
    {
LABEL_99:
      v32 = v169 + 1;
      v117 = v168 + 40;
      v118 = v167 - 1;
      a4 = v166;
      if (v169 + 1 != v166)
      {
        goto LABEL_100;
      }

      v5 = v158;
      a3 = v163;
      v29 = v159;
      if (v166 < v159)
      {
        goto LABEL_156;
      }

      goto LABEL_49;
    }

    if (!v178)
    {
      break;
    }

    sub_241C914E4(v119, &v182);
    v150 = *(v119 - 24);
    *v119 = *(v119 - 40);
    *(v119 + 16) = v150;
    *(v119 + 32) = *(v119 - 8);
    sub_241C914E4(&v182, v119 - 40);
    v119 -= 40;
    if (__CFADD__(v118++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_241C9A0A8(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v166 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v158 = &v147 - v15;
  MEMORY[0x28223BE20](v14);
  v157 = &v147 - v16;
  v171 = sub_241CF8D88();
  v17 = MEMORY[0x28223BE20](v171);
  v165 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v170 = &v147 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v21);
  v161 = &v147 - v25;
  v160 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_128:
    v30 = *v150;
    if (!*v150)
    {
      goto LABEL_170;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_164;
    }

    result = a4;
LABEL_131:
    v178 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v160)
      {
        v143 = *(result + 16 * a4);
        v144 = result;
        v145 = *(result + 16 * (a4 - 1) + 40);
        sub_241C9E924((*v160 + 40 * v143), (*v160 + 40 * *(result + 16 * (a4 - 1) + 32)), *v160 + 40 * v145, v30);
        if (v5)
        {
        }

        if (v145 < v143)
        {
          goto LABEL_157;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_241CDE470(v144);
        }

        if (a4 - 2 >= *(v144 + 2))
        {
          goto LABEL_158;
        }

        v146 = &v144[16 * a4];
        *v146 = v143;
        *(v146 + 1) = v145;
        v178 = v144;
        sub_241CDE3E4(a4 - 1);
        result = v178;
        a4 = *(v178 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_168;
    }
  }

  v148 = a4;
  v27 = 0;
  v28 = (v23 + 48);
  v167 = (v23 + 8);
  v168 = (v23 + 32);
  v29 = MEMORY[0x277D84F90];
  v162 = v11;
  v159 = v24;
  v169 = (v23 + 48);
  while (1)
  {
    v30 = v27;
    v153 = v29;
    v151 = v27;
    if (v27 + 1 >= v26)
    {
      v26 = v27 + 1;
      goto LABEL_38;
    }

    v31 = *v160;
    a4 = 40;
    sub_241C96F9C(*v160 + 40 * (v27 + 1), &v175);
    sub_241C96F9C(v31 + 40 * v27, v172);
    LODWORD(v164) = sub_241C96318(&v175, v172);
    if (v5)
    {
      sub_241C8EEE8(v172);
      sub_241C8EEE8(&v175);
    }

    v149 = 0;
    sub_241C8EEE8(v172);
    result = sub_241C8EEE8(&v175);
    v32 = v27 + 2;
    v163 = 40 * v27;
    v33 = v31 + 40 * v27 + 80;
    while (v26 != v32)
    {
      sub_241C96F9C(v33, &v175);
      sub_241C96F9C(v33 - 40, v172);
      v36 = v176;
      v37 = v177;
      sub_241C97000(&v175, v176);
      v38 = v157;
      AssetInfo.releaseDate.getter(v36, v37, v157);
      v39 = *v28;
      if (v39(v38, 1, v171) == 1)
      {
        sub_241CF8D28();
        if (v39(v38, 1, v171) != 1)
        {
          sub_241CA0DE4(v38);
        }
      }

      else
      {
        (*v168)(v161, v38, v171);
      }

      v40 = v173;
      v41 = v174;
      sub_241C97000(v172, v173);
      v42 = v158;
      AssetInfo.releaseDate.getter(v40, v41, v158);
      if (v39(v42, 1, v171) == 1)
      {
        v43 = v159;
        sub_241CF8D28();
        if (v39(v42, 1, v171) != 1)
        {
          sub_241CA0DE4(v42);
        }
      }

      else
      {
        v43 = v159;
        (*v168)(v159, v42, v171);
      }

      v44 = v161;
      if (sub_241CF8D68())
      {
        v45 = v176;
        v46 = v177;
        sub_241C97000(&v175, v176);
        v47 = AssetInfo.seriesSortKey.getter(v45, v46);
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        v50 = v173;
        v51 = v174;
        sub_241C97000(v172, v173);
        v52 = AssetInfo.seriesSortKey.getter(v50, v51);
        LOBYTE(v51) = v53;
        v54 = *v167;
        v55 = v171;
        (*v167)(v159, v171);
        v54(v161, v55);
        if (v51)
        {
          v56 = 0;
        }

        else
        {
          v56 = v52;
        }

        a4 = v56 < v49;
      }

      else
      {
        a4 = sub_241CF8D48();
        v34 = *v167;
        v35 = v171;
        (*v167)(v43, v171);
        v34(v44, v35);
      }

      sub_241C8EEE8(v172);
      result = sub_241C8EEE8(&v175);
      ++v32;
      v33 += 40;
      v28 = v169;
      if ((v164 ^ a4))
      {
        v26 = v32 - 1;
        break;
      }
    }

    v5 = v149;
    v30 = v151;
    if (v164)
    {
      if (v26 < v151)
      {
        goto LABEL_163;
      }

      v11 = v162;
      if (v151 < v26)
      {
        v57 = 40 * v26 - 40;
        v58 = v26;
        v59 = v26;
        v60 = v151;
        v61 = v163;
        do
        {
          if (v60 != --v59)
          {
            v62 = *v160;
            if (!*v160)
            {
              goto LABEL_167;
            }

            v63 = v62 + v61;
            a4 = v62 + v57;
            sub_241C914E4((v62 + v61), &v175);
            v64 = *(a4 + 32);
            v65 = *(a4 + 16);
            *v63 = *a4;
            *(v63 + 16) = v65;
            *(v63 + 32) = v64;
            result = sub_241C914E4(&v175, a4);
            v30 = v151;
          }

          ++v60;
          v57 -= 40;
          v61 += 40;
        }

        while (v60 < v59);
        v28 = v169;
        v26 = v58;
      }
    }

    else
    {
      v11 = v162;
    }

LABEL_38:
    v66 = v160[1];
    if (v26 >= v66)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v26, v30))
    {
      goto LABEL_160;
    }

    if (v26 - v30 >= v148)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v30, v148))
    {
      goto LABEL_161;
    }

    if (&v30[v148] >= v66)
    {
      v67 = v160[1];
    }

    else
    {
      v67 = &v30[v148];
    }

    if (v67 < v30)
    {
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      result = sub_241CDE470(a4);
      goto LABEL_131;
    }

    if (v26 == v67)
    {
LABEL_47:
      v27 = v26;
      if (v26 < v30)
      {
        goto LABEL_159;
      }

      goto LABEL_48;
    }

    v149 = v5;
    v163 = *v160;
    v114 = v163 + 40 * v26;
    v115 = &v30[-v26];
    v152 = v67;
LABEL_100:
    v156 = v26;
    v154 = v115;
    v155 = v114;
LABEL_101:
    sub_241C96F9C(v114, &v175);
    sub_241C96F9C(v114 - 40, v172);
    v116 = v176;
    v117 = v177;
    sub_241C97000(&v175, v176);
    v118 = v166;
    AssetInfo.releaseDate.getter(v116, v117, v166);
    v119 = v118;
    v120 = *v169;
    if ((*v169)(v119, 1, v171) == 1)
    {
      sub_241CF8D28();
      if (v120(v119, 1, v171) != 1)
      {
        sub_241CA0DE4(v119);
      }
    }

    else
    {
      (*v168)(v170, v119, v171);
    }

    v121 = v173;
    v122 = v174;
    sub_241C97000(v172, v173);
    AssetInfo.releaseDate.getter(v121, v122, v11);
    if (v120(v11, 1, v171) == 1)
    {
      v123 = v165;
      sub_241CF8D28();
      if (v120(v11, 1, v171) != 1)
      {
        sub_241CA0DE4(v11);
      }
    }

    else
    {
      v123 = v165;
      (*v168)(v165, v11, v171);
    }

    if (sub_241CF8D68())
    {
      v124 = v176;
      v125 = v177;
      sub_241C97000(&v175, v176);
      v126 = AssetInfo.seriesSortKey.getter(v124, v125);
      v128 = (v127 & 1) != 0 ? 0 : v126;
      v164 = v128;
      v129 = v173;
      v130 = v174;
      sub_241C97000(v172, v173);
      v131 = AssetInfo.seriesSortKey.getter(v129, v130);
      LOBYTE(v130) = v132;
      v133 = *v167;
      v134 = v123;
      v135 = v170;
      v136 = v171;
      (*v167)(v134, v171);
      v133(v135, v136);
      v11 = v162;
      v137 = (v130 & 1) != 0 ? 0 : v131;
      a4 = v137 < v164;
    }

    else
    {
      v138 = v170;
      a4 = sub_241CF8D48();
      v139 = *v167;
      v140 = v171;
      (*v167)(v123, v171);
      v139(v138, v140);
    }

    sub_241C8EEE8(v172);
    result = sub_241C8EEE8(&v175);
    if (a4)
    {
      break;
    }

LABEL_99:
    v26 = v156 + 1;
    v114 = v155 + 40;
    v115 = v154 - 1;
    v27 = v152;
    if ((v156 + 1) != v152)
    {
      goto LABEL_100;
    }

    v5 = v149;
    v28 = v169;
    v30 = v151;
    if (v152 < v151)
    {
      goto LABEL_159;
    }

LABEL_48:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v153;
    }

    else
    {
      result = sub_241CBFB88(0, *(v153 + 2) + 1, 1, v153);
      v29 = result;
    }

    v69 = *(v29 + 2);
    v68 = *(v29 + 3);
    a4 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      result = sub_241CBFB88((v68 > 1), v69 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = a4;
    v70 = &v29[16 * v69];
    *(v70 + 4) = v30;
    *(v70 + 5) = v27;
    v30 = *v150;
    if (!*v150)
    {
      goto LABEL_169;
    }

    if (v69)
    {
      while (1)
      {
        v71 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v72 = *(v29 + 4);
          v73 = *(v29 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_67:
          if (v75)
          {
            goto LABEL_148;
          }

          v88 = &v29[16 * a4];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_151;
          }

          v94 = &v29[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_154;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_155;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = a4 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v98 = &v29[16 * a4];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_81:
        if (v93)
        {
          goto LABEL_150;
        }

        v101 = &v29[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_153;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_88:
        v109 = v71 - 1;
        if (v71 - 1 >= a4)
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*v160)
        {
          goto LABEL_166;
        }

        v110 = v29;
        a4 = *&v29[16 * v109 + 32];
        v111 = *&v29[16 * v71 + 40];
        sub_241C9E924((*v160 + 40 * a4), (*v160 + 40 * *&v29[16 * v71 + 32]), *v160 + 40 * v111, v30);
        if (v5)
        {
        }

        if (v111 < a4)
        {
          goto LABEL_144;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v112 = v110;
        }

        else
        {
          v112 = sub_241CDE470(v110);
        }

        v11 = v162;
        if (v109 >= *(v112 + 2))
        {
          goto LABEL_145;
        }

        v113 = &v112[16 * v109];
        *(v113 + 4) = a4;
        *(v113 + 5) = v111;
        v178 = v112;
        result = sub_241CDE3E4(v71);
        v29 = v178;
        a4 = *(v178 + 16);
        v28 = v169;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v29[16 * a4 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_146;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_147;
      }

      v83 = &v29[16 * a4];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_149;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_152;
      }

      if (v87 >= v79)
      {
        v105 = &v29[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_156;
        }

        if (v74 < v108)
        {
          v71 = a4 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v26 = v160[1];
    if (v27 >= v26)
    {
      goto LABEL_128;
    }
  }

  if (v163)
  {
    sub_241C914E4(v114, &v175);
    v141 = *(v114 - 24);
    *v114 = *(v114 - 40);
    *(v114 + 16) = v141;
    *(v114 + 32) = *(v114 - 8);
    sub_241C914E4(&v175, v114 - 40);
    v114 -= 40;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_99;
    }

    goto LABEL_101;
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_241C9AEC8(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_104:
    v8 = *v107;
    if (!*v107)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_139:
      result = sub_241CDE470(v4);
    }

    v100 = v6;
    v128 = result;
    v101 = *(result + 16);
    if (v101 >= 2)
    {
      v4 = 40;
      while (*a3)
      {
        v102 = *(result + 16 * v101);
        v103 = result;
        v6 = *(result + 16 * (v101 - 1) + 40);
        sub_241C9F2D8((*a3 + 40 * v102), (*a3 + 40 * *(result + 16 * (v101 - 1) + 32)), *a3 + 40 * v6, v8);
        if (v100)
        {
        }

        if (v6 < v102)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_241CDE470(v103);
        }

        if (v101 - 2 >= *(v103 + 2))
        {
          goto LABEL_133;
        }

        v104 = &v103[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v6;
        v128 = v103;
        sub_241CDE3E4(v101 - 1);
        result = v128;
        v101 = *(v128 + 16);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v110 = v9;
    if (v8 + 1 >= v7)
    {
      v17 = v8 + 1;
    }

    else
    {
      v11 = v6;
      v12 = *a3;
      sub_241C96F9C(*a3 + 40 * v10, v125);
      v108 = v8;
      sub_241C96F9C(v12 + 40 * v8, v122);
      v13 = v126;
      v14 = v127;
      sub_241C97000(v125, v126);
      v15 = AssetInfo.sequenceNumber.getter(v13, v14);
      if ((v16 & 0x100000000) != 0)
      {
        v4 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v4 = v15;
      }

      v18 = v123;
      v19 = v124;
      sub_241C97000(v122, v123);
      v20 = AssetInfo.sequenceNumber.getter(v18, v19);
      if ((v21 & 0x100000000) != 0)
      {
        v20 = MEMORY[0x245CFDCB0](0);
      }

      v113 = MEMORY[0x245CFDCD0](v20);
      sub_241C8EEE8(v122);
      result = sub_241C8EEE8(v125);
      v22 = v108 + 2;
      if (v108 + 2 >= v7)
      {
        v17 = v108 + 2;
        v6 = v11;
      }

      else
      {
        v23 = v12 + 40 * v108 + 40;
        v6 = v11;
        while (1)
        {
          v4 = v22;
          sub_241C96F9C(v23 + 40, &v119);
          sub_241C96F9C(v23, v116);
          v24 = v120;
          v25 = v121;
          sub_241C97000(&v119, v120);
          AssetInfo.sequenceNumber.getter(v24, v25);
          if ((v26 & 0x100000000) != 0)
          {
            MEMORY[0x245CFDCB0](0);
          }

          v27 = v117;
          v28 = v118;
          sub_241C97000(v116, v117);
          v29 = AssetInfo.sequenceNumber.getter(v27, v28);
          if ((v30 & 0x100000000) != 0)
          {
            v29 = MEMORY[0x245CFDCB0](0);
          }

          v31 = MEMORY[0x245CFDCD0](v29);
          sub_241C8EEE8(v116);
          result = sub_241C8EEE8(&v119);
          if ((v113 ^ v31))
          {
            break;
          }

          v22 = v4 + 1;
          v23 += 40;
          if (v7 == v4 + 1)
          {
            v10 = v4;
            v17 = v7;
            goto LABEL_22;
          }
        }

        v17 = v4;
        v10 = v4 - 1;
      }

LABEL_22:
      v8 = v108;
      if (v113)
      {
        if (v17 < v108)
        {
          goto LABEL_136;
        }

        if (v108 <= v10)
        {
          v32 = v108;
          v33 = v6;
          v4 = 40 * v17 - 40;
          v34 = 40 * v108;
          v35 = v17;
          do
          {
            if (v32 != --v35)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v36 = v40 + v34;
              v37 = v40 + v4;
              sub_241C914E4((v40 + v34), &v119);
              v38 = *(v37 + 32);
              v39 = *(v37 + 16);
              *v36 = *v37;
              *(v36 + 16) = v39;
              *(v36 + 32) = v38;
              result = sub_241C914E4(&v119, v37);
            }

            ++v32;
            v4 -= 40;
            v34 += 40;
          }

          while (v32 < v35);
          v6 = v33;
          v8 = v108;
        }
      }
    }

    v41 = a3[1];
    if (v17 < v41)
    {
      if (__OFSUB__(v17, v8))
      {
        goto LABEL_135;
      }

      if (v17 - v8 < a4)
      {
        v42 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_137;
        }

        if (v42 >= v41)
        {
          v42 = a3[1];
        }

        if (v42 < v8)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v17 != v42)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v17 < v8)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v110;
    }

    else
    {
      result = sub_241CBFB88(0, *(v110 + 16) + 1, 1, v110);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v54 = *(v9 + 24);
    v55 = v4 + 1;
    if (v4 >= v54 >> 1)
    {
      result = sub_241CBFB88((v54 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v55;
    v56 = v9 + 16 * v4;
    *(v56 + 32) = v8;
    *(v56 + 40) = v17;
    v57 = *v107;
    if (!*v107)
    {
      goto LABEL_144;
    }

    v8 = v17;
    if (v4)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v9 + 32);
          v60 = *(v9 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_72:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = (v9 + 16 * v55);
          v77 = *v75;
          v76 = v75[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = (v9 + 32 + 16 * v58);
          v83 = *v81;
          v82 = v81[1];
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v85 = (v9 + 16 * v55);
        v87 = *v85;
        v86 = v85[1];
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_86:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = v9 + 16 * v58;
        v90 = *(v88 + 32);
        v89 = *(v88 + 40);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_93:
        v4 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v96 = v9;
        v97 = *(v9 + 32 + 16 * v4);
        v98 = *(v9 + 32 + 16 * v58 + 8);
        sub_241C9F2D8((*a3 + 40 * v97), (*a3 + 40 * *(v9 + 32 + 16 * v58)), *a3 + 40 * v98, v57);
        if (v6)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_241CDE470(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_120;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v128 = v96;
        result = sub_241CDE3E4(v58);
        v9 = v128;
        v55 = *(v128 + 16);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = v9 + 32 + 16 * v55;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = (v9 + 16 * v55);
      v72 = *v70;
      v71 = v70[1];
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = (v9 + 32 + 16 * v58);
        v94 = *v92;
        v93 = v92[1];
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v105 = v6;
  v4 = *a3;
  v43 = *a3 + 40 * v17;
  v109 = v42;
  v44 = v8 - v17 + 1;
LABEL_42:
  v112 = v43;
  v114 = v17;
  v111 = v44;
  while (1)
  {
    sub_241C96F9C(v43, v125);
    sub_241C96F9C(v43 - 40, v122);
    v45 = v126;
    v46 = v127;
    sub_241C97000(v125, v126);
    AssetInfo.sequenceNumber.getter(v45, v46);
    if ((v47 & 0x100000000) != 0)
    {
      MEMORY[0x245CFDCB0](0);
    }

    v48 = v123;
    v49 = v124;
    sub_241C97000(v122, v123);
    v50 = AssetInfo.sequenceNumber.getter(v48, v49);
    if ((v51 & 0x100000000) != 0)
    {
      v50 = MEMORY[0x245CFDCB0](0);
    }

    v52 = MEMORY[0x245CFDCD0](v50);
    sub_241C8EEE8(v122);
    result = sub_241C8EEE8(v125);
    if ((v52 & 1) == 0)
    {
LABEL_41:
      ++v17;
      v43 = v112 + 40;
      v44 = v111 - 1;
      if (v114 + 1 != v109)
      {
        goto LABEL_42;
      }

      v17 = v109;
      v6 = v105;
      goto LABEL_52;
    }

    if (!v4)
    {
      break;
    }

    sub_241C914E4(v43, &v119);
    v53 = *(v43 - 24);
    *v43 = *(v43 - 40);
    *(v43 + 16) = v53;
    *(v43 + 32) = *(v43 - 8);
    sub_241C914E4(&v119, v43 - 40);
    if (!v44)
    {
      goto LABEL_41;
    }

    ++v44;
    v43 -= 40;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_241C9B73C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v158 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v154 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v160 = &v154 - v16;
  MEMORY[0x28223BE20](v15);
  v162 = (&v154 - v17);
  v18 = sub_241CF8D88();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v174 = &v154 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v159 = &v154 - v23;
  result = MEMORY[0x28223BE20](v22);
  v163 = &v154 - v27;
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_121:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_123;
  }

  v28 = a3[1];
  v168 = v26;
  v169 = v14;
  v155 = a4;
  v29 = 0;
  v30 = (v25 + 48);
  v171 = (v25 + 8);
  v172 = (v25 + 32);
  v31 = MEMORY[0x277D84F90];
  v161 = a3;
  v170 = v11;
  v175 = (v25 + 48);
  v32 = v28;
  while (1)
  {
    if (v29 + 1 >= v32)
    {
      v32 = v29 + 1;
    }

    else
    {
      v33 = *a3;
      sub_241C96F9C(*a3 + 40 * (v29 + 1), &v180);
      sub_241C96F9C(v33 + 40 * v29, v177);
      LODWORD(v176) = sub_241C95F74(&v180, v177);
      if (v5)
      {
        sub_241C8EEE8(v177);
        sub_241C8EEE8(&v180);
      }

      v156 = 0;
      sub_241C8EEE8(v177);
      result = sub_241C8EEE8(&v180);
      v34 = v29;
      v35 = v29 + 2;
      v157 = v34;
      v5 = 40 * v34;
      a4 = v33 + 40 * v34 + 80;
      a3 = v162;
      v173 = v31;
      v167 = v32;
      while (v32 != v35)
      {
        sub_241C96F9C(a4, &v180);
        sub_241C96F9C(a4 - 40, v177);
        v46 = v181;
        v47 = v182;
        sub_241C97000(&v180, v181);
        AssetInfo.seriesSortKey.getter(v46, v47);
        if (v48 & 1) != 0 && (v49 = v178, v50 = v179, sub_241C97000(v177, v178), AssetInfo.seriesSortKey.getter(v49, v50), (v51))
        {
          v52 = v181;
          v53 = v182;
          sub_241C97000(&v180, v181);
          AssetInfo.releaseDate.getter(v52, v53, a3);
          v54 = *v30;
          if (v54(a3, 1, v18) == 1)
          {
            sub_241CF8D28();
            if (v54(a3, 1, v18) != 1)
            {
              sub_241CA0DE4(a3);
            }
          }

          else
          {
            (*v172)(v163, a3, v18);
          }

          v55 = v178;
          v56 = v179;
          sub_241C97000(v177, v178);
          v57 = v160;
          AssetInfo.releaseDate.getter(v55, v56, v160);
          if (v54(v57, 1, v18) == 1)
          {
            v58 = v159;
            sub_241CF8D28();
            if (v54(v57, 1, v18) != 1)
            {
              sub_241CA0DE4(v57);
            }
          }

          else
          {
            v58 = v159;
            (*v172)(v159, v57, v18);
          }

          v59 = v163;
          v45 = sub_241CF8D48();
          v60 = *v171;
          (*v171)(v58, v18);
          v60(v59, v18);
          a3 = v162;
          v31 = v173;
        }

        else
        {
          v36 = v181;
          v37 = v182;
          sub_241C97000(&v180, v181);
          v38 = AssetInfo.seriesSortKey.getter(v36, v37);
          if (v39)
          {
            v40 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          v41 = v178;
          v42 = v179;
          sub_241C97000(v177, v178);
          v43 = AssetInfo.seriesSortKey.getter(v41, v42) < v40;
          v45 = v43 & ~v44;
        }

        sub_241C8EEE8(v177);
        result = sub_241C8EEE8(&v180);
        ++v35;
        a4 += 40;
        v30 = v175;
        v32 = v167;
        if ((v176 ^ v45))
        {
          v32 = v35 - 1;
          break;
        }
      }

      v29 = v157;
      if ((v176 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v32 < v157)
      {
        goto LABEL_154;
      }

      if (v157 < v32)
      {
        v61 = v32;
        v62 = 40 * v32 - 40;
        v63 = v157;
        v167 = v61;
        v64 = v61;
        do
        {
          if (v63 != --v64)
          {
            v65 = *v161;
            if (!*v161)
            {
              goto LABEL_158;
            }

            a4 = v65 + v5;
            v66 = v65 + v62;
            sub_241C914E4((v65 + v5), &v180);
            v67 = *(v66 + 32);
            v68 = *(v66 + 16);
            *a4 = *v66;
            *(a4 + 16) = v68;
            *(a4 + 32) = v67;
            result = sub_241C914E4(&v180, v66);
          }

          ++v63;
          v62 -= 40;
          v5 += 40;
        }

        while (v63 < v64);
        v5 = v156;
        a3 = v161;
        v30 = v175;
        v29 = v157;
        v32 = v167;
      }

      else
      {
LABEL_34:
        v5 = v156;
        a3 = v161;
      }
    }

    v69 = a3[1];
    if (v32 < v69)
    {
      if (__OFSUB__(v32, v29))
      {
        goto LABEL_151;
      }

      if (v32 - v29 < v155)
      {
        if (__OFADD__(v29, v155))
        {
          goto LABEL_152;
        }

        if (v29 + v155 >= v69)
        {
          a4 = a3[1];
        }

        else
        {
          a4 = v29 + v155;
        }

        if (a4 < v29)
        {
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          result = sub_241CDE470(v31);
          v31 = result;
LABEL_123:
          v183 = v31;
          v150 = *(v31 + 2);
          if (v150 >= 2)
          {
            while (*a3)
            {
              v151 = *&v31[16 * v150];
              v152 = *&v31[16 * v150 + 24];
              sub_241C9F6E4((*a3 + 40 * v151), (*a3 + 40 * *&v31[16 * v150 + 16]), *a3 + 40 * v152, a4);
              if (v5)
              {
              }

              if (v152 < v151)
              {
                goto LABEL_148;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_241CDE470(v31);
              }

              if (v150 - 2 >= *(v31 + 2))
              {
                goto LABEL_149;
              }

              v153 = &v31[16 * v150];
              *v153 = v151;
              *(v153 + 1) = v152;
              v183 = v31;
              result = sub_241CDE3E4(v150 - 1);
              v31 = v183;
              v150 = *(v183 + 2);
              if (v150 <= 1)
              {
              }
            }

            goto LABEL_159;
          }
        }

        if (v32 != a4)
        {
          break;
        }
      }
    }

    a4 = v32;
    if (v32 < v29)
    {
      goto LABEL_150;
    }

LABEL_46:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v71 = *(v31 + 2);
    v70 = *(v31 + 3);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      result = sub_241CBFB88((v70 > 1), v71 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v72;
    v73 = &v31[16 * v71];
    *(v73 + 4) = v29;
    *(v73 + 5) = a4;
    v164 = a4;
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_160;
    }

    if (v71)
    {
      while (1)
      {
        v74 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v75 = *(v31 + 4);
          v76 = *(v31 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_65:
          if (v78)
          {
            goto LABEL_139;
          }

          v91 = &v31[16 * v72];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_142;
          }

          v97 = &v31[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_146;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v72 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v101 = &v31[16 * v72];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_79:
        if (v96)
        {
          goto LABEL_141;
        }

        v104 = &v31[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_144;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_86:
        v112 = v74 - 1;
        if (v74 - 1 >= v72)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_157;
        }

        v113 = *&v31[16 * v112 + 32];
        v114 = *&v31[16 * v74 + 40];
        sub_241C9F6E4((*a3 + 40 * v113), (*a3 + 40 * *&v31[16 * v74 + 32]), *a3 + 40 * v114, a4);
        if (v5)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_241CDE470(v31);
        }

        if (v112 >= *(v31 + 2))
        {
          goto LABEL_136;
        }

        v115 = &v31[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v183 = v31;
        result = sub_241CDE3E4(v74);
        v31 = v183;
        v72 = *(v183 + 2);
        v30 = v175;
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v31[16 * v72 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_137;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_138;
      }

      v86 = &v31[16 * v72];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_140;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_143;
      }

      if (v90 >= v82)
      {
        v108 = &v31[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_147;
        }

        if (v77 < v111)
        {
          v74 = v72 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v32 = a3[1];
    v29 = v164;
    if (v164 >= v32)
    {
      goto LABEL_121;
    }
  }

  v156 = v5;
  v176 = *a3;
  v116 = v176 + 40 * v32;
  v157 = v29;
  v117 = v29 - v32;
  v173 = v31;
  v164 = a4;
LABEL_97:
  v167 = v32;
  v165 = v117;
  v166 = v116;
  v118 = v116;
  while (1)
  {
    sub_241C96F9C(v118, &v180);
    sub_241C96F9C(v118 - 40, v177);
    v119 = v181;
    v120 = v182;
    sub_241C97000(&v180, v181);
    AssetInfo.seriesSortKey.getter(v119, v120);
    if (v121 & 1) != 0 && (v122 = v178, v123 = v179, sub_241C97000(v177, v178), AssetInfo.seriesSortKey.getter(v122, v123), (v124))
    {
      v125 = v181;
      v126 = v182;
      sub_241C97000(&v180, v181);
      v127 = v169;
      AssetInfo.releaseDate.getter(v125, v126, v169);
      v128 = *v30;
      if ((*v30)(v127, 1, v18) == 1)
      {
        sub_241CF8D28();
        if (v128(v127, 1, v18) != 1)
        {
          sub_241CA0DE4(v127);
        }
      }

      else
      {
        (*v172)(v174, v127, v18);
      }

      v139 = v178;
      v140 = v179;
      sub_241C97000(v177, v178);
      v141 = v170;
      AssetInfo.releaseDate.getter(v139, v140, v170);
      v142 = v141;
      if (v128(v141, 1, v18) == 1)
      {
        v143 = v168;
        sub_241CF8D28();
        v144 = v128(v141, 1, v18);
        v145 = v18;
        if (v144 != 1)
        {
          sub_241CA0DE4(v142);
        }
      }

      else
      {
        v143 = v168;
        (*v172)(v168, v141, v18);
        v145 = v18;
      }

      v146 = v174;
      v138 = sub_241CF8D48();
      v147 = *v171;
      (*v171)(v143, v145);
      v147(v146, v145);
      v18 = v145;
      v31 = v173;
      v30 = v175;
    }

    else
    {
      v129 = v181;
      v130 = v182;
      sub_241C97000(&v180, v181);
      v131 = AssetInfo.seriesSortKey.getter(v129, v130);
      if (v132)
      {
        v133 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v133 = v131;
      }

      v134 = v178;
      v135 = v179;
      sub_241C97000(v177, v178);
      v136 = AssetInfo.seriesSortKey.getter(v134, v135) < v133;
      v138 = v136 & ~v137;
    }

    sub_241C8EEE8(v177);
    result = sub_241C8EEE8(&v180);
    if ((v138 & 1) == 0)
    {
LABEL_96:
      v32 = v167 + 1;
      v116 = v166 + 40;
      v117 = v165 - 1;
      a4 = v164;
      if (v167 + 1 != v164)
      {
        goto LABEL_97;
      }

      v5 = v156;
      a3 = v161;
      v29 = v157;
      if (v164 < v157)
      {
        goto LABEL_150;
      }

      goto LABEL_46;
    }

    if (!v176)
    {
      break;
    }

    sub_241C914E4(v118, &v180);
    v148 = *(v118 - 24);
    *v118 = *(v118 - 40);
    *(v118 + 16) = v148;
    *(v118 + 32) = *(v118 - 8);
    sub_241C914E4(&v180, v118 - 40);
    v118 -= 40;
    if (__CFADD__(v117++, 1))
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_241C9C520(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v126 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v8 = *v126;
    if (!*v126)
    {
      goto LABEL_150;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_144:
      result = sub_241CDE470(v4);
    }

    v119 = v6;
    v148 = result;
    v120 = *(result + 16);
    if (v120 >= 2)
    {
      v4 = 40;
      while (*a3)
      {
        v121 = *(result + 16 * v120);
        v122 = result;
        v6 = *(result + 16 * (v120 - 1) + 40);
        sub_241CA0034((*a3 + 40 * v121), (*a3 + 40 * *(result + 16 * (v120 - 1) + 32)), *a3 + 40 * v6, v8);
        if (v119)
        {
        }

        if (v6 < v121)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_241CDE470(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_138;
        }

        v123 = &v122[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v6;
        v148 = v122;
        sub_241CDE3E4(v120 - 1);
        result = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v130 = v9;
    if (v8 + 1 >= v7)
    {
      v20 = v8 + 1;
    }

    else
    {
      v11 = v6;
      v12 = *a3;
      sub_241C96F9C(*a3 + 40 * v10, v145);
      v127 = v8;
      sub_241C96F9C(v12 + 40 * v8, v142);
      v13 = v146;
      v14 = v147;
      sub_241C97000(v145, v146);
      v15 = AssetInfo.sequenceNumber.getter(v13, v14);
      v4 = (v17 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v15;
      v18 = v16;
      v19 = v17;
      v21 = v143;
      v22 = v144;
      sub_241C97000(v142, v143);
      v23 = AssetInfo.sequenceNumber.getter(v21, v22);
      v26 = (v25 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v23;
      v133 = MEMORY[0x245CFDCD0](v4, v18, v19, v26, v24, v25);
      sub_241C8EEE8(v142);
      result = sub_241C8EEE8(v145);
      v27 = v127 + 2;
      if (v127 + 2 >= v7)
      {
        v20 = v127 + 2;
        v6 = v11;
      }

      else
      {
        v28 = v12 + 40 * v127 + 40;
        v6 = v11;
        while (1)
        {
          v4 = v27;
          sub_241C96F9C(v28 + 40, &v139);
          sub_241C96F9C(v28, v136);
          v29 = v140;
          v30 = v141;
          sub_241C97000(&v139, v140);
          v31 = AssetInfo.sequenceNumber.getter(v29, v30);
          v34 = (v33 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v31;
          v35 = v32;
          v36 = v33;
          v37 = v137;
          v38 = v138;
          sub_241C97000(v136, v137);
          v39 = AssetInfo.sequenceNumber.getter(v37, v38);
          v42 = (v41 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v39;
          v43 = MEMORY[0x245CFDCD0](v34, v35, v36, v42, v40, v41);
          sub_241C8EEE8(v136);
          result = sub_241C8EEE8(&v139);
          if ((v133 ^ v43))
          {
            break;
          }

          v27 = v4 + 1;
          v28 += 40;
          if (v7 == v4 + 1)
          {
            v10 = v4;
            v20 = v7;
            goto LABEL_25;
          }
        }

        v20 = v4;
        v10 = v4 - 1;
      }

LABEL_25:
      v8 = v127;
      if (v133)
      {
        if (v20 < v127)
        {
          goto LABEL_141;
        }

        if (v127 <= v10)
        {
          v44 = v127;
          v45 = v6;
          v4 = 40 * v20 - 40;
          v46 = 40 * v127;
          v47 = v20;
          do
          {
            if (v44 != --v47)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v48 = v52 + v46;
              v49 = v52 + v4;
              sub_241C914E4((v52 + v46), &v139);
              v50 = *(v49 + 32);
              v51 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v51;
              *(v48 + 32) = v50;
              result = sub_241C914E4(&v139, v49);
            }

            ++v44;
            v4 -= 40;
            v46 += 40;
          }

          while (v44 < v47);
          v6 = v45;
          v8 = v127;
        }
      }
    }

    v53 = a3[1];
    if (v20 < v53)
    {
      if (__OFSUB__(v20, v8))
      {
        goto LABEL_140;
      }

      if (v20 - v8 < a4)
      {
        v54 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_142;
        }

        if (v54 >= v53)
        {
          v54 = a3[1];
        }

        if (v54 < v8)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v20 != v54)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v20 < v8)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v130;
    }

    else
    {
      result = sub_241CBFB88(0, *(v130 + 16) + 1, 1, v130);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v73 = *(v9 + 24);
    v74 = v4 + 1;
    if (v4 >= v73 >> 1)
    {
      result = sub_241CBFB88((v73 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v74;
    v75 = v9 + 16 * v4;
    *(v75 + 32) = v8;
    *(v75 + 40) = v20;
    v76 = *v126;
    if (!*v126)
    {
      goto LABEL_149;
    }

    v8 = v20;
    if (v4)
    {
      while (1)
      {
        v77 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v78 = *(v9 + 32);
          v79 = *(v9 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_77:
          if (v81)
          {
            goto LABEL_128;
          }

          v94 = (v9 + 16 * v74);
          v96 = *v94;
          v95 = v94[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_131;
          }

          v100 = (v9 + 32 + 16 * v77);
          v102 = *v100;
          v101 = v100[1];
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_135;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v74 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v104 = (v9 + 16 * v74);
        v106 = *v104;
        v105 = v104[1];
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_91:
        if (v99)
        {
          goto LABEL_130;
        }

        v107 = v9 + 16 * v77;
        v109 = *(v107 + 32);
        v108 = *(v107 + 40);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_133;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_98:
        v4 = v77 - 1;
        if (v77 - 1 >= v74)
        {
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
LABEL_137:
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
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v115 = v9;
        v116 = *(v9 + 32 + 16 * v4);
        v117 = *(v9 + 32 + 16 * v77 + 8);
        sub_241CA0034((*a3 + 40 * v116), (*a3 + 40 * *(v9 + 32 + 16 * v77)), *a3 + 40 * v117, v76);
        if (v6)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_241CDE470(v115);
        }

        if (v4 >= *(v115 + 2))
        {
          goto LABEL_125;
        }

        v118 = &v115[16 * v4];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v148 = v115;
        result = sub_241CDE3E4(v77);
        v9 = v148;
        v74 = *(v148 + 16);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = v9 + 32 + 16 * v74;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_126;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v89 = (v9 + 16 * v74);
      v91 = *v89;
      v90 = v89[1];
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_129;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_132;
      }

      if (v93 >= v85)
      {
        v111 = (v9 + 32 + 16 * v77);
        v113 = *v111;
        v112 = v111[1];
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_136;
        }

        if (v80 < v114)
        {
          v77 = v74 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_109;
    }
  }

  v124 = v6;
  v4 = *a3;
  v55 = *a3 + 40 * v20;
  v128 = v8;
  v129 = v54;
  v56 = v8 - v20 + 1;
LABEL_45:
  v132 = v55;
  v134 = v20;
  v131 = v56;
  while (1)
  {
    sub_241C96F9C(v55, v145);
    sub_241C96F9C(v55 - 40, v142);
    v57 = v146;
    v58 = v147;
    sub_241C97000(v145, v146);
    v59 = AssetInfo.sequenceNumber.getter(v57, v58);
    if ((v61 & 0x100000000) != 0)
    {
      v62 = MEMORY[0x245CFDCB0](0);
    }

    else
    {
      v62 = v59;
    }

    v63 = v60;
    v64 = v61;
    v65 = v143;
    v66 = v144;
    sub_241C97000(v142, v143);
    v67 = AssetInfo.sequenceNumber.getter(v65, v66);
    if ((v69 & 0x100000000) != 0)
    {
      v70 = MEMORY[0x245CFDCB0](0);
    }

    else
    {
      v70 = v67;
    }

    v71 = MEMORY[0x245CFDCD0](v62, v63, v64, v70, v68, v69);
    sub_241C8EEE8(v142);
    result = sub_241C8EEE8(v145);
    if ((v71 & 1) == 0)
    {
LABEL_44:
      ++v20;
      v55 = v132 + 40;
      v56 = v131 - 1;
      if (v134 + 1 != v129)
      {
        goto LABEL_45;
      }

      v20 = v129;
      v6 = v124;
      v8 = v128;
      goto LABEL_57;
    }

    if (!v4)
    {
      break;
    }

    sub_241C914E4(v55, &v139);
    v72 = *(v55 - 24);
    *v55 = *(v55 - 40);
    *(v55 + 16) = v72;
    *(v55 + 32) = *(v55 - 8);
    sub_241C914E4(&v139, v55 - 40);
    if (!v56)
    {
      goto LABEL_44;
    }

    ++v56;
    v55 -= 40;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}