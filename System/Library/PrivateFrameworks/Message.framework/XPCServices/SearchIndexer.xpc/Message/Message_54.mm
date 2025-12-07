uint64_t sub_1003787DC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&qword_1005DAA98, &unk_1004F7FC0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100378854()
{
  result = qword_1005DAAB8;
  if (!qword_1005DAAB8)
  {
    result = swift_getWitnessTable(asc_1004F82F0, &type metadata for Statistics.Version2Format, v0, v1);
    atomic_store(result, &qword_1005DAAB8);
  }

  return result;
}

unint64_t sub_1003788A8()
{
  result = qword_1005DAAC8;
  if (!qword_1005DAAC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DAAC0, &unk_1004F7FD0);
    v4[0] = sub_10037892C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DAAC8);
  }

  return result;
}

unint64_t sub_10037892C()
{
  result = qword_1005DAAD0;
  if (!qword_1005DAAD0)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for Statistics.Version1Format, v0, v1);
    atomic_store(result, &qword_1005DAAD0);
  }

  return result;
}

unint64_t sub_100378980(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    LOBYTE(i) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 48);
    v40 = *(result + 56);
    v10 = *(result + 64);
    v11 = *a3;

    result = sub_10035E1B0(v8, v7);
    v13 = v11[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_22;
    }

    LOBYTE(v3) = v12;
    if (v11[3] < v16)
    {
      sub_10035F474(v16, i & 1);
      result = sub_10035E1B0(v8, v7);
      if ((v3 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_1004A6E24();
      __break(1u);
    }

    if ((i & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v18 = *a3;
      if (v3)
      {
        v8 = v10;
        v19 = result;

        v20 = v18[7] + 24 * v19;
        *v20 = v9;
        *(v20 + 8) = v40;
        *(v20 + 16) = v8;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      else
      {
        v18[(result >> 6) + 8] |= 1 << result;
        v21 = (v18[6] + 16 * result);
        *v21 = v8;
        v21[1] = v7;
        v22 = v18[7] + 24 * result;
        *v22 = v9;
        *(v22 + 8) = v40;
        *(v22 + 16) = v10;
        v23 = v18[2];
        v15 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        v18[2] = v24;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      for (i = (v6 + 104); ; i += 40)
      {
        v7 = *(i - 4);
        v6 = *(i - 3);
        v10 = *(i - 2);
        v9 = *(i - 1);
        v4 = *i;
        v27 = *a3;

        result = sub_10035E1B0(v7, v6);
        v29 = v27[2];
        v30 = (v28 & 1) == 0;
        v15 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v15)
        {
          break;
        }

        v8 = v28;
        if (v27[3] < v31)
        {
          sub_10035F474(v31, 1);
          result = sub_10035E1B0(v7, v6);
          if ((v8 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        v33 = *a3;
        if (v8)
        {
          v25 = result;

          v26 = v33[7] + 24 * v25;
          *v26 = v10;
          *(v26 + 8) = v9;
          *(v26 + 16) = v4;
        }

        else
        {
          v33[(result >> 6) + 8] |= 1 << result;
          v34 = (v33[6] + 16 * result);
          *v34 = v7;
          v34[1] = v6;
          v35 = v33[7] + 24 * result;
          *v35 = v10;
          *(v35 + 8) = v9;
          *(v35 + 16) = v4;
          v36 = v33[2];
          v15 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v15)
          {
            goto LABEL_23;
          }

          v33[2] = v37;
        }

        if (!--v3)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v38 = v10;
      v39 = result;
      sub_1003611F0();
      result = v39;
      v10 = v38;
    }
  }

  return result;
}

uint64_t sub_100378C44(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100378C7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100378C9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_100378CF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100378D10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_100378D80()
{
  result = qword_1005DAAD8;
  if (!qword_1005DAAD8)
  {
    result = swift_getWitnessTable(aI_18, &type metadata for Statistics.TimeIntervalIndex, v0, v1);
    atomic_store(result, &qword_1005DAAD8);
  }

  return result;
}

unint64_t sub_100378DD8()
{
  result = qword_1005DAAE0;
  if (!qword_1005DAAE0)
  {
    result = swift_getWitnessTable(byte_1004F8168, &type metadata for Statistics, v0, v1);
    atomic_store(result, &qword_1005DAAE0);
  }

  return result;
}

unint64_t sub_100378E30()
{
  result = qword_1005DAAE8;
  if (!qword_1005DAAE8)
  {
    result = swift_getWitnessTable(byte_1004F81D0, &type metadata for Statistics.Value, v0, v1);
    atomic_store(result, &qword_1005DAAE8);
  }

  return result;
}

unint64_t sub_100378E88()
{
  result = qword_1005DAAF0;
  if (!qword_1005DAAF0)
  {
    result = swift_getWitnessTable(asc_1004F8260, &type metadata for Statistics.QuotaStatus, v0, v1);
    atomic_store(result, &qword_1005DAAF0);
  }

  return result;
}

unint64_t sub_100378EDC()
{
  result = qword_1005DAB00;
  if (!qword_1005DAB00)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for Statistics.Version2Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB00);
  }

  return result;
}

unint64_t sub_100378F30(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2E78;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100378F7C(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DAB10, &qword_1004F8350);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10002587C(a1, a1[3]);
  sub_100379488();
  sub_1004A6F84();
  v11 = 0;
  v6 = sub_1004A6B84();
  v10 = 1;
  sub_1004A6B84();
  v9 = 2;
  sub_1004A6B84();
  (*(v3 + 8))(v5, v2);
  sub_1000197E0(a1);
  return v6;
}

unint64_t sub_100379148(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2EE0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100379194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAB08, &qword_1004F8348);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10002587C(a1, a1[3]);
  sub_100378EDC();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v39 = 0;
  v9 = sub_1004A6B84();
  v38 = 1;
  v10 = sub_1004A6B84();
  v37 = 2;
  v27 = sub_1004A6B84();
  v36 = 3;
  v26 = sub_1004A6B84();
  v35 = 4;
  v25 = sub_1004A6B84();
  v34 = 5;
  v24 = sub_1004A6B84();
  v33 = 6;
  v23 = sub_1004A6B84();
  v30 = 7;
  v22 = sub_1004A6B84();
  v29 = 8;
  v21 = sub_1004A6B34();
  v32 = v11 & 1;
  v28 = 9;
  v20 = sub_1004A6B34();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v13 &= 1u;
  v31 = v13;
  v14 = v32;
  result = sub_1000197E0(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  v16 = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v16;
  v17 = v24;
  *(a2 + 32) = v25;
  *(a2 + 40) = v17;
  v18 = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = v18;
  v19 = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v14;
  *(a2 + 80) = v19;
  *(a2 + 88) = v13;
  return result;
}

unint64_t sub_100379488()
{
  result = qword_1005DAB18;
  if (!qword_1005DAB18)
  {
    result = swift_getWitnessTable(byte_1004F86D4, &type metadata for Statistics.Version1Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB18);
  }

  return result;
}

unint64_t sub_100379530()
{
  result = qword_1005DAB28;
  if (!qword_1005DAB28)
  {
    result = swift_getWitnessTable(byte_1004F83BC, &type metadata for Statistics.DataUsage, v0, v1);
    atomic_store(result, &qword_1005DAB28);
  }

  return result;
}

unint64_t sub_100379588()
{
  result = qword_1005DAB30;
  if (!qword_1005DAB30)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for Statistics.Spotlight, v0, v1);
    atomic_store(result, &qword_1005DAB30);
  }

  return result;
}

unint64_t sub_1003795E0()
{
  result = qword_1005DAB38;
  if (!qword_1005DAB38)
  {
    result = swift_getWitnessTable(byte_1004F848C, &type metadata for Statistics.Errors, v0, v1);
    atomic_store(result, &qword_1005DAB38);
  }

  return result;
}

unint64_t sub_100379638()
{
  result = qword_1005DAB40;
  if (!qword_1005DAB40)
  {
    result = swift_getWitnessTable(byte_1004F85BC, &type metadata for Statistics.Version2Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB40);
  }

  return result;
}

unint64_t sub_100379690()
{
  result = qword_1005DAB48;
  if (!qword_1005DAB48)
  {
    result = swift_getWitnessTable(byte_1004F86AC, &type metadata for Statistics.Version1Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB48);
  }

  return result;
}

unint64_t sub_1003796E8()
{
  result = qword_1005DAB50;
  if (!qword_1005DAB50)
  {
    result = swift_getWitnessTable(byte_1004F85E4, &type metadata for Statistics.Version1Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB50);
  }

  return result;
}

unint64_t sub_100379740()
{
  result = qword_1005DAB58;
  if (!qword_1005DAB58)
  {
    result = swift_getWitnessTable(byte_1004F860C, &type metadata for Statistics.Version1Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB58);
  }

  return result;
}

unint64_t sub_100379798()
{
  result = qword_1005DAB60;
  if (!qword_1005DAB60)
  {
    result = swift_getWitnessTable(byte_1004F84F4, &type metadata for Statistics.Version2Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB60);
  }

  return result;
}

unint64_t sub_1003797F0()
{
  result = qword_1005DAB68;
  if (!qword_1005DAB68)
  {
    result = swift_getWitnessTable(byte_1004F851C, &type metadata for Statistics.Version2Format.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAB68);
  }

  return result;
}

void sub_10037989C(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1004A6374();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v24 - v11;
  v13 = [v3 userInfo];
  v28 = *a1;
  v24 = *a1;
  sub_10035A4AC(&v28, v26);
  swift_bridgeObjectRetain_n();
  v14 = [v13 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v27[0] = v24;
  v27[1] = v25;
  if (*(&v25 + 1))
  {
    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      sub_1002F9A9C(&v28);
      sub_1002F9A9C(&v28);
      v15 = v26[0];
      v16 = *(a1 + 6);
      v17 = v26[0];
      v16(v15);

      return;
    }
  }

  else
  {
    sub_10030805C(v27);
  }

  v18 = [v4 persistentStoreCoordinator];
  if (!v18)
  {
    sub_1002F9A9C(&v28);
    (*(*(a2 - 8) + 56))(v12, 1, 1, a2);
    goto LABEL_12;
  }

  v19 = v18;
  sub_10037A430(a1, a2, v12);

  v20 = *(a2 - 8);
  LODWORD(v19) = (*(v20 + 48))(v12, 1, a2);
  sub_1002F9A9C(&v28);
  if (v19 == 1)
  {
LABEL_12:
    (*(v9 + 8))(v12, v8);
    (*(a1 + 6))(0);
    v21 = [v4 userInfo];
    goto LABEL_13;
  }

  (*(v20 + 32))(a3, v12, a2);
  v21 = [v4 userInfo];
LABEL_13:
  v22 = v21;
  v23 = (*(a1 + 4))(a3);
  v27[0] = v28;
  [v22 __swift_setObject:v23 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
}

uint64_t sub_100379C44(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = v15 - v4;
  sub_1004A4094();
  if (*(&v17 + 1))
  {
    sub_10019A8E4(0, &qword_1005DA508, NSManagedObjectContext_ptr);
    if (swift_dynamicCast())
    {
      v6 = *&v15[0];
      v7 = [*&v15[0] persistentStoreCoordinator];
      if (v7)
      {
        v8 = v7;
        v9 = (v1 + qword_1005DAB70);
        v10 = *(v1 + qword_1005DAB70 + 48);
        v18 = *(v1 + qword_1005DAB70 + 32);
        v19 = v10;
        v20 = *(v1 + qword_1005DAB70 + 64);
        v11 = *(v1 + qword_1005DAB70 + 16);
        v16 = *(v1 + qword_1005DAB70);
        v17 = v11;
        sub_10037989C(&v16, v2, v5);
        v12 = v9[3];
        v15[2] = v9[2];
        v15[3] = v12;
        v15[4] = v9[4];
        v13 = v9[1];
        v15[0] = *v9;
        v15[1] = v13;
        sub_100379EAC(v5, v15);

        return (*(v3 + 8))(v5, v2);
      }
    }
  }

  else
  {
    sub_10030805C(&v16);
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void sub_100379EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v7 = sub_1004A5C14();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

LABEL_22:
    sub_1004A69A4();
    __break(1u);
    return;
  }

  if (!sub_1004A6A34())
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_1004A6794();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v8 = *(v7 + 32);
  }

  v6 = v8;

  v9 = [v2 persistentStores];
  v10 = sub_1004A5C14();

  if (v10 >> 62)
  {
    v11 = sub_1004A6A34();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 != 1)
  {
    goto LABEL_21;
  }

  v12 = [v3 metadataForPersistentStore:v6];
  v13 = sub_1004A5514();

  v14 = (*(a2 + 32))(a1);
  v15 = *a2;
  v16 = *(a2 + 8);
  if (*(v13 + 16) && (v17 = sub_100064090(*a2, *(a2 + 8)), (v18 & 1) != 0) && (sub_1001659C8(*(v13 + 56) + 32 * v17, &v27), sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr), (swift_dynamicCast() & 1) != 0) && (v19 = v14, v20 = sub_1004A62F4(), *&v26[0], v19, (v20 & 1) != 0))
  {

    isa = v6;
    v22 = v19;
  }

  else
  {
    (*(a2 + 64))(a1);
    v28 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    *&v27 = v14;
    sub_10019A8D4(&v27, v26);
    v23 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100359464(v26, v15, v16, isUniquelyReferenced_nonNull_native);
    isa = sub_1004A54F4().super.isa;
    v25 = v3;
    v22 = v6;
    [v25 setMetadata:isa forPersistentStore:v6];
  }
}

uint64_t sub_10037A240(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1004A40A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4084();
  v8 = a1;
  sub_100379C44(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10037A350(uint64_t a1)
{
}

uint64_t sub_10037A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10037A430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v8 = sub_1004A5C14();

  if (v8 >> 62)
  {
    if (sub_1004A6A34())
    {
LABEL_3:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004A6794();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:

          goto LABEL_22;
        }

        v9 = *(v8 + 32);
      }

      v7 = v9;

      v10 = [v3 persistentStores];
      v11 = sub_1004A5C14();

      if (v11 >> 62)
      {
        v12 = sub_1004A6A34();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 == 1)
      {
        v13 = [v3 metadataForPersistentStore:v7];
        v14 = sub_1004A5514();

        if (*(v14 + 16) && (v15 = sub_100064090(*a1, a1[1]), (v16 & 1) != 0))
        {
          sub_1001659C8(*(v14 + 56) + 32 * v15, v22);

          sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v17 = a1[6];
            v18 = v21;
            v17();

            v19 = 0;
            return (*(*(a2 - 8) + 56))(a3, v19, 1, a2);
          }
        }

        else
        {
        }

        v19 = 1;
        return (*(*(a2 - 8) + 56))(a3, v19, 1, a2);
      }

      goto LABEL_21;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_22:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

id sub_10037A73C()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v0);
  v2 = &v36 - v1;
  v3 = sub_10000C9C0(&qword_1005CECC8, &qword_1004D1828);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v44 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v2);
  sub_10037AE10(v2, v6);
  v7 = *(v4 + 44);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v8 = sub_1004A7044();
  sub_100025F40(v2, &qword_1005CD7A0, &unk_1004CF590);
  v37 = v7;
  *&v6[v7] = v8;
  v9 = sub_1004A7074();
  v40 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  if (v8 == v9)
  {
LABEL_20:
    sub_100025F40(v6, &qword_1005CECC8, &qword_1004D1828);
    if (!(v10 >> 62))
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v38 = " persistent store coordinator.";
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v0, &v42);
      v12 = v42;
      v11 = HIDWORD(v42);
      v13 = sub_1004A7044();
      v14 = sub_1004A7074();
      if (v8 < v13 || v8 >= v14)
      {
        break;
      }

      if (v11 - v12 <= 1)
      {
        v20 = v0;
        while (1)
        {
          if (v11 == v12)
          {
            v21 = 0;
          }

          else
          {
            v21 = v12 + 1;
            if (v12 == -1)
            {
              __break(1u);
              goto LABEL_34;
            }
          }

          sub_1004A6F64();
          sub_1004A5BF4();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004A5C44();
          }

          sub_1004A5C84();
          v22 = v11 == v12;
          LODWORD(v12) = v21;
          if (v22)
          {
            v39 = v45;
            v0 = v20;
            goto LABEL_3;
          }
        }
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1004A6724(23);
      v41 = v12;
      v15 = sub_1004A6CE4();
      v17 = v16;

      v42 = v15;
      v43 = v17;
      v47._object = (v38 | 0x8000000000000000);
      v47._countAndFlagsBits = 0xD000000000000013;
      sub_1004A5994(v47);
      v41 = v11;
      v48._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v48);

      v18 = sub_1004A5734();

      v19 = [objc_opt_self() predicateWithFormat:v18 argumentArray:0];

      sub_1004A5BF4();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004A5C44();
      }

      sub_1004A5C84();
      v40 = v44;
LABEL_3:
      if (++v8 == sub_1004A7074())
      {
        *&v6[v37] = v8;
        v10 = v39;
        goto LABEL_20;
      }
    }

LABEL_34:
    __break(1u);
  }

  if (!sub_1004A6A34())
  {
LABEL_36:

    v28 = v40;
    if (v40 >> 62)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_22:
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004CEAA0;
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  isa = sub_1004A5C04().super.isa;

  *(v23 + 56) = sub_10019A8E4(0, &qword_1005DA4F0, NSArray_ptr);
  *(v23 + 32) = isa;
  v25 = sub_1004A5734();
  v26 = sub_1004A5C04().super.isa;

  v27 = [objc_opt_self() predicateWithFormat:v25 argumentArray:v26];

  sub_1004A5BF4();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v28 = v44;
  if (v44 >> 62)
  {
LABEL_37:
    if (sub_1004A6A34())
    {
      if (sub_1004A6A34() != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_27;
    }

LABEL_40:

    v33 = [objc_opt_self() predicateWithValue:0];

    return v33;
  }

LABEL_25:
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_40;
  }

  if (v29 != 1)
  {
    goto LABEL_44;
  }

LABEL_27:
  if (v28 >> 62)
  {
    result = sub_1004A6A34();
    if (result)
    {
      goto LABEL_29;
    }

LABEL_44:
    sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
    v34 = sub_1004A5C04().super.isa;

    v35 = [objc_opt_self() orPredicateWithSubpredicates:v34];

    return v35;
  }

  result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_29:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v31 = sub_1004A6794();
    goto LABEL_32;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v28 + 32);
LABEL_32:
    v32 = v31;

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_10037AE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

IMAPSearchIndexerXPC::AccountID_optional __swiftcall AccountID.init(rawValue:)(Swift::String rawValue)
{
  v1 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v1 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    rawValue._countAndFlagsBits = 0;
    rawValue._object = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v2;
  return result;
}

uint64_t sub_10037AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037AF60(uint64_t a1)
{
  v2 = sub_10037B118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037AF9C(uint64_t a1)
{
  v2 = sub_10037B118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C9C0(&qword_1005DAC88, &qword_1004F88C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6FA4();
  sub_1004A6C44();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10037B118()
{
  result = qword_1005DAC90;
  if (!qword_1005DAC90)
  {
    result = swift_getWitnessTable(asc_1004F971C, &type metadata for AccountID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAC90);
  }

  return result;
}

void *AccountID.init(from:)(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAC98, &qword_1004F88C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6F84();
  if (!v1)
  {
    v7 = sub_1004A6B74();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000197E0(a1);
  return v7;
}

uint64_t sub_10037B2C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAC98, &qword_1004F88C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v9 = sub_1004A6B74();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1000197E0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10037B444(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DAC88, &qword_1004F88C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6FA4();
  sub_1004A6C44();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AccountConfiguration.endpoint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountConfiguration.endpoint.setter(uint64_t a1, uint64_t a2, __int16 a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t sub_10037B608()
{
  if (*v0)
  {
    return 1953656688;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_10037B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_10037B708(uint64_t a1)
{
  v2 = sub_10037B96C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037B744(uint64_t a1)
{
  v2 = sub_10037B96C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static AccountConfiguration.Endpoint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1004A6D34();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = sub_10000C9C0(&qword_1005DACA0, &qword_1004F88D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10002587C(a1, a1[3]);
  sub_10037B96C();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6C44();
  if (!v4)
  {
    v13 = 1;
    sub_1004A6C84();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10037B96C()
{
  result = qword_1005DACA8;
  if (!qword_1005DACA8)
  {
    result = swift_getWitnessTable(byte_1004F96CC, &type metadata for AccountConfiguration.Endpoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DACA8);
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.init(from:)(void *a1)
{
  result = sub_10037CBAC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10037B9E4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10037CBAC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_10037BA34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1004A6D34();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_10037BAC4()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_10037BB18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10037CF28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10037BB40(uint64_t a1)
{
  v2 = sub_10037CD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BB7C(uint64_t a1)
{
  v2 = sub_10037CD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BBC4(uint64_t a1)
{
  v2 = sub_10037CED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BC00(uint64_t a1)
{
  v2 = sub_10037CED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BC3C(uint64_t a1)
{
  v2 = sub_10037CE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BC78(uint64_t a1)
{
  v2 = sub_10037CE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BCB4(uint64_t a1)
{
  v2 = sub_10037CDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BCF0(uint64_t a1)
{
  v2 = sub_10037CDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.TransportLayerSecurity.encode(to:)(void *a1, int a2)
{
  v27 = a2;
  v3 = sub_10000C9C0(&qword_1005DACB0, &qword_1004F88D8);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v21 - v4;
  v5 = sub_10000C9C0(&qword_1005DACB8, &qword_1004F88E0);
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10000C9C0(&qword_1005DACC0, &qword_1004F88E8);
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_10000C9C0(&qword_1005DACC8, &qword_1004F88F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  sub_10002587C(a1, a1[3]);
  sub_10037CD84();
  v15 = v27;
  sub_1004A6FA4();
  if (!(v15 >> 6))
  {
    v30 = 1;
    sub_10037CE80();
    sub_1004A6BD4();
    v29 = v15;
    sub_10037CE2C();
    v19 = v23;
    sub_1004A6C74();
    (*(v22 + 8))(v7, v19);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 >> 6 == 1)
  {
    v16 = v15 & 0x3F;
    v32 = 2;
    sub_10037CDD8();
    v17 = v24;
    sub_1004A6BD4();
    v31 = v16;
    sub_10037CE2C();
    v18 = v26;
    sub_1004A6C74();
    (*(v25 + 8))(v17, v18);
    return (*(v12 + 8))(v14, v11);
  }

  v28 = 0;
  sub_10037CED4();
  sub_1004A6BD4();
  (*(v21 + 8))(v10, v8);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10037C154@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10037D040(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10037C19C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10037C1CC(uint64_t a1)
{
  v2 = sub_10037D6B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C208(uint64_t a1)
{
  v2 = sub_10037D6B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10037C244()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10037C298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10037D89C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10037C2C0(uint64_t a1)
{
  v2 = sub_10037D664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C2FC(uint64_t a1)
{
  v2 = sub_10037D664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C338(uint64_t a1)
{
  v2 = sub_10037D760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C374(uint64_t a1)
{
  v2 = sub_10037D760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C3B0(uint64_t a1)
{
  v2 = sub_10037D70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C3EC(uint64_t a1)
{
  v2 = sub_10037D70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.CertificateTrustPolicy.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_10000C9C0(&qword_1005DACF8, &qword_1004F88F8);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_10000C9C0(&qword_1005DAD00, &qword_1004F8900);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10000C9C0(&qword_1005DAD08, &qword_1004F8908);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_10000C9C0(&qword_1005DAD10, &qword_1004F8910);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10002587C(a1, a1[3]);
  sub_10037D664();
  sub_1004A6FA4();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10037D70C();
      sub_1004A6BD4();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10037D6B8();
      v16 = v22;
      sub_1004A6BD4();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10037D760();
    sub_1004A6BD4();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_10037C7C0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10037D9C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AccountConfiguration.init(accountID:endpoint:transportLayerSecurity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 34) = a6;
  return result;
}

unint64_t sub_10037C81C()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_10037C880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10037E084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10037C8A8(uint64_t a1)
{
  v2 = sub_10037DF34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C8E4(uint64_t a1)
{
  v2 = sub_10037DF34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005DAD38, &qword_1004F8918);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10037DF34();
  sub_1004A6FA4();
  v10 = *v3;
  v12 = 0;
  sub_10037DF88();
  sub_1004A6C74();
  if (!v2)
  {
    v10 = v3[1];
    v11 = *(v3 + 16);
    v12 = 1;
    sub_10037DFDC();
    sub_1004A6C74();
    LOBYTE(v10) = *(v3 + 34);
    v12 = 2;
    sub_10037E030();
    sub_1004A6C74();
  }

  return (*(v6 + 8))(v8, v5);
}

double AccountConfiguration.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10037E1AC(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 31) = *&v7[15];
  }

  return result;
}

BOOL sub_10037CB60(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

uint64_t sub_10037CBAC(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAF28, &unk_1004F97C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B96C();
  sub_1004A6F84();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1004A6B74();
    v9[14] = 1;
    sub_1004A6BA4();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_10037CD84()
{
  result = qword_1005DACD0;
  if (!qword_1005DACD0)
  {
    result = swift_getWitnessTable(byte_1004F967C, &type metadata for AccountConfiguration.TransportLayerSecurity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DACD0);
  }

  return result;
}

unint64_t sub_10037CDD8()
{
  result = qword_1005DACD8;
  if (!qword_1005DACD8)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for AccountConfiguration.TransportLayerSecurity.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DACD8);
  }

  return result;
}

unint64_t sub_10037CE2C()
{
  result = qword_1005DACE0;
  if (!qword_1005DACE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.CertificateTrustPolicy, &type metadata for AccountConfiguration.CertificateTrustPolicy, v0, v1);
    atomic_store(result, &qword_1005DACE0);
  }

  return result;
}

unint64_t sub_10037CE80()
{
  result = qword_1005DACE8;
  if (!qword_1005DACE8)
  {
    result = swift_getWitnessTable(byte_1004F95DC, &type metadata for AccountConfiguration.TransportLayerSecurity.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DACE8);
  }

  return result;
}

unint64_t sub_10037CED4()
{
  result = qword_1005DACF0;
  if (!qword_1005DACF0)
  {
    result = swift_getWitnessTable(asc_1004F958C, &type metadata for AccountConfiguration.TransportLayerSecurity.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DACF0);
  }

  return result;
}

uint64_t sub_10037CF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037D040(void *a1)
{
  v27 = sub_10000C9C0(&qword_1005DAF00, &qword_1004F97A0);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v25 - v2;
  v25 = sub_10000C9C0(&qword_1005DAF08, &qword_1004F97A8);
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v25 - v3;
  v5 = sub_10000C9C0(&qword_1005DAF10, &qword_1004F97B0);
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_10000C9C0(&qword_1005DAF18, &qword_1004F97B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v32 = a1;
  v13 = sub_10002587C(a1, v12);
  sub_10037CD84();
  v14 = v31;
  sub_1004A6F84();
  if (!v14)
  {
    v31 = v5;
    v15 = v30;
    v16 = sub_1004A6BC4();
    v17 = (2 * *(v16 + 16)) | 1;
    v33 = v16;
    v34 = v16 + 32;
    v35 = 0;
    v36 = v17;
    v18 = sub_100391FD4();
    if (v18 == 3 || v35 != v36 >> 1)
    {
      v20 = sub_1004A67D4();
      swift_allocError();
      v22 = v21;
      sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
      *v22 = &type metadata for AccountConfiguration.TransportLayerSecurity;
      v13 = v11;
      sub_1004A6B14();
      sub_1004A67C4();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        v37 = 1;
        sub_10037CE80();
        sub_1004A6B04();
        sub_10037F204();
        v19 = v25;
        sub_1004A6B94();
        (*(v28 + 8))(v4, v19);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = v37;
      }

      else
      {
        v37 = 2;
        sub_10037CDD8();
        sub_1004A6B04();
        sub_10037F204();
        v24 = v27;
        sub_1004A6B94();
        (*(v29 + 8))(v15, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = v37 | 0x40u;
      }
    }

    else
    {
      v37 = 0;
      sub_10037CED4();
      sub_1004A6B04();
      (*(v26 + 8))(v7, v31);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 128;
    }
  }

  sub_1000197E0(v32);
  return v13;
}

unint64_t sub_10037D664()
{
  result = qword_1005DAD18;
  if (!qword_1005DAD18)
  {
    result = swift_getWitnessTable(asc_1004F953C, &type metadata for AccountConfiguration.CertificateTrustPolicy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD18);
  }

  return result;
}

unint64_t sub_10037D6B8()
{
  result = qword_1005DAD20;
  if (!qword_1005DAD20)
  {
    result = swift_getWitnessTable(byte_1004F94EC, &type metadata for AccountConfiguration.CertificateTrustPolicy.AllowUserOverrideCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD20);
  }

  return result;
}

unint64_t sub_10037D70C()
{
  result = qword_1005DAD28;
  if (!qword_1005DAD28)
  {
    result = swift_getWitnessTable(byte_1004F949C, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS13CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD28);
  }

  return result;
}

unint64_t sub_10037D760()
{
  result = qword_1005DAD30;
  if (!qword_1005DAD30)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS12CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD30);
  }

  return result;
}

BOOL _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 32);
  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24))
  {
    if (v5 != v6)
    {
      return 0;
    }

LABEL_14:
    v10 = *(a1 + 34);
    v11 = *(a2 + 34);
    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        return (v11 & 0xC0) == 0x40 && ((v11 ^ v10) & 0x3F) == 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if ((v10 & 0x3F) != v11)
    {
      return 0;
    }

    return 1;
  }

  v8 = sub_1004A6D34();
  result = 0;
  if ((v8 & 1) != 0 && v5 == v6)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10037D89C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001004ADFD0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004ADFB0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004ADF90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1004A6D34();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037D9C4(void *a1)
{
  v31 = sub_10000C9C0(&qword_1005DAED8, &qword_1004F9778);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_10000C9C0(&qword_1005DAEE0, &qword_1004F9780);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_10000C9C0(&qword_1005DAEE8, &qword_1004F9788);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10000C9C0(&qword_1005DAEF0, &unk_1004F9790);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_10002587C(a1, v12);
  sub_10037D664();
  v13 = v34;
  sub_1004A6F84();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1004A6BC4();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100391FD4();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_10037D70C();
          sub_1004A6B04();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_1000197E0(v35);
          return v9;
        }

        v40 = 2;
        sub_10037D6B8();
        v24 = v11;
        sub_1004A6B04();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_10037D760();
        v24 = v11;
        sub_1004A6B04();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1004A67D4();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v22 = &type metadata for AccountConfiguration.CertificateTrustPolicy;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_1000197E0(v35);
  return v9;
}

unint64_t sub_10037DF34()
{
  result = qword_1005DAD40;
  if (!qword_1005DAD40)
  {
    result = swift_getWitnessTable(byte_1004F93FC, &type metadata for AccountConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD40);
  }

  return result;
}

unint64_t sub_10037DF88()
{
  result = qword_1005DAD48;
  if (!qword_1005DAD48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountID, &type metadata for AccountID, v0, v1);
    atomic_store(result, &qword_1005DAD48);
  }

  return result;
}

unint64_t sub_10037DFDC()
{
  result = qword_1005DAD50;
  if (!qword_1005DAD50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.Endpoint, &type metadata for AccountConfiguration.Endpoint, v0, v1);
    atomic_store(result, &qword_1005DAD50);
  }

  return result;
}

unint64_t sub_10037E030()
{
  result = qword_1005DAD58;
  if (!qword_1005DAD58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.TransportLayerSecurity, &type metadata for AccountConfiguration.TransportLayerSecurity, v0, v1);
    atomic_store(result, &qword_1005DAD58);
  }

  return result;
}

uint64_t sub_10037E084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B01D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037E1AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAEB8, &qword_1004F9770);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10037DF34();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v21 = 0;
  sub_10037F108();
  sub_1004A6B94();
  v9 = v17;
  v16 = v18;
  v21 = 1;
  sub_10037F15C();
  sub_1004A6B94();
  v14 = v17;
  v15 = v9;
  v10 = v18;
  v20 = v19;
  v21 = 2;
  sub_10037F1B0();
  sub_1004A6B94();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = sub_1000197E0(a1);
  v13 = v16;
  *a2 = v15;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v20;
  *(a2 + 34) = v11;
  return result;
}

unint64_t sub_10037E438()
{
  result = qword_1005DAD60;
  if (!qword_1005DAD60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountID, &type metadata for AccountID, v0, v1);
    atomic_store(result, &qword_1005DAD60);
  }

  return result;
}

unint64_t sub_10037E490()
{
  result = qword_1005DAD68;
  if (!qword_1005DAD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.CertificateTrustPolicy, &type metadata for AccountConfiguration.CertificateTrustPolicy, v0, v1);
    atomic_store(result, &qword_1005DAD68);
  }

  return result;
}

__n128 sub_10037E4F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10037E508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_10037E550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037E5A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_10037E5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10037E714()
{
  result = qword_1005DAD70;
  if (!qword_1005DAD70)
  {
    result = swift_getWitnessTable(asc_1004F8E44, &type metadata for AccountID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD70);
  }

  return result;
}

unint64_t sub_10037E76C()
{
  result = qword_1005DAD78;
  if (!qword_1005DAD78)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for AccountConfiguration.Endpoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD78);
  }

  return result;
}

unint64_t sub_10037E7C4()
{
  result = qword_1005DAD80;
  if (!qword_1005DAD80)
  {
    result = swift_getWitnessTable(byte_1004F8FB4, &type metadata for AccountConfiguration.TransportLayerSecurity.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD80);
  }

  return result;
}

unint64_t sub_10037E81C()
{
  result = qword_1005DAD88;
  if (!qword_1005DAD88)
  {
    result = swift_getWitnessTable(byte_1004F906C, &type metadata for AccountConfiguration.TransportLayerSecurity.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD88);
  }

  return result;
}

unint64_t sub_10037E874()
{
  result = qword_1005DAD90;
  if (!qword_1005DAD90)
  {
    result = swift_getWitnessTable(byte_1004F9174, &type metadata for AccountConfiguration.TransportLayerSecurity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD90);
  }

  return result;
}

unint64_t sub_10037E8CC()
{
  result = qword_1005DAD98;
  if (!qword_1005DAD98)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for AccountConfiguration.CertificateTrustPolicy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAD98);
  }

  return result;
}

unint64_t sub_10037E924()
{
  result = qword_1005DADA0;
  if (!qword_1005DADA0)
  {
    result = swift_getWitnessTable(byte_1004F93D4, &type metadata for AccountConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADA0);
  }

  return result;
}

unint64_t sub_10037E97C()
{
  result = qword_1005DADA8;
  if (!qword_1005DADA8)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for AccountConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADA8);
  }

  return result;
}

unint64_t sub_10037E9D4()
{
  result = qword_1005DADB0;
  if (!qword_1005DADB0)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for AccountConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADB0);
  }

  return result;
}

unint64_t sub_10037EA2C()
{
  result = qword_1005DADB8;
  if (!qword_1005DADB8)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS12CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADB8);
  }

  return result;
}

unint64_t sub_10037EA84()
{
  result = qword_1005DADC0;
  if (!qword_1005DADC0)
  {
    result = swift_getWitnessTable(asc_1004F9264, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS12CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADC0);
  }

  return result;
}

unint64_t sub_10037EADC()
{
  result = qword_1005DADC8;
  if (!qword_1005DADC8)
  {
    result = swift_getWitnessTable(byte_1004F91EC, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS13CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADC8);
  }

  return result;
}

unint64_t sub_10037EB34()
{
  result = qword_1005DADD0;
  if (!qword_1005DADD0)
  {
    result = swift_getWitnessTable(byte_1004F9214, &type metadata for AccountConfiguration.CertificateTrustPolicy.RequireTrustedTLS13CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADD0);
  }

  return result;
}

unint64_t sub_10037EB8C()
{
  result = qword_1005DADD8;
  if (!qword_1005DADD8)
  {
    result = swift_getWitnessTable(asc_1004F919C, &type metadata for AccountConfiguration.CertificateTrustPolicy.AllowUserOverrideCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADD8);
  }

  return result;
}

unint64_t sub_10037EBE4()
{
  result = qword_1005DADE0;
  if (!qword_1005DADE0)
  {
    result = swift_getWitnessTable(byte_1004F91C4, &type metadata for AccountConfiguration.CertificateTrustPolicy.AllowUserOverrideCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADE0);
  }

  return result;
}

unint64_t sub_10037EC3C()
{
  result = qword_1005DADE8;
  if (!qword_1005DADE8)
  {
    result = swift_getWitnessTable(byte_1004F928C, &type metadata for AccountConfiguration.CertificateTrustPolicy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADE8);
  }

  return result;
}

unint64_t sub_10037EC94()
{
  result = qword_1005DADF0;
  if (!qword_1005DADF0)
  {
    result = swift_getWitnessTable(byte_1004F92B4, &type metadata for AccountConfiguration.CertificateTrustPolicy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADF0);
  }

  return result;
}

unint64_t sub_10037ECEC()
{
  result = qword_1005DADF8;
  if (!qword_1005DADF8)
  {
    result = swift_getWitnessTable(byte_1004F9094, &type metadata for AccountConfiguration.TransportLayerSecurity.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DADF8);
  }

  return result;
}

unint64_t sub_10037ED44()
{
  result = qword_1005DAE00;
  if (!qword_1005DAE00)
  {
    result = swift_getWitnessTable(byte_1004F90BC, &type metadata for AccountConfiguration.TransportLayerSecurity.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE00);
  }

  return result;
}

unint64_t sub_10037ED9C()
{
  result = qword_1005DAE08;
  if (!qword_1005DAE08)
  {
    result = swift_getWitnessTable(byte_1004F8FDC, &type metadata for AccountConfiguration.TransportLayerSecurity.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE08);
  }

  return result;
}

unint64_t sub_10037EDF4()
{
  result = qword_1005DAE10;
  if (!qword_1005DAE10)
  {
    result = swift_getWitnessTable(byte_1004F9004, &type metadata for AccountConfiguration.TransportLayerSecurity.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE10);
  }

  return result;
}

unint64_t sub_10037EE4C()
{
  result = qword_1005DAE18;
  if (!qword_1005DAE18)
  {
    result = swift_getWitnessTable(byte_1004F8F24, &type metadata for AccountConfiguration.TransportLayerSecurity.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE18);
  }

  return result;
}

unint64_t sub_10037EEA4()
{
  result = qword_1005DAE20;
  if (!qword_1005DAE20)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for AccountConfiguration.TransportLayerSecurity.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE20);
  }

  return result;
}

unint64_t sub_10037EEFC()
{
  result = qword_1005DAE28;
  if (!qword_1005DAE28)
  {
    result = swift_getWitnessTable(byte_1004F90E4, &type metadata for AccountConfiguration.TransportLayerSecurity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE28);
  }

  return result;
}

unint64_t sub_10037EF54()
{
  result = qword_1005DAE30;
  if (!qword_1005DAE30)
  {
    result = swift_getWitnessTable(byte_1004F910C, &type metadata for AccountConfiguration.TransportLayerSecurity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE30);
  }

  return result;
}

unint64_t sub_10037EFAC()
{
  result = qword_1005DAE38;
  if (!qword_1005DAE38)
  {
    result = swift_getWitnessTable(asc_1004F8E6C, &type metadata for AccountConfiguration.Endpoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE38);
  }

  return result;
}

unint64_t sub_10037F004()
{
  result = qword_1005DAE40;
  if (!qword_1005DAE40)
  {
    result = swift_getWitnessTable(asc_1004F8E94, &type metadata for AccountConfiguration.Endpoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE40);
  }

  return result;
}

unint64_t sub_10037F05C()
{
  result = qword_1005DAE48;
  if (!qword_1005DAE48)
  {
    result = swift_getWitnessTable(byte_1004F8DB4, &type metadata for AccountID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE48);
  }

  return result;
}

unint64_t sub_10037F0B4()
{
  result = qword_1005DAE50;
  if (!qword_1005DAE50)
  {
    result = swift_getWitnessTable(byte_1004F8DDC, &type metadata for AccountID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAE50);
  }

  return result;
}

unint64_t sub_10037F108()
{
  result = qword_1005DAEC0;
  if (!qword_1005DAEC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountID, &type metadata for AccountID, v0, v1);
    atomic_store(result, &qword_1005DAEC0);
  }

  return result;
}

unint64_t sub_10037F15C()
{
  result = qword_1005DAEC8;
  if (!qword_1005DAEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.Endpoint, &type metadata for AccountConfiguration.Endpoint, v0, v1);
    atomic_store(result, &qword_1005DAEC8);
  }

  return result;
}

unint64_t sub_10037F1B0()
{
  result = qword_1005DAED0;
  if (!qword_1005DAED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.TransportLayerSecurity, &type metadata for AccountConfiguration.TransportLayerSecurity, v0, v1);
    atomic_store(result, &qword_1005DAED0);
  }

  return result;
}

unint64_t sub_10037F204()
{
  result = qword_1005DAF20;
  if (!qword_1005DAF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration.CertificateTrustPolicy, &type metadata for AccountConfiguration.CertificateTrustPolicy, v0, v1);
    atomic_store(result, &qword_1005DAF20);
  }

  return result;
}

uint64_t sub_10037F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037F2F8(uint64_t a1)
{
  v2 = sub_10038057C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F334(uint64_t a1)
{
  v2 = sub_10038057C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F370()
{
  v1 = *v0;
  v2 = 0x44496E6F73726570;
  v3 = 0x49656E696863616DLL;
  v4 = 0x50656D6954656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x6E49746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
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

uint64_t sub_10037F41C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100380678(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10037F444(uint64_t a1)
{
  v2 = sub_1003805D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F480(uint64_t a1)
{
  v2 = sub_1003805D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F4BC()
{
  v1 = *v0;
  v2 = 0x656D616E72657375;
  v3 = 0x6B6F54656C707061;
  v4 = 0x6B6F54687475416FLL;
  if (v1 != 3)
  {
    v4 = 0x68747541657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B6F54656C707061;
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

uint64_t sub_10037F568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038083C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10037F590(uint64_t a1)
{
  v2 = sub_100380480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F5CC(uint64_t a1)
{
  v2 = sub_100380480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F608()
{
  if (*v0)
  {
    return 0x6F54737365636361;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_10037F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_10037F72C(uint64_t a1)
{
  v2 = sub_100380528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F768(uint64_t a1)
{
  v2 = sub_100380528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F7A4(uint64_t a1)
{
  v2 = sub_1003804D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F7E0(uint64_t a1)
{
  v2 = sub_1003804D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F81C()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10037F84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_10037F920(uint64_t a1)
{
  v2 = sub_100380624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F95C(uint64_t a1)
{
  v2 = sub_100380624();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Credentials.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DAF40, &qword_1004F97D0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  *&v52 = &v48 - v5;
  v6 = sub_10000C9C0(&qword_1005DAF48, &qword_1004F97D8);
  *(&v55 + 1) = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  *&v55 = &v48 - v7;
  v8 = sub_10000C9C0(&qword_1005DAF50, &qword_1004F97E0);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v48 - v9;
  v10 = sub_10000C9C0(&qword_1005DAF58, &qword_1004F97E8);
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10000C9C0(&qword_1005DAF60, &qword_1004F97F0);
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v61 = sub_10000C9C0(&qword_1005DAF68, &qword_1004F97F8);
  v58 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = &v48 - v16;
  sub_10002587C(a1, a1[3]);
  sub_100380480();
  v60 = v17;
  sub_1004A6FA4();
  v19 = *v2;
  v18 = v2[1];
  v20 = v2[2];
  v21 = v2[7];
  v22 = v2[9];
  v23 = (v22 >> 59) & 6 | ((v21 & 0x2000000000000000) != 0);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      LOBYTE(v62) = 2;
      v30 = v18;
      sub_10038057C();
      v31 = v49;
      v33 = v60;
      v32 = v61;
      sub_1004A6BD4();
      *&v62 = v19;
      *(&v62 + 1) = v30;
      sub_10015246C();
      v34 = v51;
      sub_1004A6C74();
      (*(v50 + 8))(v31, v34);
      return (*(v58 + 8))(v33, v32);
    }

    v25 = v60;
    v24 = v61;
    if (v23 != 3)
    {
      LOBYTE(v62) = 4;
      sub_1003804D4();
      v36 = v52;
      sub_1004A6BD4();
      (*(v53 + 8))(v36, v54);
      return (*(v58 + 8))(v25, v24);
    }

    LOBYTE(v62) = 3;
    sub_100380528();
    v26 = v55;
    sub_1004A6BD4();
    LOBYTE(v62) = 0;
    v27 = v56;
    v28 = v59;
    sub_1004A6C44();
    if (!v28)
    {
      LOBYTE(v62) = 1;
      sub_1004A6C44();
    }

    (*(*(&v55 + 1) + 8))(v26, v27);
    goto LABEL_16;
  }

  *(&v55 + 1) = v2[3];
  v56 = v18;
  *&v55 = v20;
  if (!v23)
  {
    LOBYTE(v62) = 0;
    sub_100380624();
    v25 = v60;
    v24 = v61;
    sub_1004A6BD4();
    *&v62 = v19;
    *(&v62 + 1) = v56;
    v63 = 0;
    sub_10015246C();
    v29 = v59;
    sub_1004A6C74();
    if (!v29)
    {
      v62 = v55;
      v63 = 1;
      sub_1004A6C74();
    }

    (*(v48 + 8))(v15, v13);
LABEL_16:
    v43 = *(v58 + 8);
    v44 = v25;
    return v43(v44, v24);
  }

  v37 = v10;
  v52 = *(v2 + 2);
  v38 = v2[6];
  v53 = v2[8];
  v54 = v38;
  LOBYTE(v62) = 1;
  sub_1003805D0();
  v39 = v12;
  v40 = v60;
  v24 = v61;
  sub_1004A6BD4();
  *&v62 = v19;
  *(&v62 + 1) = v56;
  v63 = 0;
  sub_10015246C();
  v41 = v37;
  v42 = v59;
  sub_1004A6C74();
  if (v42)
  {
    (*(v57 + 8))(v39, v37);
    v43 = *(v58 + 8);
    v44 = v40;
    return v43(v44, v24);
  }

  v45 = v53;
  v46 = v54;
  v62 = v55;
  v63 = 1;
  sub_1004A6C74();
  v62 = v52;
  v63 = 2;
  sub_1004A6C74();
  v47 = v57;
  *&v62 = v46;
  *(&v62 + 1) = v21 & 0xDFFFFFFFFFFFFFFFLL;
  v63 = 3;
  sub_1004A6C74();
  *&v62 = v45;
  *(&v62 + 1) = v22 & 0xCFFFFFFFFFFFFFFFLL;
  v63 = 4;
  sub_1004A6C74();
  (*(v47 + 8))(v39, v41);
  return (*(v58 + 8))(v60, v61);
}

__n128 Credentials.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1003809F8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t *Credentials.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_1003802AC(a1, sub_1001F0CD8, a2);
}

{
  return sub_1003802AC(a1, sub_1003817E8, a2);
}

uint64_t *sub_1003802AC@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = result;
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v13 = result[7];
  v14 = result[9];
  v15 = (v14 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v15 <= 1)
  {
    if (v15)
    {
      v23 = result[5];
      v4 = result[6];
      v19 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      v24 = result[4];
      v25 = v24;
      v26 = result[8];
      v27 = result[1];
      v28 = *result;
      sub_100014CEC(v9, v10);
      sub_100014CEC(v11, v12);
      sub_100014CEC(v24, v23);
      sub_100014CEC(v4, v13 & 0xDFFFFFFFFFFFFFFFLL);
      v5 = v26;
      sub_100014CEC(v26, v19);
      result = a2(v7);
      v3 = v25;
      v10 = v27;
      v9 = v28;
      v18 = v23 & 0xCFFFFFFFFFFFFFFFLL;
      v20 = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    }

    else
    {
      v21 = *result;
      v22 = result[1];
      sub_100014CEC(*result, v10);
      sub_100014CEC(v11, v12);
      result = a2(v7);
      v10 = v22;
      v9 = v21;
      v18 = 0;
      v20 = 0;
      v19 = 0;
    }
  }

  else if (v15 == 2)
  {
    v18 = 0;
    v20 = 0;
    v19 = 0x1000000000000000;
  }

  else if (v15 == 3)
  {
    v16 = *result;
    v17 = result[1];

    result = a2(v7);
    v10 = v17;
    v9 = v16;
    v18 = 0;
    v19 = 0x1000000000000000;
    v20 = 0x2000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v18 = 0;
    v4 = 0;
    v20 = 0;
    v5 = 0;
    v19 = 0x2000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v3;
  a3[5] = v18;
  a3[6] = v4;
  a3[7] = v20;
  a3[8] = v5;
  a3[9] = v19;
  return result;
}

unint64_t sub_100380480()
{
  result = qword_1005DAF70;
  if (!qword_1005DAF70)
  {
    result = swift_getWitnessTable(byte_1004FA2BC, &type metadata for Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF70);
  }

  return result;
}

unint64_t sub_1003804D4()
{
  result = qword_1005DAF78;
  if (!qword_1005DAF78)
  {
    result = swift_getWitnessTable(asc_1004FA26C, &type metadata for Credentials.PreAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF78);
  }

  return result;
}

unint64_t sub_100380528()
{
  result = qword_1005DAF80;
  if (!qword_1005DAF80)
  {
    result = swift_getWitnessTable(asc_1004FA21C, &type metadata for Credentials.OAuthTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF80);
  }

  return result;
}

unint64_t sub_10038057C()
{
  result = qword_1005DAF88;
  if (!qword_1005DAF88)
  {
    result = swift_getWitnessTable(byte_1004FA1CC, &type metadata for Credentials.AppleToken2CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF88);
  }

  return result;
}

unint64_t sub_1003805D0()
{
  result = qword_1005DAF90;
  if (!qword_1005DAF90)
  {
    result = swift_getWitnessTable(byte_1004FA17C, &type metadata for Credentials.AppleTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF90);
  }

  return result;
}

unint64_t sub_100380624()
{
  result = qword_1005DAF98;
  if (!qword_1005DAF98)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for Credentials.UsernameCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAF98);
  }

  return result;
}

uint64_t sub_100380678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10038083C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEA00000000006E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEB00000000326E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68747541657270 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1003809F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v69 = sub_10000C9C0(&qword_1005DB028, &qword_1004FA310);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v73 = &v63 - v3;
  v70 = sub_10000C9C0(&qword_1005DB030, &qword_1004FA318);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v76 = &v63 - v4;
  v67 = sub_10000C9C0(&qword_1005DB038, &qword_1004FA320);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v75 = &v63 - v5;
  v74 = sub_10000C9C0(&qword_1005DB040, &qword_1004FA328);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v7 = &v63 - v6;
  v8 = sub_10000C9C0(&qword_1005DB048, &qword_1004FA330);
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v63 - v9;
  v11 = sub_10000C9C0(&qword_1005DB050, &qword_1004FA338);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v63 - v13);
  v15 = a1[3];
  v79 = a1;
  sub_10002587C(a1, v15);
  sub_100380480();
  v16 = v78;
  sub_1004A6F84();
  if (v16)
  {
    return sub_1000197E0(v79);
  }

  v64 = v10;
  v17 = v75;
  v63 = v8;
  v18 = v74;
  v78 = v12;
  v20 = v76;
  v19 = v77;
  v21 = sub_1004A6BC4();
  v22 = (2 * *(v21 + 16)) | 1;
  v90 = v21;
  v91 = v21 + 32;
  v92 = 0;
  v93 = v22;
  v23 = sub_100381F20();
  if (v23 == 5 || v92 != v93 >> 1)
  {
    v26 = v14;
    v27 = sub_1004A67D4();
    swift_allocError();
    v29 = v28;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v29 = &type metadata for Credentials;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v78 + 8))(v26, v11);
    swift_unknownObjectRelease();
    return sub_1000197E0(v79);
  }

  if (v23 <= 1u)
  {
    if (v23)
    {
      LOBYTE(v88) = 1;
      sub_1003805D0();
      v35 = v7;
      sub_1004A6B04();
      v76 = v11;
      LOBYTE(v86) = 0;
      sub_100381E8C();
      v39 = v18;
      v40 = v35;
      sub_1004A6B94();
      v47 = v88;
      v46 = v89;
      LOBYTE(v84) = 1;
      sub_1004A6B94();
      v73 = v47;
      v75 = v46;
      v58 = v86;
      v59 = v87;
      LOBYTE(v82) = 2;
      sub_1004A6B94();
      v68 = v59;
      v69 = v58;
      v70 = v14;
      v60 = v84;
      v61 = v85;
      LOBYTE(v80) = 3;
      sub_1004A6B94();
      v11 = v82;
      v62 = v83;
      v94 = 4;
      sub_1004A6B94();
      v71 = 0;
      (*(v72 + 8))(v40, v39);
      (*(v78 + 8))(v70, v76);
      swift_unknownObjectRelease();
      v7 = v60;
      v14 = v80;
      v78 = v61 & 0xCFFFFFFFFFFFFFFFLL;
      v53 = v81 & 0xCFFFFFFFFFFFFFFFLL;
      v54 = v62 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v55 = v73;
      v49 = v69;
      v52 = v68;
    }

    else
    {
      LOBYTE(v88) = 0;
      sub_100380624();
      v7 = v64;
      sub_1004A6B04();
      v31 = v14;
      LOBYTE(v86) = 0;
      sub_100381E8C();
      v32 = v63;
      sub_1004A6B94();
      v55 = v88;
      v75 = v89;
      LOBYTE(v84) = 1;
      sub_1004A6B94();
      v53 = 0;
      v71 = 0;
      v14 = (v65 + 8);
      (*(v65 + 8))(v7, v32);
      (*(v78 + 8))(v31, v11);
      swift_unknownObjectRelease();
      v78 = 0;
      v54 = 0;
      v49 = v86;
      v52 = v87;
    }
  }

  else if (v23 == 2)
  {
    LOBYTE(v88) = 2;
    sub_10038057C();
    v49 = v17;
    sub_1004A6B04();
    v33 = v78;
    sub_100381E8C();
    v36 = v67;
    v52 = v49;
    sub_1004A6B94();
    v71 = 0;
    (*(v66 + 8))(v49, v36);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v78 = 0;
    v54 = 0;
    v55 = v88;
    v75 = v89;
    v53 = 0x1000000000000000;
  }

  else
  {
    v7 = v14;
    v24 = v78;
    if (v23 == 3)
    {
      LOBYTE(v88) = 3;
      sub_100380528();
      v25 = v20;
      sub_1004A6B04();
      LOBYTE(v88) = 0;
      v37 = v70;
      v38 = sub_1004A6B74();
      v42 = v41;
      v43 = v25;
      v73 = v38;
      LOBYTE(v88) = 1;
      v44 = sub_1004A6B74();
      v45 = (v71 + 8);
      v14 = (v24 + 8);
      v71 = 0;
      v48 = *v45;
      v75 = v42;
      v49 = v44;
      v50 = v43;
      v52 = v51;
      v48(v50, v37);
      (*v14)(v7, v11);
      swift_unknownObjectRelease();
      v78 = 0;
      v53 = 0x1000000000000000;
      v54 = 0x2000000000000000;
      v55 = v73;
    }

    else
    {
      LOBYTE(v88) = 4;
      sub_1003804D4();
      v34 = v73;
      sub_1004A6B04();
      v71 = 0;
      (*(v68 + 8))(v34, v69);
      (*(v24 + 8))(v7, v11);
      swift_unknownObjectRelease();
      v55 = 0;
      v75 = 0;
      v49 = 0;
      v52 = 0;
      v7 = 0;
      v78 = 0;
      v11 = 0;
      v54 = 0;
      v14 = 0;
      v53 = 0x2000000000000000;
    }
  }

  result = sub_1000197E0(v79);
  v56 = v75;
  *v19 = v55;
  v19[1] = v56;
  v19[2] = v49;
  v19[3] = v52;
  v57 = v78;
  v19[4] = v7;
  v19[5] = v57;
  v19[6] = v11;
  v19[7] = v54;
  v19[8] = v14;
  v19[9] = v53;
  return result;
}

uint64_t sub_100381818(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_1003818B8()
{
  result = qword_1005DAFA0;
  if (!qword_1005DAFA0)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for Credentials.OAuthTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFA0);
  }

  return result;
}

unint64_t sub_100381910()
{
  result = qword_1005DAFA8;
  if (!qword_1005DAFA8)
  {
    result = swift_getWitnessTable(byte_1004F9EDC, &type metadata for Credentials.AppleToken2CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFA8);
  }

  return result;
}

unint64_t sub_100381968()
{
  result = qword_1005DAFB0;
  if (!qword_1005DAFB0)
  {
    result = swift_getWitnessTable(byte_1004F9F94, &type metadata for Credentials.AppleTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFB0);
  }

  return result;
}

unint64_t sub_1003819C0()
{
  result = qword_1005DAFB8;
  if (!qword_1005DAFB8)
  {
    result = swift_getWitnessTable(byte_1004FA04C, &type metadata for Credentials.UsernameCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFB8);
  }

  return result;
}

unint64_t sub_100381A18()
{
  result = qword_1005DAFC0;
  if (!qword_1005DAFC0)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFC0);
  }

  return result;
}

unint64_t sub_100381A70()
{
  result = qword_1005DAFC8;
  if (!qword_1005DAFC8)
  {
    result = swift_getWitnessTable(byte_1004F9FBC, &type metadata for Credentials.UsernameCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFC8);
  }

  return result;
}

unint64_t sub_100381AC8()
{
  result = qword_1005DAFD0;
  if (!qword_1005DAFD0)
  {
    result = swift_getWitnessTable(byte_1004F9FE4, &type metadata for Credentials.UsernameCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFD0);
  }

  return result;
}

unint64_t sub_100381B20()
{
  result = qword_1005DAFD8;
  if (!qword_1005DAFD8)
  {
    result = swift_getWitnessTable(byte_1004F9F04, &type metadata for Credentials.AppleTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFD8);
  }

  return result;
}

unint64_t sub_100381B78()
{
  result = qword_1005DAFE0;
  if (!qword_1005DAFE0)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for Credentials.AppleTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFE0);
  }

  return result;
}

unint64_t sub_100381BD0()
{
  result = qword_1005DAFE8;
  if (!qword_1005DAFE8)
  {
    result = swift_getWitnessTable(asc_1004F9E4C, &type metadata for Credentials.AppleToken2CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFE8);
  }

  return result;
}

unint64_t sub_100381C28()
{
  result = qword_1005DAFF0;
  if (!qword_1005DAFF0)
  {
    result = swift_getWitnessTable(asc_1004F9E74, &type metadata for Credentials.AppleToken2CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFF0);
  }

  return result;
}

unint64_t sub_100381C80()
{
  result = qword_1005DAFF8;
  if (!qword_1005DAFF8)
  {
    result = swift_getWitnessTable(byte_1004F9D94, &type metadata for Credentials.OAuthTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DAFF8);
  }

  return result;
}

unint64_t sub_100381CD8()
{
  result = qword_1005DB000;
  if (!qword_1005DB000)
  {
    result = swift_getWitnessTable(byte_1004F9DBC, &type metadata for Credentials.OAuthTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB000);
  }

  return result;
}

unint64_t sub_100381D30()
{
  result = qword_1005DB008;
  if (!qword_1005DB008)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for Credentials.PreAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB008);
  }

  return result;
}

unint64_t sub_100381D88()
{
  result = qword_1005DB010;
  if (!qword_1005DB010)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for Credentials.PreAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB010);
  }

  return result;
}

unint64_t sub_100381DE0()
{
  result = qword_1005DB018;
  if (!qword_1005DB018)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB018);
  }

  return result;
}

unint64_t sub_100381E38()
{
  result = qword_1005DB020;
  if (!qword_1005DB020)
  {
    result = swift_getWitnessTable(byte_1004FA09C, &type metadata for Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB020);
  }

  return result;
}

unint64_t sub_100381E8C()
{
  result = qword_1005DB058;
  if (!qword_1005DB058)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1005DB058);
  }

  return result;
}

uint64_t sub_100381EEC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_100381F20()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_100381F54()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_100381FB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003896B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100381FD8(uint64_t a1)
{
  v2 = sub_10038913C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382014(uint64_t a1)
{
  v2 = sub_10038913C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382050(uint64_t a1)
{
  v2 = sub_1003891A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038208C(uint64_t a1)
{
  v2 = sub_1003891A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003820C8(uint64_t a1)
{
  v2 = sub_1003892F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382104(uint64_t a1)
{
  v2 = sub_1003892F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382140(uint64_t a1)
{
  v2 = sub_100389248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038217C(uint64_t a1)
{
  v2 = sub_100389248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static IndexRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a4)
  {
    return sub_100385DD8(a2, a5);
  }

  return result;
}

uint64_t MessageToSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v24 = sub_10000C9C0(&qword_1005DB068, &qword_1004FA350);
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v20 - v4;
  v22 = sub_10000C9C0(&qword_1005DB070, &qword_1004FA358);
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v20 - v6;
  v8 = sub_10000C9C0(&qword_1005DB078, &qword_1004FA360);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v26 = sub_10000C9C0(&qword_1005DB080, &qword_1004FA368);
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v20 - v11;
  sub_10002587C(a1, a1[3]);
  sub_10038913C();
  sub_1004A6FA4();
  *&v30[9] = *(v2 + 25);
  v13 = v2[1];
  v29 = *v2;
  *v30 = v13;
  v14 = v30[24] >> 6;
  if (v14)
  {
    v30[24] &= 0x3Fu;
    if (v14 == 1)
    {
      v31 = v29;
      v32[0] = *v30;
      *(v32 + 9) = *&v30[9];
      LOBYTE(v27) = 1;
      sub_100389248();
      v15 = v26;
      sub_1004A6BD4();
      v27 = v31;
      v28[0] = v32[0];
      *(v28 + 9) = *(v32 + 9);
      sub_10038929C();
      v16 = v22;
      sub_1004A6C74();
      (*(v21 + 8))(v7, v16);
    }

    else
    {
      sub_100389190(&v29, &v33);
      LOBYTE(v27) = 2;
      sub_1003891A0();
      v15 = v26;
      sub_1004A6BD4();
      sub_100389190(&v33, &v27);
      sub_1003891F4();
      v19 = v24;
      sub_1004A6C74();
      (*(v23 + 8))(v5, v19);
    }

    return (*(v25 + 8))(v12, v15);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1003892F0();
    v17 = v26;
    sub_1004A6BD4();
    v27 = *v2;
    LOBYTE(v28[0]) = *(v2 + 16);
    sub_100389344();
    sub_1004A6C74();
    (*(v20 + 8))(v10, v8);
    return (*(v25 + 8))(v12, v17);
  }
}

double MessageToSearchIndexer.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1003897C4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10038272C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_100382778()
{
  v1 = 0x7865646E69;
  v2 = 0x69746E6564657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
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

uint64_t sub_1003827F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038A1A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100382820(uint64_t a1)
{
  v2 = sub_100389E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038285C(uint64_t a1)
{
  v2 = sub_100389E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382898(uint64_t a1)
{
  v2 = sub_100389FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003828D4(uint64_t a1)
{
  v2 = sub_100389FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382910(uint64_t a1)
{
  v2 = sub_10038A0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038294C(uint64_t a1)
{
  v2 = sub_10038A0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382988(uint64_t a1)
{
  v2 = sub_100389EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003829C4(uint64_t a1)
{
  v2 = sub_100389EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382A00(uint64_t a1)
{
  v2 = sub_10038A050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382A3C(uint64_t a1)
{
  v2 = sub_10038A050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageFromSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v35 = sub_10000C9C0(&qword_1005DB0C0, &qword_1004FA370);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v28 - v4;
  v33 = sub_10000C9C0(&qword_1005DB0C8, &qword_1004FA378);
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v28 - v5;
  v30 = sub_10000C9C0(&qword_1005DB0D0, &qword_1004FA380);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v28 - v7;
  v9 = sub_10000C9C0(&qword_1005DB0D8, &qword_1004FA388);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_10000C9C0(&qword_1005DB0E0, &qword_1004FA390);
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_10002587C(a1, a1[3]);
  sub_100389E9C();
  sub_1004A6FA4();
  v43 = *(v2 + 32);
  v15 = v43;
  v16 = v2[1];
  v41 = *v2;
  v42 = v16;
  v17 = v43 >> 6;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v43 &= 0x3Fu;
      sub_100389F98(&v41, &v47);
      LOBYTE(v38) = 2;
      sub_100389FA8();
      v21 = v37;
      sub_1004A6BD4();
      sub_100389F98(&v47, &v38);
      sub_100389FFC();
      v22 = v33;
      sub_1004A6C74();
      v23 = *(v32 + 8);
      v24 = v6;
    }

    else
    {
      LOBYTE(v38) = 3;
      sub_100389EF0();
      v26 = v31;
      v21 = v37;
      sub_1004A6BD4();
      v27 = v2[1];
      v38 = *v2;
      v39 = v27;
      sub_100389F44();
      v22 = v35;
      sub_1004A6C74();
      v23 = *(v34 + 8);
      v24 = v26;
    }

    v23(v24, v22);
  }

  else
  {
    if (!v17)
    {
      v18 = v41;
      LOBYTE(v38) = 0;
      sub_10038A0F8();
      v19 = v37;
      sub_1004A6BD4();
      LOBYTE(v38) = v18;
      sub_10038A14C();
      sub_1004A6C74();
      (*(v28 + 8))(v11, v9);
      return (*(v36 + 8))(v14, v19);
    }

    v43 &= 0x3Fu;
    v44 = v41;
    v45 = v42;
    v46 = v15 & 0x3F;
    LOBYTE(v38) = 1;
    sub_10038A050();
    v21 = v37;
    sub_1004A6BD4();
    v38 = v44;
    v39 = v45;
    v40 = v46;
    sub_10038A0A4();
    v25 = v30;
    sub_1004A6C74();
    (*(v29 + 8))(v8, v25);
  }

  return (*(v36 + 8))(v14, v21);
}

double MessageFromSearchIndexer.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10038A308(a2, v6);
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

uint64_t sub_1003830B0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t XPCSession.sendToSearchIndexer(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_10038ABE4();
  sub_10038AC38();

  sub_1004A4A84();
}

uint64_t XPCSession.sendToMaild(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_10036BE80();
  sub_10036B9D8();

  sub_1004A4A84();
}

unint64_t sub_100383334()
{
  v1 = *v0;
  v2 = 0x7265666544646964;
  v3 = 0xD000000000000014;
  v4 = 0x6C706D6F43646964;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746F4E646964;
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

uint64_t sub_1003833E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038AEC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100383410(uint64_t a1)
{
  v2 = sub_10038ACD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038344C(uint64_t a1)
{
  v2 = sub_10038ACD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383488(uint64_t a1)
{
  v2 = sub_10038ADCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003834C4(uint64_t a1)
{
  v2 = sub_10038ADCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383500(uint64_t a1)
{
  v2 = sub_10038AD78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038353C(uint64_t a1)
{
  v2 = sub_10038AD78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383578(uint64_t a1)
{
  v2 = sub_10038AE74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003835B4(uint64_t a1)
{
  v2 = sub_10038AE74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003835F0(uint64_t a1)
{
  v2 = sub_10038AE20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038362C(uint64_t a1)
{
  v2 = sub_10038AE20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383668(uint64_t a1)
{
  v2 = sub_10038AD24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003836A4(uint64_t a1)
{
  v2 = sub_10038AD24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IndexRequest.Response.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_10000C9C0(&qword_1005DB140, &qword_1004FA398);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_10000C9C0(&qword_1005DB148, &qword_1004FA3A0);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_10000C9C0(&qword_1005DB150, &qword_1004FA3A8);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_10000C9C0(&qword_1005DB158, &qword_1004FA3B0);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_10000C9C0(&qword_1005DB160, &qword_1004FA3B8);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_10000C9C0(&qword_1005DB168, &qword_1004FA3C0);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_10002587C(a1, a1[3]);
  sub_10038ACD0();
  sub_1004A6FA4();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_10038AE20();
      v28 = v41;
      sub_1004A6BD4();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_10038AE74();
    v25 = v41;
    sub_1004A6BD4();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_10038ADCC();
    v26 = v29;
    v25 = v41;
    sub_1004A6BD4();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_10038AD78();
    v19 = v32;
    v20 = v41;
    sub_1004A6BD4();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_10038AD24();
    v19 = v35;
    v20 = v41;
    sub_1004A6BD4();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_100383C6C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10038B08C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100383CB4()
{
  if (*v0)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_100383CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100383DBC(uint64_t a1)
{
  v2 = sub_10038B784();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383DF8(uint64_t a1)
{
  v2 = sub_10038B784();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383E34()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100383E54(uint64_t a1)
{
  v2 = sub_10038B880();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383E90(uint64_t a1)
{
  v2 = sub_10038B880();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383ECC(uint64_t a1)
{
  v2 = sub_10038B7D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383F08(uint64_t a1)
{
  v2 = sub_10038B7D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    v178 = v3[2];
    v179 = v6;
    v7 = v3[1];
    v176 = *v3;
    v177 = v7;
    v8 = v4[2];
    v9 = v4[3];
    v10 = *v4;
    *v182 = v4[1];
    *&v182[16] = v8;
    v11 = v4[4];
    *&v182[32] = v9;
    v183 = v11;
    v180 = v3[4];
    v181 = v10;
    v12 = *(&v177 + 1);
    v13 = v177;
    v14 = *(&v179 + 1);
    v15 = (*(&v180 + 1) >> 59) & 6 | ((*(&v179 + 1) & 0x2000000000000000) != 0);
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 2)
      {
        return 0;
      }

      v27 = *(&v181 + 1);
      v28 = v181;
      v29 = *(&v176 + 1) >> 62;
      v30 = *(&v181 + 1) >> 62;
      if (*(&v176 + 1) >> 62 == 3)
      {
        v31 = 0;
        if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v181 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_378;
          }
        }

LABEL_80:
        if (v30 <= 1)
        {
          goto LABEL_81;
        }

LABEL_40:
        if (v30 != 2)
        {
          if (v31)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v39 = *(v181 + 16);
        v38 = *(v181 + 24);
        v40 = __OFSUB__(v38, v39);
        v41 = v38 - v39;
        if (v40)
        {
          goto LABEL_387;
        }
      }

      else
      {
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v50 = *(v176 + 16);
            v49 = *(v176 + 24);
            v40 = __OFSUB__(v49, v50);
            v31 = v49 - v50;
            if (v40)
            {
              goto LABEL_401;
            }

            goto LABEL_80;
          }

          v31 = 0;
          if (v30 <= 1)
          {
            goto LABEL_81;
          }

          goto LABEL_40;
        }

        if (v29)
        {
          LODWORD(v31) = DWORD1(v176) - v176;
          if (__OFSUB__(DWORD1(v176), v176))
          {
            goto LABEL_403;
          }

          v31 = v31;
          goto LABEL_80;
        }

        v31 = BYTE14(v176);
        if (v30 > 1)
        {
          goto LABEL_40;
        }

LABEL_81:
        if (v30)
        {
          LODWORD(v41) = DWORD1(v181) - v181;
          if (__OFSUB__(DWORD1(v181), v181))
          {
            goto LABEL_384;
          }

          v41 = v41;
        }

        else
        {
          v41 = BYTE14(v181);
        }
      }

      if (v31 != v41)
      {
        return 0;
      }

      if (v31 < 1)
      {
        goto LABEL_378;
      }

      if (v29 > 1)
      {
        v173 = i;
        if (v29 == 2)
        {
          v57 = *(v176 + 16);
          v56 = *(v176 + 24);
          sub_100306F6C(&v181, v175);
          sub_100306F6C(&v176, v175);
          v58 = sub_1004A40D4();
          if (v58)
          {
            v59 = sub_1004A4104();
            if (__OFSUB__(v57, v59))
            {
              goto LABEL_426;
            }

            v58 += v57 - v59;
          }

          if (__OFSUB__(v56, v57))
          {
            goto LABEL_419;
          }

          goto LABEL_147;
        }

        memset(v174, 0, 14);
        sub_100306F6C(&v181, v175);
        sub_100306F6C(&v176, v175);
        sub_100066884(v174, v28, v27, v175);
        sub_1003817E8(&v181);
        sub_1003817E8(&v176);
        v73 = v175[0];
      }

      else
      {
        if (!v29)
        {
          v55 = i;
          LODWORD(v174[0]) = v176;
          WORD2(v174[0]) = WORD2(v176);
          *(v174 + 6) = *(&v176 + 6);
          sub_100306F6C(&v181, v175);
          sub_100306F6C(&v176, v175);
          sub_100066884(v174, v28, v27, v175);
          sub_1003817E8(&v181);
          sub_1003817E8(&v176);
          i = v55;
          if ((v175[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v173 = i;
        v71 = v176;
        if (v176 >> 32 < v176)
        {
          goto LABEL_416;
        }

        sub_100306F6C(&v181, v175);
        sub_100306F6C(&v176, v175);
        v58 = sub_1004A40D4();
        if (v58)
        {
          v72 = sub_1004A4104();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_431;
          }

          v58 += v71 - v72;
        }

LABEL_147:
        sub_1004A40F4();
        sub_100066884(v58, v28, v27, v175);
        sub_1003817E8(&v181);
        sub_1003817E8(&v176);
        v73 = v175[0];
      }

      i = v173;
      if ((v73 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_378;
    }

    if (v15 == 3)
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      v16 = *(&v177 + 1);
      v17 = i;
      v18 = *v182;
      v19 = *&v182[8];
      if (v176 != v181 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 == v18 && v16 == v19)
      {
        i = v17;
      }

      else
      {
        v48 = sub_1004A6D34();
        i = v17;
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 4)
      {
        return 0;
      }

      if (*(&v183 + 1) != 0x2000000000000000)
      {
        return 0;
      }

      v32 = vorrq_s8(*&v182[8], *&v182[24]);
      if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v183 | *v182 | *(&v181 + 1) | v181 | *&v182[40])
      {
        return 0;
      }
    }

LABEL_378:
    if (!i)
    {
      return 1;
    }

    v4 += 5;
    v3 += 5;
  }

  v172 = i;
  if (!v15)
  {
    if ((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0))
    {
      return 0;
    }

    v21 = *(&v181 + 1);
    v20 = v181;
    v22 = *v182;
    v23 = *&v182[8];
    v24 = *(&v176 + 1) >> 62;
    v25 = *(&v181 + 1) >> 62;
    if (*(&v176 + 1) >> 62 == 3)
    {
      v26 = 0;
      if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
      {
        v26 = 0;
        if (v181 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_112:
          sub_100306F6C(&v181, v175);
          sub_100306F6C(&v176, v175);
          goto LABEL_160;
        }
      }
    }

    else if (v24 > 1)
    {
      if (v24 != 2)
      {
        v26 = 0;
        if (v25 <= 1)
        {
LABEL_103:
          if (v25)
          {
            LODWORD(v44) = DWORD1(v181) - v181;
            if (__OFSUB__(DWORD1(v181), v181))
            {
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
LABEL_410:
              __break(1u);
LABEL_411:
              __break(1u);
LABEL_412:
              __break(1u);
LABEL_413:
              __break(1u);
LABEL_414:
              __break(1u);
LABEL_415:
              __break(1u);
LABEL_416:
              __break(1u);
LABEL_417:
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
            }

            v44 = v44;
          }

          else
          {
            v44 = BYTE14(v181);
          }

          goto LABEL_107;
        }

LABEL_47:
        if (v25 != 2)
        {
          if (v26)
          {
            return 0;
          }

          goto LABEL_112;
        }

        v43 = *(v181 + 16);
        v42 = *(v181 + 24);
        v40 = __OFSUB__(v42, v43);
        v44 = v42 - v43;
        if (v40)
        {
          goto LABEL_388;
        }

LABEL_107:
        if (v26 != v44)
        {
          return 0;
        }

        if (v26 < 1)
        {
          goto LABEL_112;
        }

        if (v24 > 1)
        {
          if (v24 != 2)
          {
            memset(v174, 0, 14);
            sub_100306F6C(&v181, v175);
            sub_100306F6C(&v176, v175);
            sub_100066884(v174, v20, v21, v175);
            if ((v175[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_160:
            v77 = v12 >> 62;
            v78 = v23 >> 62;
            if (v12 >> 62 == 3)
            {
              v79 = 0;
              if (!v13 && v12 == 0xC000000000000000 && v23 >> 62 == 3)
              {
                v79 = 0;
                if (!v22 && v23 == 0xC000000000000000)
                {
                  goto LABEL_365;
                }
              }
            }

            else if (v77 > 1)
            {
              if (v77 != 2)
              {
                v79 = 0;
                if (v78 <= 1)
                {
LABEL_181:
                  if (v78)
                  {
                    LODWORD(v82) = HIDWORD(v22) - v22;
                    if (__OFSUB__(HIDWORD(v22), v22))
                    {
                      goto LABEL_390;
                    }

                    v82 = v82;
                  }

                  else
                  {
                    v82 = BYTE6(v23);
                  }

LABEL_185:
                  if (v79 != v82)
                  {
                    goto LABEL_382;
                  }

                  if (v79 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v77 > 1)
                  {
                    if (v77 != 2)
                    {
                      *&v175[6] = 0;
                      *v175 = 0;
                      sub_100014CEC(v22, v23);
                      sub_100014CEC(v22, v23);
                      sub_100066884(v175, v22, v23, v174);
                      sub_1003817E8(&v181);
                      sub_1003817E8(&v176);
                      sub_100014D40(v22, v23);
                      v86 = v22;
                      goto LABEL_244;
                    }

                    v85 = v22;
                    v87 = *(v13 + 16);
                    v88 = *(v13 + 24);
                  }

                  else
                  {
                    v85 = v22;
                    if (!v77)
                    {
                      *v175 = v13;
                      *&v175[8] = v12;
                      v175[10] = BYTE2(v12);
                      v175[11] = BYTE3(v12);
                      v175[12] = BYTE4(v12);
                      v175[13] = BYTE5(v12);
                      sub_100014CEC(v22, v23);
                      sub_100014CEC(v22, v23);
                      sub_100066884(v175, v22, v23, v174);
                      sub_1003817E8(&v181);
                      sub_1003817E8(&v176);
                      sub_100014D40(v22, v23);
                      v86 = v22;
LABEL_244:
                      v108 = v23;
                      goto LABEL_377;
                    }

                    v87 = v13;
                    v88 = v13 >> 32;
                    if (v88 < v87)
                    {
                      goto LABEL_422;
                    }
                  }

                  sub_100014CEC(v85, v23);
                  sub_100014CEC(v85, v23);
                  sub_100014CEC(v85, v23);
                  v105 = sub_10003A0DC(v87, v88, v12 & 0x3FFFFFFFFFFFFFFFLL, v85, v23);
                  sub_100014D40(v85, v23);
                  sub_1003817E8(&v181);
                  sub_1003817E8(&v176);
                  sub_100014D40(v85, v23);
                  v106 = v85;
                  v107 = v23;
LABEL_373:
                  sub_100014D40(v106, v107);
                  i = v172;
                  if ((v105 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_378;
                }

LABEL_170:
                if (v78 != 2)
                {
                  goto LABEL_347;
                }

                v81 = *(v22 + 16);
                v80 = *(v22 + 24);
                v40 = __OFSUB__(v80, v81);
                v82 = v80 - v81;
                if (v40)
                {
                  goto LABEL_391;
                }

                goto LABEL_185;
              }

              v84 = *(v13 + 16);
              v83 = *(v13 + 24);
              v40 = __OFSUB__(v83, v84);
              v79 = v83 - v84;
              if (v40)
              {
                goto LABEL_406;
              }
            }

            else
            {
              if (!v77)
              {
                v79 = BYTE6(v12);
                if (v78 <= 1)
                {
                  goto LABEL_181;
                }

                goto LABEL_170;
              }

              LODWORD(v79) = HIDWORD(v13) - v13;
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_405;
              }

              v79 = v79;
            }

            if (v78 <= 1)
            {
              goto LABEL_181;
            }

            goto LABEL_170;
          }

          v167 = *&v182[8];
          v170 = *v182;
          v61 = *(v176 + 16);
          v165 = *(v176 + 24);
          sub_100306F6C(&v181, v175);
          sub_100306F6C(&v176, v175);
          v62 = sub_1004A40D4();
          if (v62)
          {
            v63 = sub_1004A4104();
            if (__OFSUB__(v61, v63))
            {
              goto LABEL_427;
            }

            v62 += v61 - v63;
          }

          if (__OFSUB__(v165, v61))
          {
            goto LABEL_420;
          }

          sub_1004A40F4();
          sub_100066884(v62, v20, v21, v175);
          v60 = v175[0];
        }

        else
        {
          v170 = *v182;
          if (!v24)
          {
            LODWORD(v174[0]) = v176;
            WORD2(v174[0]) = WORD2(v176);
            *(v174 + 6) = *(&v176 + 6);
            sub_100306F6C(&v181, v175);
            sub_100306F6C(&v176, v175);
            sub_100066884(v174, v20, v21, v175);
            v60 = v175[0];
            goto LABEL_157;
          }

          v167 = *&v182[8];
          v154 = *(&v177 + 1);
          v74 = v176;
          if (v176 >> 32 < v176)
          {
            goto LABEL_417;
          }

          sub_100306F6C(&v181, v175);
          sub_100306F6C(&v176, v175);
          v75 = sub_1004A40D4();
          if (v75)
          {
            v76 = sub_1004A4104();
            if (__OFSUB__(v74, v76))
            {
              goto LABEL_430;
            }

            v75 += v74 - v76;
          }

          v12 = v154;
          sub_1004A40F4();
          sub_100066884(v75, v20, v21, v175);
          v60 = v175[0];
        }

        v23 = v167;
LABEL_157:
        v22 = v170;
        if ((v60 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_160;
      }

      v52 = *(v176 + 16);
      v51 = *(v176 + 24);
      v40 = __OFSUB__(v51, v52);
      v26 = v51 - v52;
      if (v40)
      {
        goto LABEL_399;
      }
    }

    else
    {
      if (!v24)
      {
        v26 = BYTE14(v176);
        if (v25 <= 1)
        {
          goto LABEL_103;
        }

        goto LABEL_47;
      }

      LODWORD(v26) = DWORD1(v176) - v176;
      if (__OFSUB__(DWORD1(v176), v176))
      {
        goto LABEL_400;
      }

      v26 = v26;
    }

    if (v25 <= 1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v33 = *&v182[40];
  v158 = *(&v183 + 1);
  if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 1)
  {
    return 0;
  }

  v159 = v179;
  v160 = *(&v180 + 1);
  v34 = *&v182[8];
  v164 = *(&v178 + 1);
  v166 = *v182;
  v162 = v178;
  v163 = *&v182[16];
  v169 = *&v182[24];
  v35 = *(&v176 + 1) >> 62;
  v36 = *(&v181 + 1) >> 62;
  v161 = *&v182[32];
  v156 = v180;
  v157 = v183;
  if (*(&v176 + 1) >> 62 == 3)
  {
    v37 = 0;
    if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
    {
      v37 = 0;
      if (v181 == __PAIR128__(0xC000000000000000, 0))
      {
LABEL_131:
        sub_100306F6C(&v181, v175);
        sub_100306F6C(&v176, v175);
        v67 = v33;
        goto LABEL_202;
      }
    }

LABEL_121:
    if (v36 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      v37 = BYTE14(v176);
      if (v36 <= 1)
      {
        goto LABEL_122;
      }

      goto LABEL_54;
    }

    LODWORD(v37) = DWORD1(v176) - v176;
    if (__OFSUB__(DWORD1(v176), v176))
    {
      goto LABEL_404;
    }

    v37 = v37;
    goto LABEL_121;
  }

  if (v35 == 2)
  {
    v54 = *(v176 + 16);
    v53 = *(v176 + 24);
    v40 = __OFSUB__(v53, v54);
    v37 = v53 - v54;
    if (v40)
    {
      goto LABEL_402;
    }

    goto LABEL_121;
  }

  v37 = 0;
  if (v36 <= 1)
  {
LABEL_122:
    if (v36)
    {
      LODWORD(v47) = DWORD1(v181) - v181;
      if (__OFSUB__(DWORD1(v181), v181))
      {
        goto LABEL_386;
      }

      v47 = v47;
    }

    else
    {
      v47 = BYTE14(v181);
    }

    goto LABEL_126;
  }

LABEL_54:
  if (v36 != 2)
  {
    if (v37)
    {
      return 0;
    }

    goto LABEL_131;
  }

  v46 = *(v181 + 16);
  v45 = *(v181 + 24);
  v40 = __OFSUB__(v45, v46);
  v47 = v45 - v46;
  if (v40)
  {
    goto LABEL_385;
  }

LABEL_126:
  if (v37 != v47)
  {
    return 0;
  }

  if (v37 < 1)
  {
    goto LABEL_131;
  }

  if (v35 <= 1)
  {
    v152 = *&v182[8];
    if (!v35)
    {
      LODWORD(v174[0]) = v176;
      WORD2(v174[0]) = WORD2(v176);
      *(v174 + 6) = *(&v176 + 6);
      v64 = *(&v181 + 1);
      v65 = v181;
      sub_100306F6C(&v181, v175);
      sub_100306F6C(&v176, v175);
      sub_100066884(v174, v65, v64, v175);
      v66 = v175[0];
      goto LABEL_199;
    }

    v151 = v181;
    v153 = *(&v177 + 1);
    v89 = v176;
    if (v176 >> 32 < v176)
    {
      goto LABEL_415;
    }

    sub_100306F6C(&v181, v175);
    sub_100306F6C(&v176, v175);
    v69 = sub_1004A40D4();
    if (v69)
    {
      v90 = sub_1004A4104();
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_429;
      }

      v69 += v89 - v90;
    }

LABEL_198:
    sub_1004A40F4();
    sub_100066884(v69, v151, *(&v151 + 1), v175);
    v66 = v175[0];
    v12 = v153;
LABEL_199:
    v67 = v33;
    v34 = v152;
    if ((v66 & 1) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_202;
  }

  v151 = v181;
  if (v35 == 2)
  {
    v152 = *&v182[8];
    v153 = *(&v177 + 1);
    v68 = *(v176 + 16);
    v150 = *(v176 + 24);
    sub_100306F6C(&v181, v175);
    sub_100306F6C(&v176, v175);
    v69 = sub_1004A40D4();
    if (v69)
    {
      v70 = sub_1004A4104();
      if (__OFSUB__(v68, v70))
      {
        goto LABEL_428;
      }

      v69 += v68 - v70;
    }

    if (__OFSUB__(v150, v68))
    {
      goto LABEL_418;
    }

    goto LABEL_198;
  }

  memset(v174, 0, 14);
  sub_100306F6C(&v181, v175);
  sub_100306F6C(&v176, v175);
  sub_100066884(v174, v151, *(&v151 + 1), v175);
  v67 = v33;
  if ((v175[0] & 1) == 0)
  {
    goto LABEL_382;
  }

LABEL_202:
  v91 = v12 >> 62;
  v92 = v34 >> 62;
  if (v12 >> 62 == 3)
  {
    v93 = 0;
    v94 = v169;
    if (!v13 && v12 == 0xC000000000000000 && v34 >> 62 == 3)
    {
      v93 = 0;
      if (!v166 && v34 == 0xC000000000000000)
      {
LABEL_235:
        v100 = v161;
        v101 = v164;
        goto LABEL_249;
      }
    }

LABEL_224:
    if (v92 <= 1)
    {
      goto LABEL_225;
    }

    goto LABEL_212;
  }

  v94 = v169;
  if (v91 <= 1)
  {
    if (!v91)
    {
      v93 = BYTE6(v12);
      if (v92 <= 1)
      {
        goto LABEL_225;
      }

      goto LABEL_212;
    }

    LODWORD(v93) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_408;
    }

    v93 = v93;
    goto LABEL_224;
  }

  if (v91 == 2)
  {
    v99 = *(v13 + 16);
    v98 = *(v13 + 24);
    v40 = __OFSUB__(v98, v99);
    v93 = v98 - v99;
    if (v40)
    {
      goto LABEL_407;
    }

    goto LABEL_224;
  }

  v93 = 0;
  if (v92 <= 1)
  {
LABEL_225:
    if (v92)
    {
      LODWORD(v97) = HIDWORD(v166) - v166;
      if (__OFSUB__(HIDWORD(v166), v166))
      {
        goto LABEL_389;
      }

      v97 = v97;
    }

    else
    {
      v97 = BYTE6(v34);
    }

    goto LABEL_229;
  }

LABEL_212:
  if (v92 != 2)
  {
    v100 = v161;
    v101 = v164;
    if (v93)
    {
      goto LABEL_382;
    }

    goto LABEL_249;
  }

  v96 = *(v166 + 16);
  v95 = *(v166 + 24);
  v40 = __OFSUB__(v95, v96);
  v97 = v95 - v96;
  if (v40)
  {
    goto LABEL_392;
  }

LABEL_229:
  if (v93 != v97)
  {
    goto LABEL_382;
  }

  if (v93 < 1)
  {
    goto LABEL_235;
  }

  if (v91 > 1)
  {
    if (v91 == 2)
    {
      v103 = *(v13 + 24);
      v155 = *(v13 + 16);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      v104 = sub_10003A0DC(v155, v103, v12 & 0x3FFFFFFFFFFFFFFFLL, v166, v34);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v94 = v169;
      v101 = v164;
      if ((v104 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *&v175[6] = 0;
      *v175 = 0;
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100066884(v175, v166, v34, v174);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v101 = v164;
      if ((v174[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

  else
  {
    v102 = v34;
    if (v91)
    {
      v109 = v13;
      v110 = v13 >> 32;
      if (v13 >> 32 < v13)
      {
        goto LABEL_421;
      }

      v111 = v102;
      sub_100014CEC(v166, v102);
      sub_100014CEC(v166, v111);
      sub_100014CEC(v166, v111);
      v112 = sub_10003A0DC(v109, v110, v12 & 0x3FFFFFFFFFFFFFFFLL, v166, v111);
      sub_100014D40(v166, v111);
      sub_100014D40(v166, v111);
      sub_100014D40(v166, v111);
      v100 = v161;
      v94 = v169;
      v101 = v164;
      if ((v112 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *v175 = v13;
      *&v175[8] = v12;
      v175[10] = BYTE2(v12);
      v175[11] = BYTE3(v12);
      v175[12] = BYTE4(v12);
      v175[13] = BYTE5(v12);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100066884(v175, v166, v34, v174);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v101 = v164;
      if ((v174[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

LABEL_249:
  v113 = v101 >> 62;
  v114 = v94 >> 62;
  if (v101 >> 62 == 3)
  {
    v115 = 0;
    if (!v162 && v101 == 0xC000000000000000 && v94 >> 62 == 3)
    {
      v115 = 0;
      if (!v163 && v94 == 0xC000000000000000)
      {
        goto LABEL_291;
      }
    }

LABEL_271:
    if (v114 <= 1)
    {
      goto LABEL_272;
    }

    goto LABEL_259;
  }

  if (v113 <= 1)
  {
    if (!v113)
    {
      v115 = BYTE6(v101);
      if (v114 <= 1)
      {
        goto LABEL_272;
      }

      goto LABEL_259;
    }

    LODWORD(v115) = HIDWORD(v162) - v162;
    if (__OFSUB__(HIDWORD(v162), v162))
    {
      goto LABEL_409;
    }

    v115 = v115;
    goto LABEL_271;
  }

  if (v113 == 2)
  {
    v120 = *(v162 + 16);
    v119 = *(v162 + 24);
    v40 = __OFSUB__(v119, v120);
    v115 = v119 - v120;
    if (v40)
    {
      goto LABEL_410;
    }

    goto LABEL_271;
  }

  v115 = 0;
  if (v114 <= 1)
  {
LABEL_272:
    if (v114)
    {
      LODWORD(v118) = HIDWORD(v163) - v163;
      if (__OFSUB__(HIDWORD(v163), v163))
      {
        goto LABEL_393;
      }

      v118 = v118;
    }

    else
    {
      v118 = BYTE6(v94);
    }

    goto LABEL_276;
  }

LABEL_259:
  if (v114 != 2)
  {
    if (v115)
    {
      goto LABEL_382;
    }

    goto LABEL_291;
  }

  v117 = *(v163 + 16);
  v116 = *(v163 + 24);
  v40 = __OFSUB__(v116, v117);
  v118 = v116 - v117;
  if (v40)
  {
    goto LABEL_394;
  }

LABEL_276:
  if (v115 != v118)
  {
    goto LABEL_382;
  }

  if (v115 < 1)
  {
    goto LABEL_291;
  }

  if (v113 > 1)
  {
    if (v113 == 2)
    {
      v122 = v101;
      v168 = *(v162 + 24);
      v171 = *(v162 + 16);
      sub_100014CEC(v163, v94);
      sub_100014CEC(v163, v94);
      sub_100014CEC(v163, v94);
      LOBYTE(v122) = sub_10003A0DC(v171, v168, v122 & 0x3FFFFFFFFFFFFFFFLL, v163, v94);
      sub_100014D40(v163, v94);
      sub_100014D40(v163, v94);
      sub_100014D40(v163, v94);
      if ((v122 & 1) == 0)
      {
        goto LABEL_382;
      }

      goto LABEL_291;
    }

    *&v175[6] = 0;
    *v175 = 0;
    sub_100014CEC(v163, v94);
    sub_100014CEC(v163, v94);
    sub_100066884(v175, v163, v94, v174);
    sub_100014D40(v163, v94);
    v121 = v163;
    goto LABEL_290;
  }

  if (!v113)
  {
    *v175 = v162;
    *&v175[8] = v101;
    v175[10] = BYTE2(v101);
    v175[11] = BYTE3(v101);
    v175[12] = BYTE4(v101);
    v175[13] = BYTE5(v101);
    sub_100014CEC(v163, v94);
    sub_100014CEC(v163, v94);
    sub_100066884(v175, v163, v94, v174);
    sub_100014D40(v163, v94);
    v121 = v163;
LABEL_290:
    sub_100014D40(v121, v94);
    if ((v174[0] & 1) == 0)
    {
      goto LABEL_382;
    }

LABEL_291:
    v124 = v14 >> 62;
    v125 = v67 >> 62;
    if (v14 >> 62 == 3)
    {
      v126 = 0;
      if (!v159 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v67 >> 62 == 3)
      {
        v126 = 0;
        if (!v100 && (v67 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
        {
          goto LABEL_324;
        }
      }
    }

    else if (v124 > 1)
    {
      if (v124 != 2)
      {
        v126 = 0;
        if (v125 <= 1)
        {
LABEL_314:
          if (v125)
          {
            LODWORD(v129) = HIDWORD(v100) - v100;
            if (__OFSUB__(HIDWORD(v100), v100))
            {
              goto LABEL_395;
            }

            v129 = v129;
          }

          else
          {
            v129 = BYTE6(v67);
          }

          goto LABEL_318;
        }

LABEL_301:
        if (v125 != 2)
        {
          v132 = v156;
          v133 = v157;
          v134 = v158;
          if (v126)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

        v128 = *(v100 + 16);
        v127 = *(v100 + 24);
        v40 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v40)
        {
          goto LABEL_396;
        }

LABEL_318:
        if (v126 != v129)
        {
          goto LABEL_382;
        }

        if (v126 >= 1)
        {
          if (v124 > 1)
          {
            if (v124 != 2)
            {
              *&v175[6] = 0;
              *v175 = 0;
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v175, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v174);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              v132 = v156;
              v133 = v157;
              v134 = v158;
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_333:
              v138 = v134 & 0xCFFFFFFFFFFFFFFFLL;
              v139 = v160 >> 62;
              v140 = v134 >> 62;
              if (v160 >> 62 == 3)
              {
                v79 = 0;
                if (!v132 && (v160 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v134 >> 62 == 3)
                {
                  v79 = 0;
                  if (!v133 && v138 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v139 > 1)
              {
                if (v139 != 2)
                {
                  v79 = 0;
                  if (v140 <= 1)
                  {
LABEL_356:
                    if (v140)
                    {
                      LODWORD(v143) = HIDWORD(v133) - v133;
                      if (__OFSUB__(HIDWORD(v133), v133))
                      {
                        goto LABEL_397;
                      }

                      v143 = v143;
                    }

                    else
                    {
                      v143 = BYTE6(v134);
                    }

                    goto LABEL_360;
                  }

LABEL_343:
                  if (v140 != 2)
                  {
LABEL_347:
                    if (v79)
                    {
                      goto LABEL_382;
                    }

LABEL_365:
                    sub_1003817E8(&v181);
                    sub_1003817E8(&v176);
                    i = v172;
                    goto LABEL_378;
                  }

                  v142 = *(v133 + 16);
                  v141 = *(v133 + 24);
                  v40 = __OFSUB__(v141, v142);
                  v143 = v141 - v142;
                  if (v40)
                  {
                    goto LABEL_398;
                  }

LABEL_360:
                  if (v79 != v143)
                  {
                    goto LABEL_382;
                  }

                  if (v79 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v139 > 1)
                  {
                    if (v139 != 2)
                    {
                      *&v175[6] = 0;
                      *v175 = 0;
                      sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v133, v138);
                      goto LABEL_376;
                    }

                    v146 = *(v132 + 16);
                    v147 = *(v132 + 24);
                    sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v133, v138);
                    sub_100014CEC(v133, v138);
                    v148 = v160 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    if (!v139)
                    {
                      *v175 = v132;
                      *&v175[8] = v160;
                      *&v175[12] = WORD2(v160);
                      sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v133, v138);
LABEL_376:
                      sub_100066884(v175, v133, v138, v174);
                      sub_1003817E8(&v181);
                      sub_1003817E8(&v176);
                      sub_100014D40(v133, v138);
                      v86 = v133;
                      v108 = v138;
LABEL_377:
                      sub_100014D40(v86, v108);
                      i = v172;
                      if ((v174[0] & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_378;
                    }

                    v146 = v132;
                    v147 = v132 >> 32;
                    if (v132 >> 32 < v132)
                    {
                      goto LABEL_425;
                    }

                    sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v133, v138);
                    sub_100014CEC(v133, v138);
                    v148 = v160 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  v105 = sub_10003A0DC(v146, v147, v148, v133, v138);
                  sub_100014D40(v133, v138);
                  sub_1003817E8(&v181);
                  sub_1003817E8(&v176);
                  sub_100014D40(v133, v138);
                  v106 = v133;
                  v107 = v138;
                  goto LABEL_373;
                }

                v145 = *(v132 + 16);
                v144 = *(v132 + 24);
                v40 = __OFSUB__(v144, v145);
                v79 = v144 - v145;
                if (v40)
                {
                  goto LABEL_413;
                }
              }

              else
              {
                if (!v139)
                {
                  v79 = BYTE6(v160);
                  if (v140 <= 1)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_343;
                }

                LODWORD(v79) = HIDWORD(v132) - v132;
                if (__OFSUB__(HIDWORD(v132), v132))
                {
                  goto LABEL_414;
                }

                v79 = v79;
              }

              if (v140 <= 1)
              {
                goto LABEL_356;
              }

              goto LABEL_343;
            }

            v135 = *(v159 + 16);
            v136 = *(v159 + 24);
          }

          else
          {
            if (!v124)
            {
              *v175 = v159;
              *&v175[8] = v14;
              v175[10] = BYTE2(v14);
              v175[11] = BYTE3(v14);
              v175[12] = BYTE4(v14);
              v175[13] = BYTE5(v14);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v175, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v174);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              v132 = v156;
              v133 = v157;
              v134 = v158;
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

              goto LABEL_333;
            }

            v135 = v159;
            v136 = v159 >> 32;
            if (v159 >> 32 < v159)
            {
              goto LABEL_424;
            }
          }

          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          v137 = sub_10003A0DC(v135, v136, v14 & 0x1FFFFFFFFFFFFFFFLL, v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          v132 = v156;
          v133 = v157;
          v134 = v158;
          if ((v137 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

LABEL_324:
        v132 = v156;
        v133 = v157;
        v134 = v158;
        goto LABEL_333;
      }

      v131 = *(v159 + 16);
      v130 = *(v159 + 24);
      v40 = __OFSUB__(v130, v131);
      v126 = v130 - v131;
      if (v40)
      {
        goto LABEL_411;
      }
    }

    else
    {
      if (!v124)
      {
        v126 = BYTE6(v14);
        if (v125 <= 1)
        {
          goto LABEL_314;
        }

        goto LABEL_301;
      }

      LODWORD(v126) = HIDWORD(v159) - v159;
      if (__OFSUB__(HIDWORD(v159), v159))
      {
        goto LABEL_412;
      }

      v126 = v126;
    }

    if (v125 <= 1)
    {
      goto LABEL_314;
    }

    goto LABEL_301;
  }

  if (v162 >> 32 < v162)
  {
    goto LABEL_423;
  }

  sub_100014CEC(v163, v94);
  sub_100014CEC(v163, v94);
  sub_100014CEC(v163, v94);
  v123 = sub_10003A0DC(v162, v162 >> 32, v164 & 0x3FFFFFFFFFFFFFFFLL, v163, v94);
  sub_100014D40(v163, v94);
  sub_100014D40(v163, v94);
  sub_100014D40(v163, v94);
  if (v123)
  {
    goto LABEL_291;
  }

LABEL_382:
  sub_1003817E8(&v181);
  sub_1003817E8(&v176);
  return 0;
}

uint64_t sub_100385C54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100385CB0(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 4;
    v4 = a2 + 4;
    v5 = a1[4];
    v6 = a2[4];
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = a2 + 6;
      v9 = a2 + 5;
      v10 = a1 + 5;
      v11 = a1 + 6;
      v12 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_11:
        v15 = *v10 == *v9 && *v11 == *v8;
        if (!v15 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v2)
        {
          return 1;
        }

        result = 0;
        v17 = 3 * v12++;
        v17 *= 8;
        v11 = (v3 + v17 + 16);
        v10 = (v3 + v17 + 8);
        v5 = *(v3 + v17);
        v9 = (v4 + v17 + 8);
        v8 = (v4 + v17 + 16);
        v6 = *(v4 + v17);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v13 = (v5 + 32);
      v14 = (v6 + 32);
      while (*v13 == *v14)
      {
        ++v13;
        ++v14;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100385DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 66);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 66);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      if (v4 == v8 && v5 == v9)
      {
        if (v6 != v10)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1004A6D34();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v10)
        {
          return result;
        }
      }

      if (v7 >> 6)
      {
        if (v7 >> 6 == 1)
        {
          result = 0;
          if ((v11 & 0xC0) != 0x40 || ((v11 ^ v7) & 0x3F) != 0)
          {
            return result;
          }
        }

        else if (v11 != 128)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v11 > 0x3F || v7 != v11)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t IndexRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a2;
  v22 = a4;
  v18 = a3;
  v5 = sub_10000C9C0(&qword_1005DB1A0, &qword_1004FA3C8);
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10000C9C0(&qword_1005DB1A8, &qword_1004FA3D0);
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_10000C9C0(&qword_1005DB1B0, &qword_1004FA3D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10002587C(a1, a1[3]);
  sub_10038B784();
  sub_1004A6FA4();
  if (v22)
  {
    LOBYTE(v26) = 1;
    sub_10038B7D8();
    sub_1004A6BD4();
    v26 = v23;
    sub_10038B82C();
    sub_1004A6C74();
    (*(v19 + 8))(v7, v5);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_10038B880();
    sub_1004A6BD4();
    v26 = v23;
    v25 = 0;
    sub_10038B82C();
    v15 = v21;
    v16 = v24;
    sub_1004A6C74();
    if (v16)
    {
      (*(v20 + 8))(v10, v15);
      return (*(v12 + 8))(v14, v11);
    }

    v26 = v18;
    v25 = 1;
    sub_10000C9C0(&qword_1005DB1D8, &qword_1004FA3E0);
    sub_10038B8D4();
    sub_1004A6C74();
    (*(v20 + 8))(v10, v15);
  }

  return (*(v12 + 8))(v14, v11);
}

void *IndexRequest.init(from:)(void *a1)
{
  result = sub_10038B9AC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_100386320@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10038B9AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100386374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*a1 == *a2)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v3 = *(a2 + 16);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      return sub_100385DD8(*(a1 + 8), *(a2 + 8));
    }
  }
}

uint64_t IndexRequest.ID.next.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int IndexRequest.ID.hashValue.getter(Swift::UInt a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

uint64_t sub_100386430()
{
  sub_10000C9C0(&qword_1005DB778, &qword_1004FD4E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1005DB060 = result;
  return result;
}

void static IndexRequest.ID.makeNext()()
{
  if (qword_1005DAC80 != -1)
  {
    swift_once();
  }

  v0 = off_1005DB060;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *&v0[4]._os_unfair_lock_opaque = v1 + 1;
    os_unfair_lock_unlock(v0 + 6);
  }
}

uint64_t IndexRequest.ID.init(from:)(void *a1)
{
  sub_100104D00(a1, v4);
  v2 = sub_1004A5DE4();
  sub_1000197E0(a1);
  return v2;
}

uint64_t sub_10038657C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100104D00(a1, v7);
  v5 = sub_1004A5DE4();
  result = sub_1000197E0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1003866A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657243656B616DLL && a2 == 0xEF736C6169746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100386738(uint64_t a1)
{
  v2 = sub_10038BF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386774(uint64_t a1)
{
  v2 = sub_10038BF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003867B0(uint64_t a1)
{
  v2 = sub_10038BFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003867EC(uint64_t a1)
{
  v2 = sub_10038BFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CredentialRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = sub_10000C9C0(&qword_1005DB1F0, &qword_1004FA3E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_10000C9C0(&qword_1005DB1F8, &qword_1004FA3F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10002587C(a1, a1[3]);
  sub_10038BF7C();
  sub_1004A6FA4();
  sub_10038BFD0();
  sub_1004A6BD4();
  v15 = v13;
  v16 = v14;
  sub_10037DF88();
  sub_1004A6C74();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_100386A50@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10038C024(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100386AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100386B44(uint64_t a1)
{
  v2 = sub_10038C3A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386B80(uint64_t a1)
{
  v2 = sub_10038C3A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100386BBC(uint64_t a1)
{
  v2 = sub_10038C3F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386BF8(uint64_t a1)
{
  v2 = sub_10038C3F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CredentialResponse.encode(to:)(void *a1, uint64_t a2)
{
  v13[0] = sub_10000C9C0(&qword_1005DB210, &qword_1004FA3F8);
  v4 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v6 = v13 - v5;
  v7 = sub_10000C9C0(&qword_1005DB218, &qword_1004FA400);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_10002587C(a1, a1[3]);
  sub_10038C3A4();
  sub_1004A6FA4();
  sub_10038C3F8();
  sub_1004A6BD4();
  v13[3] = a2;
  sub_10000C9C0(&qword_1005DB230, &qword_1004FA408);
  sub_10038C44C();
  v11 = v13[0];
  sub_1004A6C74();
  (*(v4 + 8))(v6, v11);
  return (*(v8 + 8))(v10, v7);
}

void *sub_100386E6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10038C524(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100386EC0()
{
  v1 = *v0;
  v2 = 0x686372616573;
  v3 = 0xD000000000000015;
  v4 = 0x6C616E41646E6573;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 1)
  {
    v5 = 0x70756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_100386F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038CC80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100386FB4(uint64_t a1)
{
  v2 = sub_10038C8B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386FF0(uint64_t a1)
{
  v2 = sub_10038C8B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_1003870F8(uint64_t a1)
{
  v2 = sub_10038C95C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387134(uint64_t a1)
{
  v2 = sub_10038C95C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387170()
{
  v1 = 0x65726F666562;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1003871B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038CE88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003871E0(uint64_t a1)
{
  v2 = sub_10038CB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038721C(uint64_t a1)
{
  v2 = sub_10038CB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387258(uint64_t a1)
{
  v2 = sub_10038CADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387294(uint64_t a1)
{
  v2 = sub_10038CADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003872D0(uint64_t a1)
{
  v2 = sub_10038CB84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038730C(uint64_t a1)
{
  v2 = sub_10038CB84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387348(uint64_t a1)
{
  v2 = sub_10038CBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387384(uint64_t a1)
{
  v2 = sub_10038CBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003873C0(uint64_t a1)
{
  v2 = sub_10038C908();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003873FC(uint64_t a1)
{
  v2 = sub_10038C908();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DB248, &qword_1004FA410);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v47 - v5;
  v6 = sub_10000C9C0(&qword_1005DB250, &qword_1004FA418);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v47 - v7;
  v8 = sub_10000C9C0(&qword_1005DB258, &qword_1004FA420);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v47 = &v47 - v9;
  v10 = sub_10000C9C0(&qword_1005DB260, &qword_1004FA428);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = &v47 - v11;
  v12 = sub_10000C9C0(&qword_1005DB268, &qword_1004FA430);
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10000C9C0(&qword_1005DB270, &qword_1004FA438);
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v61 = sub_10000C9C0(&qword_1005DB278, &qword_1004FA440);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = &v47 - v18;
  sub_10002587C(a1, a1[3]);
  sub_10038C8B4();
  v62 = v19;
  sub_1004A6FA4();
  v21 = *v2;
  v20 = *(v2 + 8);
  v22 = *(v2 + 16);
  v23 = *(v2 + 40);
  if (v23 <= 1)
  {
    if (*(v2 + 40))
    {
      LOBYTE(v65) = 1;
      sub_10038CB84();
      v45 = v61;
      v46 = v62;
      sub_1004A6BD4();
      v65 = v21;
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_100391ACC(&qword_1005D0A68, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      sub_1004A6C74();
      (*(v54 + 8))(v14, v12);
      return (*(v63 + 8))(v46, v45);
    }

    else
    {
      LOBYTE(v65) = 0;
      sub_10038CBD8();
      v34 = v61;
      v35 = v62;
      sub_1004A6BD4();
      v65 = v21;
      v66 = v20;
      v67 = v22;
      sub_10038CC2C();
      sub_1004A6C74();
      (*(v53 + 8))(v17, v15);
      return (*(v63 + 8))(v35, v34);
    }
  }

  else
  {
    v24 = *(v2 + 24);
    v25 = *(v2 + 28);
    v26 = *(v2 + 32);
    if (v23 == 2)
    {
      v60 = *(v2 + 32);
      LOBYTE(v65) = 2;
      sub_10038CB30();
      v36 = v55;
      v38 = v61;
      v37 = v62;
      sub_1004A6BD4();
      v65 = v21;
      v66 = v20;
      v67 = v22;
      v68 = 0;
      sub_10038C9B0();
      v39 = v57;
      v40 = v64;
      sub_1004A6C74();
      if (!v40)
      {
        LODWORD(v65) = v24;
        BYTE4(v65) = v25 & 1;
        v68 = 1;
        sub_10038CA88();
        sub_1004A6C14();
        LOBYTE(v65) = 2;
        sub_1004A6C64();
      }

      (*(v56 + 8))(v36, v39);
      return (*(v63 + 8))(v37, v38);
    }

    else
    {
      v27 = v24 | (v25 << 32) | ((*(v2 + 29) | (*(v2 + 31) << 16)) << 40);
      v28 = v61;
      if (v23 == 3)
      {
        LOBYTE(v65) = 4;
        sub_10038C95C();
        v29 = v58;
        v30 = v62;
        sub_1004A6BD4();
        v65 = v21;
        v66 = v20;
        v67 = v22;
        v68 = 0;
        sub_10038C9B0();
        v31 = v60;
        v32 = v64;
        sub_1004A6C74();
        if (!v32)
        {
          v65 = v27;
          v68 = 1;
          sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
          sub_10038CA04();
          sub_1004A6C74();
        }

        (*(v59 + 8))(v29, v31);
        return (*(v63 + 8))(v30, v28);
      }

      else
      {
        v41 = v62;
        if (v22 | v20 | v21 | v26 | v27)
        {
          LOBYTE(v65) = 5;
          sub_10038C908();
          v42 = v50;
          sub_1004A6BD4();
          v44 = v51;
          v43 = v52;
        }

        else
        {
          LOBYTE(v65) = 3;
          sub_10038CADC();
          v42 = v47;
          sub_1004A6BD4();
          v44 = v48;
          v43 = v49;
        }

        (*(v44 + 8))(v42, v43);
        return (*(v63 + 8))(v41, v28);
      }
    }
  }
}

double SearchRequest.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10038CF90(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100387D5C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_100387DA8()
{
  v1 = *v0;
  v2 = 0x6552686372616573;
  v3 = 0x646564756C637865;
  if (v1 != 4)
  {
    v3 = 0x6C616E41746E6573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x655270756B6F6F6CLL;
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

uint64_t sub_100387E84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10038DF9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100387EAC(uint64_t a1)
{
  v2 = sub_10038DCFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387EE8(uint64_t a1)
{
  v2 = sub_10038DCFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387F24(uint64_t a1)
{
  v2 = sub_10038DDA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387F60(uint64_t a1)
{
  v2 = sub_10038DDA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387F9C(uint64_t a1)
{
  v2 = sub_10038DE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387FD8(uint64_t a1)
{
  v2 = sub_10038DE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100388014(uint64_t a1)
{
  v2 = sub_10038DDF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100388050(uint64_t a1)
{
  v2 = sub_10038DDF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038808C(uint64_t a1)
{
  v2 = sub_10038DEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003880C8(uint64_t a1)
{
  v2 = sub_10038DEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100388104(uint64_t a1)
{
  v2 = sub_10038DF48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100388140(uint64_t a1)
{
  v2 = sub_10038DF48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038817C(uint64_t a1)
{
  v2 = sub_10038DD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003881B8(uint64_t a1)
{
  v2 = sub_10038DD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003881F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(*(v3 + 56) + 8 * v12);

    v18 = sub_10035E248(v15, v14, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 32;
      while (v22)
      {
        if (*(v21 + v24) != *(v17 + v24))
        {
          goto LABEL_26;
        }

        v24 += 4;
        if (!--v22)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:

    v7 = v25;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SearchResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DB2E0, &qword_1004FA458);
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v47 = &v39 - v5;
  v6 = sub_10000C9C0(&qword_1005DB2E8, &qword_1004FA460);
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v48 = &v39 - v7;
  v8 = sub_10000C9C0(&qword_1005DB2F0, &qword_1004FA468);
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v44 = &v39 - v9;
  v10 = sub_10000C9C0(&qword_1005DB2F8, &qword_1004FA470);
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = sub_10000C9C0(&qword_1005DB300, &qword_1004FA478);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = sub_10000C9C0(&qword_1005DB308, &qword_1004FA480);
  v39 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v58 = sub_10000C9C0(&qword_1005DB310, &qword_1004FA488);
  v54 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v39 - v19;
  sub_10002587C(a1, a1[3]);
  sub_10038DCFC();
  v53 = v20;
  sub_1004A6FA4();
  v21 = *v2;
  v22 = v2[1];
  v23 = *(v2 + 32);
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      LOBYTE(v55) = 3;
      sub_10038DDF8();
      v34 = v44;
      v28 = v58;
      v30 = v53;
      sub_1004A6BD4();
      v55 = v21;
      v56 = v22;
      v57 = *(v2 + 1);
      sub_100389F44();
      v35 = v46;
      sub_1004A6C74();
      (*(v45 + 8))(v34, v35);
    }

    else
    {
      v28 = v58;
      if (v23 != 4)
      {
        LOBYTE(v55) = 5;
        sub_10038DD50();
        v37 = v47;
        v38 = v53;
        sub_1004A6BD4();
        (*(v49 + 8))(v37, v50);
        return (*(v54 + 8))(v38, v28);
      }

      LOBYTE(v55) = 4;
      sub_10038DDA4();
      v29 = v48;
      v30 = v53;
      sub_1004A6BD4();
      v55 = v21;
      sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
      sub_10038CA04();
      v31 = v52;
      sub_1004A6C74();
      (*(v51 + 8))(v29, v31);
    }
  }

  else
  {
    if (!*(v2 + 32))
    {
      LOBYTE(v55) = 0;
      sub_10038DF48();
      v32 = v58;
      v33 = v53;
      sub_1004A6BD4();
      v55 = v21;
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB358, sub_10038C9B0, sub_10038CA04, &protocol conformance descriptor for <> [A : B]);
      sub_1004A6C74();
      (*(v39 + 8))(v18, v16);
      return (*(v54 + 8))(v33, v32);
    }

    if (v23 == 1)
    {
      LOBYTE(v55) = 1;
      sub_10038DEF4();
      v24 = v58;
      v25 = v53;
      sub_1004A6BD4();
      v55 = v21;
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB358, sub_10038C9B0, sub_10038CA04, &protocol conformance descriptor for <> [A : B]);
      v26 = v41;
      sub_1004A6C74();
      (*(v40 + 8))(v15, v26);
      return (*(v54 + 8))(v25, v24);
    }

    LOBYTE(v55) = 2;
    sub_10038DE4C();
    v28 = v58;
    v30 = v53;
    sub_1004A6BD4();
    v55 = v21;
    v56 = v22;
    sub_10038DEA0();
    v36 = v43;
    sub_1004A6C14();
    (*(v42 + 8))(v12, v36);
  }

  return (*(v54 + 8))(v30, v28);
}

double SearchResponse.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10038E1BC(a2, v6);
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

unint64_t sub_100388C48(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 <= 1)
  {
    if (!*(a1 + 40))
    {
      if (*(a2 + 40))
      {
        return 0;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = [result uniqueIdentifier];
      v21 = sub_1004A5764();
      v23 = v22;

      v24 = [v19 uniqueIdentifier];
      v25 = sub_1004A5764();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        if (v5 != v18)
        {
          return 0;
        }
      }

      else
      {
        v29 = sub_1004A6D34();

        if ((v29 & 1) == 0 || v5 != v18)
        {
          return 0;
        }
      }

      return (sub_100385CB0(v4, v17) & 1) != 0;
    }

    if (*(a2 + 40) == 1)
    {
      v38 = *a2;

      return sub_10020FB40(result, v38);
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 32);
  if (v6 == 2)
  {
    if (*(a2 + 40) == 2)
    {
      v30 = *a2;
      v31 = *(result + 16);
      if (v31 == *(*a2 + 16))
      {
        v32 = *(a2 + 24);
        v33 = *(a2 + 28);
        v34 = *(a2 + 32);
        if (v31 && v30 != result)
        {
          v35 = (result + 32);
          v36 = (v30 + 32);
          while (*v35 == *v36)
          {
            ++v35;
            ++v36;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

          return 0;
        }

LABEL_36:
        if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1004A6D34() & 1) != 0)
        {
          if (v8)
          {
            if ((v33 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            result = 0;
            if ((v33 & 1) != 0 || v7 != v32)
            {
              return result;
            }
          }

          return v9 == v34;
        }
      }
    }

    return 0;
  }

  v10 = v7 | (v8 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
  if (v6 != 3)
  {
    if (v4 | v5 | result | v9 | v10)
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v37 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      v39 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) != 3)
  {
    return 0;
  }

  v11 = *a2;
  v12 = *(result + 16);
  if (v12 != *(*a2 + 16))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  if (v12)
  {
    v14 = v11 == result;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_14:
    if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1004A6D34() & 1) != 0)
    {

      return sub_100385C54(v10, v13);
    }

    return 0;
  }

  v15 = (result + 32);
  v16 = (v11 + 32);
  while (v12)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (!(v6 >> 6))
  {
    if (*(a2 + 40) <= 0x3Fu)
    {
      if (v5)
      {
        if ((*(a2 + 16) & (v4 == *a2)) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(a2 + 16) & 1 | (v4 != *a2) || (sub_100385DD8(v3, *(a2 + 8)) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = 1;
      return v10 & 1;
    }

LABEL_16:
    v10 = 0;
    return v10 & 1;
  }

  if (v6 >> 6 == 1)
  {
    v16[0] = v4;
    v16[1] = v3;
    v16[2] = v5;
    v17 = *(a1 + 24);
    v18 = v6 & 0x3F;
    v7 = *(a2 + 40);
    if ((v7 & 0xC0) == 0x40)
    {
      v8 = *(a2 + 32);
      v9 = *(a2 + 16);
      v13[0] = *a2;
      v13[1] = v9;
      v14 = v8;
      v15 = v7 & 0x3F;
      v10 = _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(v16, v13);
      return v10 & 1;
    }

    goto LABEL_16;
  }

  if ((*(a2 + 40) & 0xC0) != 0x80)
  {
    goto LABEL_16;
  }

  v11 = *a2;

  return _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v4, v11);
}

unint64_t sub_10038913C()
{
  result = qword_1005DB088;
  if (!qword_1005DB088)
  {
    result = swift_getWitnessTable(byte_1004FD3F4, &type metadata for MessageToSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB088);
  }

  return result;
}

unint64_t sub_1003891A0()
{
  result = qword_1005DB090;
  if (!qword_1005DB090)
  {
    result = swift_getWitnessTable(byte_1004FD3A4, &type metadata for MessageToSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB090);
  }

  return result;
}

unint64_t sub_1003891F4()
{
  result = qword_1005DB098;
  if (!qword_1005DB098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CredentialResponse, &type metadata for CredentialResponse, v0, v1);
    atomic_store(result, &qword_1005DB098);
  }

  return result;
}

unint64_t sub_100389248()
{
  result = qword_1005DB0A0;
  if (!qword_1005DB0A0)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for MessageToSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB0A0);
  }

  return result;
}

unint64_t sub_10038929C()
{
  result = qword_1005DB0A8;
  if (!qword_1005DB0A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest, &type metadata for SearchRequest, v0, v1);
    atomic_store(result, &qword_1005DB0A8);
  }

  return result;
}

unint64_t sub_1003892F0()
{
  result = qword_1005DB0B0;
  if (!qword_1005DB0B0)
  {
    result = swift_getWitnessTable(byte_1004FD304, &type metadata for MessageToSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB0B0);
  }

  return result;
}

unint64_t sub_100389344()
{
  result = qword_1005DB0B8;
  if (!qword_1005DB0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest, &type metadata for IndexRequest, v0, v1);
    atomic_store(result, &qword_1005DB0B8);
  }

  return result;
}

int64x2_t *_s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *result, int64x2_t *a2)
{
  v3 = *a2;
  v4 = *result;
  v5 = result[2].u8[0];
  v6 = a2->i64[0];
  v7 = a2[2].u8[0];
  if (v5 <= 2)
  {
    if (result[2].i8[0])
    {
      if (v5 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (v7 == 2)
      {
        if (v4.i64[0])
        {
          v16 = v3.i64[1];
          if (v6)
          {
            v19 = result->i64[1];
            v17 = v6;
            if (sub_100083308(v4.i64[0], v6))
            {
              v18 = sub_100083308(v19, v16);
              sub_100391E8C(v17);

              if (v18)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_100391E8C(v17);
            }
          }

          else
          {
            sub_100391E8C(0);
          }
        }

        else if (!v6)
        {
          sub_100391E8C(0);
LABEL_37:
          v14 = 1;
          return (v14 & 1);
        }
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_21:

      return sub_1003881F4(v4.i64[0], v6);
    }

LABEL_40:
    v14 = 0;
    return (v14 & 1);
  }

  if (v5 == 3)
  {
    if (v7 == 3)
    {
      v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v3), vceqq_s64(result[1], a2[1]))));
      return (v14 & 1);
    }

    goto LABEL_40;
  }

  if (v5 != 4)
  {
    if (v7 != 5 || a2[1].i64[1] | a2[1].i64[0] | v6 | v3.i64[1])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v7 != 4)
  {
    goto LABEL_40;
  }

  v8 = *(v4.i64[0] + 16);
  if (v8 != *(v6 + 16))
  {
    goto LABEL_40;
  }

  if (!v8 || v6 == v4.i64[0])
  {
    goto LABEL_37;
  }

  v9 = (v4.i64[0] + 32);
  v10 = (v6 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    v14 = v11 == v13;
    if (v14)
    {
      v15 = v8 == 1;
    }

    else
    {
      v15 = 1;
    }

    --v8;
    if (v15)
    {
      return (v14 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2].u8[0];
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      v13[0] = *a1;
      v13[1] = v3;
      v14 = v4 & 0x3F;
      v9 = a2[2].i8[0];
      if ((v9 & 0xC0) == 0x40)
      {
        v10 = a2[1];
        v11[0] = *a2;
        v11[1] = v10;
        v12 = v9 & 0x3F;
        v6 = _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v11);
        return v6 & 1;
      }
    }

    else if (a2[2].u8[0] <= 0x3Fu)
    {
      v6 = a2->i8[0] == v2.i8[0];
      return v6 & 1;
    }

LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  if (v5 != 2)
  {
    if (a2[2].u8[0] >= 0xC0u)
    {
      v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, a2[1]))));
      return v6 & 1;
    }

    goto LABEL_18;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x80)
  {
    goto LABEL_18;
  }

  if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
  {
    v6 = 1;
    return v6 & 1;
  }

  return sub_1004A6D34();
}

uint64_t sub_1003896B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1003897C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v41 = sub_10000C9C0(&qword_1005DB820, &qword_1004FD558);
  v45 = *(v41 - 8);
  __chkstk_darwin(v41);
  *&v47 = &v39 - v3;
  v4 = sub_10000C9C0(&qword_1005DB828, &qword_1004FD560);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_10000C9C0(&qword_1005DB830, &qword_1004FD568);
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_10000C9C0(&qword_1005DB838, &unk_1004FD570);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = a1[3];
  v53 = a1;
  sub_10002587C(a1, v15);
  sub_10038913C();
  v16 = v48;
  sub_1004A6F84();
  if (v16)
  {
    goto LABEL_14;
  }

  v17 = v47;
  v40 = v12;
  *&v48 = v14;
  v18 = sub_1004A6BC4();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_1004A67D4();
    swift_allocError();
    v23 = v11;
    v25 = v24;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v25 = &type metadata for MessageToSearchIndexer;
    v26 = v48;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v22 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v40 + 8))(v26, v23);
    swift_unknownObjectRelease();
LABEL_14:
    sub_1000197E0(v53);
    return result;
  }

  if (*(v18 + 32))
  {
    if (v20 == 1)
    {
      LOBYTE(v49) = 1;
      sub_100389248();
      v27 = v48;
      sub_1004A6B04();
      v28 = v40;
      sub_100391F20();
      v29 = v43;
      sub_1004A6B94();
      (*(v44 + 8))(v7, v29);
      (*(v28 + 8))(v27, v11);
      swift_unknownObjectRelease();
      v47 = v50;
      v48 = v49;
      v34 = v51;
      v35 = v52 | 0x40;
      v36 = v46;
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_1003891A0();
      sub_1004A6B04();
      v36 = v46;
      v31 = v40;
      sub_100391ECC();
      v32 = v41;
      sub_1004A6B94();
      (*(v45 + 8))(v17, v32);
      (*(v31 + 8))(v48, v11);
      swift_unknownObjectRelease();
      v34 = 0;
      *&v37 = v49;
      v48 = v37;
      v47 = 0u;
      v35 = 0x80;
    }
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_1003892F0();
    v30 = v48;
    sub_1004A6B04();
    sub_100391F74();
    sub_1004A6B94();
    (*(v42 + 8))(v10, v8);
    (*(v40 + 8))(v30, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v35 = 0;
    v47 = v50;
    v48 = v49;
    v36 = v46;
  }

  sub_1000197E0(v53);
  v38 = v47;
  result = *&v48;
  *v36 = v48;
  *(v36 + 16) = v38;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  return result;
}

unint64_t sub_100389E9C()
{
  result = qword_1005DB0E8;
  if (!qword_1005DB0E8)
  {
    result = swift_getWitnessTable(byte_1004FD2B4, &type metadata for MessageFromSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB0E8);
  }

  return result;
}

unint64_t sub_100389EF0()
{
  result = qword_1005DB0F0;
  if (!qword_1005DB0F0)
  {
    result = swift_getWitnessTable(a5_9, &type metadata for MessageFromSearchIndexer.IndexingStatisticsUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB0F0);
  }

  return result;
}

unint64_t sub_100389F44()
{
  result = qword_1005DB0F8;
  if (!qword_1005DB0F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexingStatistics, &type metadata for IndexingStatistics, v0, v1);
    atomic_store(result, &qword_1005DB0F8);
  }

  return result;
}

unint64_t sub_100389FA8()
{
  result = qword_1005DB100;
  if (!qword_1005DB100)
  {
    result = swift_getWitnessTable(byte_1004FD214, &type metadata for MessageFromSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB100);
  }

  return result;
}

unint64_t sub_100389FFC()
{
  result = qword_1005DB108;
  if (!qword_1005DB108)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CredentialRequest, &type metadata for CredentialRequest, v0, v1);
    atomic_store(result, &qword_1005DB108);
  }

  return result;
}

unint64_t sub_10038A050()
{
  result = qword_1005DB110;
  if (!qword_1005DB110)
  {
    result = swift_getWitnessTable("ե\b", &type metadata for MessageFromSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB110);
  }

  return result;
}

unint64_t sub_10038A0A4()
{
  result = qword_1005DB118;
  if (!qword_1005DB118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResponse, &type metadata for SearchResponse, v0, v1);
    atomic_store(result, &qword_1005DB118);
  }

  return result;
}

unint64_t sub_10038A0F8()
{
  result = qword_1005DB120;
  if (!qword_1005DB120)
  {
    result = swift_getWitnessTable(asc_1004FD174, &type metadata for MessageFromSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB120);
  }

  return result;
}

unint64_t sub_10038A14C()
{
  result = qword_1005DB128;
  if (!qword_1005DB128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.Response, &type metadata for IndexRequest.Response, v0, v1);
    atomic_store(result, &qword_1005DB128);
  }

  return result;
}

uint64_t sub_10038A1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B0220 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

double sub_10038A308@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = sub_10000C9C0(&qword_1005DB7E0, &qword_1004FD530);
  v48 = *(v44 - 8);
  __chkstk_darwin(v44);
  v52 = &v41 - v3;
  v4 = sub_10000C9C0(&qword_1005DB7E8, &qword_1004FD538);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v51 = &v41 - v6;
  v50 = sub_10000C9C0(&qword_1005DB7F0, &qword_1004FD540);
  v45 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = &v41 - v7;
  v9 = sub_10000C9C0(&qword_1005DB7F8, &qword_1004FD548);
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_10000C9C0(&qword_1005DB800, &qword_1004FD550);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v58 = a1;
  sub_10002587C(a1, v16);
  sub_100389E9C();
  v17 = v53;
  sub_1004A6F84();
  if (v17)
  {
    goto LABEL_9;
  }

  v41 = v9;
  v42 = v11;
  v18 = v8;
  v20 = v50;
  v19 = v51;
  v21 = v52;
  *&v53 = v13;
  v22 = sub_1004A6BC4();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = sub_1004A67D4();
    swift_allocError();
    v28 = v27;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v28 = &type metadata for MessageFromSearchIndexer;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();
    (*(v53 + 8))(v15, v12);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000197E0(v58);
    return result;
  }

  if (*(v22 + 32) <= 1u)
  {
    if (*(v22 + 32))
    {
      LOBYTE(v54) = 1;
      sub_10038A050();
      sub_1004A6B04();
      sub_100391DE4();
      sub_1004A6B94();
      (*(v45 + 8))(v18, v20);
      (*(v53 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v39 = v54;
      v37 = v55;
      v53 = v56;
      v38 = v57 | 0x40;
LABEL_18:
      v31 = v49;
      goto LABEL_19;
    }

    LOBYTE(v54) = 0;
    sub_10038A0F8();
    v30 = v42;
    sub_1004A6B04();
    sub_100391E38();
    v36 = v41;
    sub_1004A6B94();
    (*(v43 + 8))(v30, v36);
    (*(v53 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v37 = 0;
    v38 = 0;
    v39 = v54;
    v40 = 0uLL;
LABEL_17:
    v53 = v40;
    goto LABEL_18;
  }

  v50 = v22;
  v31 = v49;
  if (v24 != 2)
  {
    LOBYTE(v54) = 3;
    sub_100389EF0();
    sub_1004A6B04();
    v34 = v53;
    sub_100391940();
    v35 = v44;
    sub_1004A6B94();
    (*(v48 + 8))(v21, v35);
    (*(v34 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v39 = v54;
    v37 = v55;
    v38 = -64;
    v40 = v56;
    goto LABEL_17;
  }

  LOBYTE(v54) = 2;
  sub_100389FA8();
  sub_1004A6B04();
  v32 = v53;
  sub_100391D90();
  v33 = v46;
  sub_1004A6B94();
  (*(v47 + 8))(v19, v33);
  (*(v32 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v39 = v54;
  v37 = v55;
  v53 = 0u;
  v38 = 0x80;
LABEL_19:
  sub_1000197E0(v58);
  *v31 = v39;
  *(v31 + 8) = v37;
  result = *&v53;
  *(v31 + 16) = v53;
  *(v31 + 32) = v38;
  return result;
}

uint64_t sub_10038AB68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10038ABA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

unint64_t sub_10038ABE4()
{
  result = qword_1005DB130;
  if (!qword_1005DB130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageToSearchIndexer, &type metadata for MessageToSearchIndexer, v0, v1);
    atomic_store(result, &qword_1005DB130);
  }

  return result;
}

unint64_t sub_10038AC38()
{
  result = qword_1005DB138;
  if (!qword_1005DB138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageFromSearchIndexer, &type metadata for MessageFromSearchIndexer, v0, v1);
    atomic_store(result, &qword_1005DB138);
  }

  return result;
}

uint64_t sub_10038AC8C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  return v2(&v5);
}

unint64_t sub_10038ACD0()
{
  result = qword_1005DB170;
  if (!qword_1005DB170)
  {
    result = swift_getWitnessTable(aU_13, &type metadata for IndexRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB170);
  }

  return result;
}

unint64_t sub_10038AD24()
{
  result = qword_1005DB178;
  if (!qword_1005DB178)
  {
    result = swift_getWitnessTable("Ŧ\b", &type metadata for IndexRequest.Response.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB178);
  }

  return result;
}

unint64_t sub_10038AD78()
{
  result = qword_1005DB180;
  if (!qword_1005DB180)
  {
    result = swift_getWitnessTable(byte_1004FD084, &type metadata for IndexRequest.Response.DidCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB180);
  }

  return result;
}

unint64_t sub_10038ADCC()
{
  result = qword_1005DB188;
  if (!qword_1005DB188)
  {
    result = swift_getWitnessTable(aE_15, &type metadata for IndexRequest.Response.CurrentlyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB188);
  }

  return result;
}

unint64_t sub_10038AE20()
{
  result = qword_1005DB190;
  if (!qword_1005DB190)
  {
    result = swift_getWitnessTable(byte_1004FCFE4, &type metadata for IndexRequest.Response.DidNotCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB190);
  }

  return result;
}

unint64_t sub_10038AE74()
{
  result = qword_1005DB198;
  if (!qword_1005DB198)
  {
    result = swift_getWitnessTable(byte_1004FCF94, &type metadata for IndexRequest.Response.DidDeferCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB198);
  }

  return result;
}

uint64_t sub_10038AEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666544646964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746F4E646964 && a2 == 0xEE006574656C706DLL || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004B0240 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C706D6F43646964 && a2 == 0xEB00000000657465 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10038B08C(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB7B0, &qword_1004FD500);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v50 = &v37[-v3];
  v4 = sub_10000C9C0(&qword_1005DB7B8, &qword_1004FD508);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v52 = &v37[-v6];
  v7 = sub_10000C9C0(&qword_1005DB7C0, &qword_1004FD510);
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v51 = &v37[-v8];
  v9 = sub_10000C9C0(&qword_1005DB7C8, &qword_1004FD518);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v37[-v10];
  v12 = sub_10000C9C0(&qword_1005DB7D0, &qword_1004FD520);
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37[-v13];
  v15 = sub_10000C9C0(&qword_1005DB7D8, &qword_1004FD528);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  sub_10002587C(a1, v19);
  sub_10038ACD0();
  v20 = v53;
  sub_1004A6F84();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = sub_1004A6BC4();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = sub_1004A67D4();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v30 = &type metadata for IndexRequest.Response;
    v31 = v40;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1000197E0(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_10038AE20();
      v34 = v40;
      sub_1004A6B04();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_10038AE74();
      v34 = v40;
      sub_1004A6B04();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_10038ADCC();
      v33 = v40;
      sub_1004A6B04();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_10038AD78();
        sub_1004A6B04();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_10038AD24();
        v35 = v50;
        sub_1004A6B04();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  sub_1000197E0(v54);
  return v38;
}

unint64_t sub_10038B784()
{
  result = qword_1005DB1B8;
  if (!qword_1005DB1B8)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for IndexRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB1B8);
  }

  return result;
}

unint64_t sub_10038B7D8()
{
  result = qword_1005DB1C0;
  if (!qword_1005DB1C0)
  {
    result = swift_getWitnessTable(byte_1004FCEF4, &type metadata for IndexRequest.StopCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB1C0);
  }

  return result;
}

unint64_t sub_10038B82C()
{
  result = qword_1005DB1C8;
  if (!qword_1005DB1C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.ID, &type metadata for IndexRequest.ID, v0, v1);
    atomic_store(result, &qword_1005DB1C8);
  }

  return result;
}

unint64_t sub_10038B880()
{
  result = qword_1005DB1D0;
  if (!qword_1005DB1D0)
  {
    result = swift_getWitnessTable(byte_1004FCEA4, &type metadata for IndexRequest.StartCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB1D0);
  }

  return result;
}

unint64_t sub_10038B8D4()
{
  result = qword_1005DB1E0;
  if (!qword_1005DB1E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB1D8, &qword_1004FA3E0);
    v4[0] = sub_10038B958();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB1E0);
  }

  return result;
}

unint64_t sub_10038B958()
{
  result = qword_1005DB1E8;
  if (!qword_1005DB1E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration, &type metadata for AccountConfiguration, v0, v1);
    atomic_store(result, &qword_1005DB1E8);
  }

  return result;
}

void *sub_10038B9AC(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB780, &qword_1004FD4E8);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_10000C9C0(&qword_1005DB788, &qword_1004FD4F0);
  v26 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_10000C9C0(&qword_1005DB790, &qword_1004FD4F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = a1[3];
  v28 = a1;
  sub_10002587C(a1, v12);
  sub_10038B784();
  v13 = v27;
  sub_1004A6F84();
  if (!v13)
  {
    v27 = v9;
    v14 = sub_1004A6BC4();
    if (*(v14 + 16) == 1)
    {
      if (*(v14 + 32))
      {
        LOBYTE(v31) = 1;
        sub_10038B7D8();
        sub_1004A6B04();
        v15 = v27;
        sub_100391C64();
        v20 = v4;
        v21 = v25;
        sub_1004A6B94();
        (*(v24 + 8))(v20, v21);
        (*(v15 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v5 = v31;
      }

      else
      {
        v25 = v14;
        LOBYTE(v31) = 0;
        sub_10038B880();
        sub_1004A6B04();
        v19 = v27;
        LOBYTE(v30) = 0;
        sub_100391C64();
        v22 = v5;
        sub_1004A6B94();
        v5 = v31;
        sub_10000C9C0(&qword_1005DB1D8, &qword_1004FA3E0);
        v29 = 1;
        sub_100391CB8();
        sub_1004A6B94();
        (*(v26 + 8))(v7, v22);
        (*(v19 + 8))(0, v8);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = sub_1004A67D4();
      swift_allocError();
      v5 = v17;
      sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
      *v5 = &type metadata for IndexRequest;
      sub_1004A6B14();
      sub_1004A67C4();
      (*(*(v16 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v16);
      swift_willThrow();
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  sub_1000197E0(v28);
  return v5;
}

unint64_t sub_10038BF7C()
{
  result = qword_1005DB200;
  if (!qword_1005DB200)
  {
    result = swift_getWitnessTable(aE_16, &type metadata for CredentialRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB200);
  }

  return result;
}

unint64_t sub_10038BFD0()
{
  result = qword_1005DB208;
  if (!qword_1005DB208)
  {
    result = swift_getWitnessTable(byte_1004FCE04, &type metadata for CredentialRequest.MakeCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB208);
  }

  return result;
}

void *sub_10038C024(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DB768, &qword_1004FD4D0);
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v22 = sub_10000C9C0(&qword_1005DB770, &qword_1004FD4D8);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v17 - v7;
  v9 = sub_10002587C(a1, a1[3]);
  sub_10038BF7C();
  sub_1004A6F84();
  if (v1)
  {
    goto LABEL_5;
  }

  v18 = a1;
  v19 = v6;
  v10 = v22;
  if (*(sub_1004A6BC4() + 16) != 1)
  {
    v12 = v10;
    v13 = sub_1004A67D4();
    swift_allocError();
    v15 = v14;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v15 = &type metadata for CredentialRequest;
    v9 = v8;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v13);
    swift_willThrow();
    (*(v19 + 8))(v8, v12);
    swift_unknownObjectRelease();
    a1 = v18;
LABEL_5:
    sub_1000197E0(a1);
    return v9;
  }

  sub_10038BFD0();
  sub_1004A6B04();
  v11 = v19;
  sub_10037F108();
  sub_1004A6B94();
  (*(v20 + 8))(v5, v3);
  (*(v11 + 8))(v8, v10);
  swift_unknownObjectRelease();
  v9 = v21;
  sub_1000197E0(v18);
  return v9;
}