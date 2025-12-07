BOOL _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV8DatatypeO2eeoiySbAK_AKtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) == 0x40)
      {
        if (v3)
        {
          return (v5 & 1) != 0;
        }

        if ((v5 & 1) == 0 && v2 == v4)
        {
          return 1;
        }
      }

      return 0;
    }

    v7 = v3 ^ 0x80;
    v8 = v5 & 0xC0;
    if (!(v2 | v7))
    {
      v9 = v8 == 128 && v4 == 0;
      return v9 && v5 == 128;
    }

    v10 = v8 == 128 && v4 == 1;
    return v10 && v5 == 128;
  }

  else
  {
    if (v5 >= 0x40)
    {
      return 0;
    }

    if (v3)
    {
      return (v5 & 1) != 0;
    }

    return (v5 & 1) == 0 && v2 == v4;
  }
}

uint64_t _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_1DB2BB924(), result = 0, (v9 & 1) != 0))
  {
    v13 = v2;
    v14 = v3;
    v11 = v5;
    v12 = v6;
    return _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV8DatatypeO2eeoiySbAK_AKtFZ_0(&v13, &v11) & (v4 == v7);
  }

  return result;
}

uint64_t _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV2eeoiySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 6);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1DB2BB924() & 1) == 0 || v2 != v7)
  {
    return 0;
  }

  if (v3)
  {
    v12 = 0x65726F6E6769;
  }

  else
  {
    v12 = 7697004;
  }

  if (v3)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  if (v8)
  {
    v14 = 0x65726F6E6769;
  }

  else
  {
    v14 = 7697004;
  }

  if (v8)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  if (v12 != v14 || v13 != v15)
  {
    v17 = sub_1DB2BB924();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      goto LABEL_23;
    }

LABEL_26:
    if (v4 == v9)
    {
      v19 = v10;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }

    goto LABEL_30;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (!v10)
  {
    return 0;
  }

LABEL_30:

  return sub_1DB1379E4(v6, v11);
}

unint64_t sub_1DB22DFB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1DB2BAEC4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1DB2BB004();
}

uint64_t sub_1DB22E064(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_1DB2BAE94();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1DB2BAEC4();

  return sub_1DB2BB004();
}

unint64_t sub_1DB22E130()
{
  result = qword_1EE13F6C0;
  if (!qword_1EE13F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6C0);
  }

  return result;
}

unint64_t sub_1DB22E184()
{
  result = qword_1EE13F908;
  if (!qword_1EE13F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F908);
  }

  return result;
}

unint64_t sub_1DB22E1D8()
{
  result = qword_1EE13E978;
  if (!qword_1EE13E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E978);
  }

  return result;
}

unint64_t sub_1DB22E22C()
{
  result = qword_1EE13E970;
  if (!qword_1EE13E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E970);
  }

  return result;
}

unint64_t sub_1DB22E280()
{
  result = qword_1EE13F8E8;
  if (!qword_1EE13F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8E8);
  }

  return result;
}

uint64_t sub_1DB22E2D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28450, &qword_1DB2C69B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB22E34C()
{
  result = qword_1EE13F8B0;
  if (!qword_1EE13F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8B0);
  }

  return result;
}

unint64_t sub_1DB22E3A0()
{
  result = qword_1EE13F920;
  if (!qword_1EE13F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F920);
  }

  return result;
}

unint64_t sub_1DB22E3F4()
{
  result = qword_1EE13E630;
  if (!qword_1EE13E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28468, &qword_1DB2C69D0);
    sub_1DB22E478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E630);
  }

  return result;
}

unint64_t sub_1DB22E478()
{
  result = qword_1EE13E968;
  if (!qword_1EE13E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E968);
  }

  return result;
}

unint64_t sub_1DB22E4CC()
{
  result = qword_1EE13F690;
  if (!qword_1EE13F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28468, &qword_1DB2C69D0);
    sub_1DB22E550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F690);
  }

  return result;
}

unint64_t sub_1DB22E550()
{
  result = qword_1EE13F8A8;
  if (!qword_1EE13F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8A8);
  }

  return result;
}

unint64_t sub_1DB22E5A4()
{
  result = qword_1EE13F688;
  if (!qword_1EE13F688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28478, &qword_1DB2C69E0);
    sub_1DB22E628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F688);
  }

  return result;
}

unint64_t sub_1DB22E628()
{
  result = qword_1EE13F8A0;
  if (!qword_1EE13F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8A0);
  }

  return result;
}

unint64_t sub_1DB22E67C()
{
  result = qword_1EE13E960;
  if (!qword_1EE13E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E960);
  }

  return result;
}

unint64_t sub_1DB22E6D4()
{
  result = qword_1ECC28480;
  if (!qword_1ECC28480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28480);
  }

  return result;
}

unint64_t sub_1DB22E72C()
{
  result = qword_1ECC28488;
  if (!qword_1ECC28488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28490, &qword_1DB2C6AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28488);
  }

  return result;
}

unint64_t sub_1DB22E794()
{
  result = qword_1ECC28498;
  if (!qword_1ECC28498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28498);
  }

  return result;
}

unint64_t sub_1DB22E7EC()
{
  result = qword_1ECC284A0;
  if (!qword_1ECC284A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284A0);
  }

  return result;
}

unint64_t sub_1DB22E844()
{
  result = qword_1ECC284A8;
  if (!qword_1ECC284A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284A8);
  }

  return result;
}

unint64_t sub_1DB22E898()
{
  result = qword_1ECC284B0;
  if (!qword_1ECC284B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284B0);
  }

  return result;
}

unint64_t sub_1DB22E8F0()
{
  result = qword_1ECC284B8;
  if (!qword_1ECC284B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284B8);
  }

  return result;
}

unint64_t sub_1DB22E94C()
{
  result = qword_1ECC284C0;
  if (!qword_1ECC284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284C0);
  }

  return result;
}

unint64_t sub_1DB22E9A4()
{
  result = qword_1ECC284C8;
  if (!qword_1ECC284C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284C8);
  }

  return result;
}

unint64_t sub_1DB22E9FC()
{
  result = qword_1ECC284D0;
  if (!qword_1ECC284D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284D0);
  }

  return result;
}

uint64_t sub_1DB22EA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DB22EAA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB22EB14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DB22EB5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB22EBC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DB22EC10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataSpecification.Namespace.Table.Column.Datatype(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataSpecification.Namespace.Table.Column.Datatype(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DB22ED24(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DB22ED54(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_1DB22EDC4()
{
  result = qword_1ECC284D8;
  if (!qword_1ECC284D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284D8);
  }

  return result;
}

unint64_t sub_1DB22EE1C()
{
  result = qword_1ECC284E0;
  if (!qword_1ECC284E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284E0);
  }

  return result;
}

unint64_t sub_1DB22EE74()
{
  result = qword_1EE13F910;
  if (!qword_1EE13F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F910);
  }

  return result;
}

unint64_t sub_1DB22EECC()
{
  result = qword_1EE13F918;
  if (!qword_1EE13F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F918);
  }

  return result;
}

unint64_t sub_1DB22EF24()
{
  result = qword_1EE13F8F8;
  if (!qword_1EE13F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8F8);
  }

  return result;
}

unint64_t sub_1DB22EF7C()
{
  result = qword_1EE13F900;
  if (!qword_1EE13F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F900);
  }

  return result;
}

unint64_t sub_1DB22EFD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB22F01C()
{
  result = qword_1EE13F8F0;
  if (!qword_1EE13F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8F0);
  }

  return result;
}

unint64_t sub_1DB22F070()
{
  result = qword_1EE13F8C0;
  if (!qword_1EE13F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8C0);
  }

  return result;
}

unint64_t sub_1DB22F0C4()
{
  result = qword_1EE13F8B8;
  if (!qword_1EE13F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F8B8);
  }

  return result;
}

OnDeviceStorageCore::ForwardDeletionRules __swiftcall ForwardDeletionRules.init(bundleIds:retentionInterval:)(Swift::OpaquePointer bundleIds, Swift::Double retentionInterval)
{
  *v2 = bundleIds;
  *(v2 + 8) = retentionInterval;
  result.retentionInterval = retentionInterval;
  result.bundleIds = bundleIds;
  return result;
}

uint64_t sub_1DB22F150(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 116;
  }

  else
  {
    v2 = 98;
  }

  if (*a2)
  {
    v3 = 116;
  }

  else
  {
    v3 = 98;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DB2BB924();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DB22F1C0()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB22F220(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB22F264(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB22F2C0@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

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

void sub_1DB22F320(uint64_t *a1@<X8>)
{
  v2 = 98;
  if (*v1)
  {
    v2 = 116;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_1DB22F340()
{
  if (*v0)
  {
    return 116;
  }

  else
  {
    return 98;
  }
}

uint64_t sub_1DB22F35C@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DB22F3C0(uint64_t a1)
{
  v2 = sub_1DB22F654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB22F3FC(uint64_t a1)
{
  v2 = sub_1DB22F654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ForwardDeletionRules.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1DB1375FC(*a1, *a2) & (v2 == v3);
}

uint64_t ForwardDeletionRules.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC284E8, &unk_1DB2C7530);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22F654();

  sub_1DB2BBA94();
  v11 = v8;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1518BC(&qword_1EE13E618, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DB2BB8A4();

  if (!v2)
  {
    v10[6] = 1;
    sub_1DB2BB884();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DB22F654()
{
  result = qword_1EE13F358;
  if (!qword_1EE13F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F358);
  }

  return result;
}

uint64_t ForwardDeletionRules.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  MEMORY[0x1E1283FC0](*(*v1 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_1DB2BAE84();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  return MEMORY[0x1E1283FE0](*&v6);
}

uint64_t ForwardDeletionRules.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1DB2BBA04();
  ForwardDeletionRules.hash(into:)(v3);
  return sub_1DB2BBA54();
}

uint64_t ForwardDeletionRules.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC284F0, &qword_1DB2C7540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22F654();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v13[7] = 0;
  sub_1DB1518BC(&qword_1EE13F670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DB2BB7B4();
  v9 = v14;
  v13[6] = 1;
  sub_1DB2BB794();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 1) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB22F9E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1DB1375FC(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1DB22FA28()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1DB2BBA04();
  ForwardDeletionRules.hash(into:)(v3);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22FA80(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_1DB2BBA04();
  ForwardDeletionRules.hash(into:)(v4);
  return sub_1DB2BBA54();
}

unint64_t sub_1DB22FAD4()
{
  result = qword_1EE13E938;
  if (!qword_1EE13E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E938);
  }

  return result;
}

uint64_t sub_1DB22FB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DB22FB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB22FBD0()
{
  result = qword_1ECC284F8;
  if (!qword_1ECC284F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC284F8);
  }

  return result;
}

unint64_t sub_1DB22FC28()
{
  result = qword_1EE13F348;
  if (!qword_1EE13F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F348);
  }

  return result;
}

unint64_t sub_1DB22FC80()
{
  result = qword_1EE13F350;
  if (!qword_1EE13F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F350);
  }

  return result;
}

uint64_t sub_1DB22FCD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D6190;
      v5 = 0x80000001DB2D61B0;
      v6 = 0xD000000000000017;
      v7 = xmmword_1DB2C7790;
      v8 = 0xD00000000000002CLL;
      break;
    case 2:
      v4 = 0x80000001DB2D6120;
      v5 = 0x80000001DB2D6140;
      v3 = 0x80000001DB2D6160;
      v6 = 0xD000000000000015;
      v8 = 0xD000000000000017;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD00000000000002CLL;
      break;
    case 3:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D60D0;
      v5 = 0x80000001DB2D60F0;
      v6 = 0xD000000000000011;
      v7 = xmmword_1DB2C7790;
      v8 = 0xD000000000000020;
      break;
    case 4:
      v4 = 0x80000001DB2D6060;
      v5 = 0x80000001DB2D6080;
      v3 = 0x80000001DB2D60A0;
      v6 = 0xD000000000000016;
      v8 = 0xD000000000000018;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD00000000000002DLL;
      break;
    case 5:
      v4 = 0x80000001DB2D5FF0;
      v5 = 0x80000001DB2D6010;
      v3 = 0x80000001DB2D6030;
      v6 = 0xD000000000000018;
      v8 = 0xD00000000000001ALL;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD00000000000002FLL;
      break;
    case 6:
      v6 = 0xD000000000000012;
      v4 = 0x80000001DB2D5F60;
      v5 = 0x80000001DB2D5F80;
      v3 = 0x80000001DB2D5FA0;
      v8 = 0xD00000000000001BLL;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD000000000000047;
      break;
    case 7:
      v4 = 0x80000001DB2D5ED0;
      v5 = 0x80000001DB2D5EF0;
      v3 = 0x80000001DB2D5F10;
      v6 = 0xD000000000000014;
      v8 = 0xD00000000000001DLL;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD000000000000047;
      break;
    case 8:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D5EB0;
      v5 = 0x80000001DB2D59E0;
      v6 = 0xD000000000000010;
      v7 = xmmword_1DB2C7790;
      v8 = 0xD000000000000023;
      break;
    case 9:
      v2 = 0;
      v3 = 0;
      v5 = 0x80000001DB2D59A0;
      v7 = xmmword_1DB2C7790;
      v8 = 0xD000000000000030;
      v4 = 0xEA00000000007965;
      v6 = 0x4B64696C61766E69;
      break;
    case 10:
      v6 = 0xD000000000000012;
      v4 = 0x80000001DB2D5E40;
      v5 = 0x80000001DB2D5970;
      v3 = 0x80000001DB2D5E60;
      v8 = 0xD000000000000027;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD000000000000041;
      break;
    case 11:
      v5 = 0x80000001DB2D5E20;
      v3 = 0x80000001DB2D5DE0;
      v8 = 0xD00000000000001CLL;
      v2 = 0xD00000000000003ALL;
      v7 = xmmword_1DB2C7790;
      v4 = 0xEF676E69646F636ELL;
      v6 = 0x4564696C61766E69;
      break;
    case 12:
      v4 = 0x80000001DB2D5DC0;
      v5 = 0x80000001DB2D5910;
      v3 = 0x80000001DB2D5DE0;
      v6 = 0xD000000000000014;
      v8 = 0xD000000000000023;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD00000000000003ALL;
      break;
    case 13:
      v5 = 0x80000001DB2D5DA0;
      v3 = 0x80000001DB2D58E0;
      v8 = 0xD000000000000015;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD000000000000028;
      v4 = 0xEF6E656B6F546465;
      v6 = 0x6E676953666C6573;
      break;
    case 14:
      v8 = 0xD000000000000012;
      v5 = 0x80000001DB2D5D80;
      v3 = 0x80000001DB2D58B0;
      v7 = xmmword_1DB2C7790;
      v2 = 0xD000000000000025;
      v4 = 0xED00006E656B6F54;
      v6 = 0x64656E6769736E75;
      break;
    default:
      v6 = 0;
      v4 = 0;
      v8 = 0;
      v5 = 0;
      v2 = 0;
      v3 = 0;
      v7 = 0uLL;
      break;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v2;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0uLL;
  *(a2 + 80) = 0uLL;
  return result;
}

uint64_t _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  *&v47 = a1;
  *(&v47 + 1) = a2;
  v49 = 46;
  sub_1DB143508();
  v8 = sub_1DB2BB3A4();

  v9 = v8[2];
  if (v9 != 3)
  {

    *a3 = v9;
    *(a3 + 8) = 3;
    *(a3 + 16) = 0;
    *&v47 = v9;
    *(&v47 + 1) = 3;
    v48 = 0;
LABEL_5:
    sub_1DB225318();
    return swift_willThrowTypedImpl();
  }

  v11 = v8[4];
  v10 = v8[5];

  v12 = sub_1DB231108(v11, v10, &v47);
  if (v6)
  {

    v14 = v48;
    *a3 = v47;
    *(a3 + 16) = v14;
    return result;
  }

  v51 = v12;

  if (v8[2] < 2uLL)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = v8[7];
  *&v47 = v8[6];
  *(&v47 + 1) = v15;
  v49 = 45;
  v50 = 0xE100000000000000;
  *&v47 = sub_1DB2BB3D4();
  *(&v47 + 1) = v16;
  v49 = 95;
  v50 = 0xE100000000000000;
  v17 = sub_1DB2BB3D4();
  v19 = v18;

  v20 = sub_1DB2BAE94();
  v21 = v20 & 3;
  if (v20 <= 0)
  {
    v21 = -(-v20 & 3);
  }

  if (v21 >= 1)
  {
    v22 = sub_1DB2BAFB4();
    v24 = v23;
    *&v47 = v17;
    *(&v47 + 1) = v19;

    MEMORY[0x1E1283490](v22, v24);
  }

  v25 = sub_1DB2BA844();
  v27 = v26;
  sub_1DB2351A4(v25, v26);

  if (v27 >> 60 == 15)
  {

    v29 = v8[6];
    v28 = v8[7];

    *a3 = v29;
    *(a3 + 8) = v28;
    *(a3 + 16) = 3;
    *&v47 = v29;
    *(&v47 + 1) = v28;
    v48 = 3;
    goto LABEL_5;
  }

  v46 = v25;
  result = sub_1DB2351B8(v25, v27);
  if (v8[2] < 3uLL)
  {
    goto LABEL_22;
  }

  v30 = v8[9];
  *&v47 = v8[8];
  *(&v47 + 1) = v30;
  v49 = 45;
  v50 = 0xE100000000000000;
  *&v47 = sub_1DB2BB3D4();
  *(&v47 + 1) = v31;
  v49 = 95;
  v50 = 0xE100000000000000;
  v32 = sub_1DB2BB3D4();
  v34 = v33;

  v35 = sub_1DB2BAE94();
  v36 = v35 & 3;
  if (v35 <= 0)
  {
    v36 = -(-v35 & 3);
  }

  if (v36 >= 1)
  {
    v37 = sub_1DB2BAFB4();
    v39 = v38;
    *&v47 = v32;
    *(&v47 + 1) = v34;

    MEMORY[0x1E1283490](v37, v39);
  }

  v40 = sub_1DB2BA844();
  v42 = v41;
  sub_1DB2351A4(v40, v41);

  if (v42 >> 60 == 15)
  {

    v44 = v8[8];
    v43 = v8[9];

    *a3 = v44;
    *(a3 + 8) = v43;
    *(a3 + 16) = 4;
    *&v47 = v44;
    *(&v47 + 1) = v43;
    v48 = 4;
    sub_1DB225318();
    swift_willThrowTypedImpl();
    return sub_1DB2351B8(v46, v27);
  }

  else
  {
    result = sub_1DB2351B8(v40, v42);
    v45 = v51;
    *a4 = v8;
    a4[1] = v45;
    a4[2] = v46;
    a4[3] = v27;
    a4[4] = v40;
    a4[5] = v42;
  }

  return result;
}

uint64_t JWT.verifySignature(secret:)(uint64_t *a1)
{
  v25 = sub_1DB2BAA34();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB2BAA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v21 = *a1;
  v10 = v1[1];
  v24[0] = *v1;
  v24[1] = v10;
  v24[2] = v1[2];
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1EE13E898);
  (*(v6 + 16))(v8, v11, v5);
  sub_1DB2BAA24();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_1DB2BAA44();
  v14 = sub_1DB2BB2F4();
  v15 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v13, v14, v15, "verifySignature", "", v12, 2u);
  v16 = v22;
  sub_1DB2314C8(v24, v21, v9);
  if (v16)
  {
  }

  else
  {
    v17 = sub_1DB2BB2E4();
    v18 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v13, v17, v18, "verifySignature", "", v12, 2u);

    MEMORY[0x1E1284BF0](v12, -1, -1);
  }

  (*(v23 + 8))(v4, v25);
  return (*(v6 + 8))(v8, v5);
}

id sub_1DB230900()
{
  if (qword_1ECC26BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC41F18;
  qword_1ECC28500 = qword_1ECC41F18;

  return v1;
}

uint64_t sub_1DB230964()
{
  v0 = sub_1DB2BAA64();
  __swift_allocate_value_buffer(v0, qword_1EE13E898);
  v1 = __swift_project_value_buffer(v0, qword_1EE13E898);
  if (qword_1EE13E6E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE14C840);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t JWT.Error.errorCode.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (*(v0 + 16) <= 6u)
    {
      if (v1 == 5)
      {
        return 306;
      }

      else
      {
        return 307;
      }
    }

    else if (v1 == 7)
    {
      return 308;
    }

    else if (v1 == 8)
    {
      return 312;
    }

    else
    {
      return qword_1DB2C7C98[*v0];
    }
  }

  else
  {
    v2 = 301;
    v3 = 303;
    v4 = 304;
    if (v1 != 3)
    {
      v4 = 305;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 302;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t JWT.Error.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (!*(v0 + 16))
      {
        v13 = 0;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD00000000000002ELL, 0x80000001DB2D5B60);
        v7 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v7);

        MEMORY[0x1E1283490](0x746365707865202CLL, 0xEC000000203A6465);
        v8 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v8);

        return v13;
      }

      v13 = 0;
      sub_1DB2BB4F4();
      v4 = "omponent is not a valid JSON";
      v5 = 0xD000000000000033;
    }

    else
    {
      if (v3 == 2)
      {
        return 0xD00000000000002CLL;
      }

      v13 = 0;
      if (v3 == 3)
      {
        sub_1DB2BB4F4();
        v4 = "ding in token string: ";
        v5 = 0xD000000000000034;
      }

      else
      {
        sub_1DB2BB4F4();
        v4 = "gnature algorithm: ";
        v5 = 0xD000000000000036;
      }
    }

    MEMORY[0x1E1283490](v5, v4 | 0x8000000000000000);
LABEL_24:
    MEMORY[0x1E1283490](v2, v1);
    return v13;
  }

  if (*(v0 + 16) <= 6u)
  {
    if (v3 == 5)
    {
      sub_1DB2BB4F4();

      v9 = 0xD000000000000023;
    }

    else
    {
      sub_1DB2BB4F4();

      v9 = 0xD000000000000025;
    }

    v13 = v9;
    goto LABEL_24;
  }

  if (v3 == 7)
  {
    return 0xD000000000000023;
  }

  if (v3 == 8)
  {
    return 0xD000000000000023;
  }

  if (v2 <= 1)
  {
    v10 = v2 | v1;
    v11 = 0xD000000000000030;
    v12 = 0xD000000000000027;
  }

  else
  {
    if (!(v2 ^ 2 | v1))
    {
      return 0xD000000000000025;
    }

    v10 = v2 ^ 3 | v1;
    v11 = 0xD000000000000028;
    v12 = 0xD000000000000025;
  }

  if (v10)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

uint64_t JWT.Error.failureReason.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 8 || ((1 << v1) & 0x184) == 0)
  {
    return 0;
  }

  v4 = v0;
  v3 = *v0;
  sub_1DB219128(v3, *(v4 + 8), v1);
  return v3;
}

uint64_t sub_1DB230EB4()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (*(v0 + 16) <= 6u)
    {
      if (v1 == 5)
      {
        return 306;
      }

      else
      {
        return 307;
      }
    }

    else if (v1 == 7)
    {
      return 308;
    }

    else if (v1 == 8)
    {
      return 312;
    }

    else
    {
      return qword_1DB2C7C98[*v0];
    }
  }

  else
  {
    v2 = 301;
    v3 = 303;
    v4 = 304;
    if (v1 != 3)
    {
      v4 = 305;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 302;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1DB230F50()
{
  v1 = *(v0 + 16);
  if (v1 > 8 || ((1 << v1) & 0x184) == 0)
  {
    return 0;
  }

  v4 = v0;
  v3 = *v0;
  sub_1DB219128(v3, *(v4 + 8), v1);
  return v3;
}

uint64_t JWT.token.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v0 = sub_1DB2BAD24();

  return v0;
}

uint64_t JWT.payload.getter()
{
  v1 = *(v0 + 16);
  sub_1DB226094(v1, *(v0 + 24));
  return v1;
}

BOOL JWT.isSigned.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 != v6;
}

uint64_t sub_1DB231108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = sub_1DB143508();
  v7 = MEMORY[0x1E69E6158];
  v36 = sub_1DB2BB3D4();
  v37 = v8;
  v33 = 95;
  v34 = 0xE100000000000000;
  v31 = v6;
  v32 = v6;
  v29 = v7;
  v30 = v6;
  v9 = sub_1DB2BB3D4();
  v11 = v10;

  v12 = sub_1DB2BAE94();
  v13 = v12 & 3;
  if (v12 <= 0)
  {
    v13 = -(-v12 & 3);
  }

  if (v13 >= 1)
  {
    v14 = sub_1DB2BAFB4();
    v16 = v15;
    v36 = v9;
    v37 = v11;

    MEMORY[0x1E1283490](v14, v16);
  }

  v17 = sub_1DB2BA844();
  v19 = v18;
  sub_1DB2351A4(v17, v18);

  if (v19 >> 60 == 15)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 1;
    v36 = a1;
    v37 = a2;
    v38 = 1;
    sub_1DB225318();

    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1DB2351B8(v17, v19);
    v21 = objc_opt_self();
    v22 = sub_1DB2BA884();
    v33 = 0;
    v23 = [v21 JSONObjectWithData:v22 options:0 error:{&v33, v29, v30, v31, v32}];

    v24 = v33;
    if (v23)
    {
      sub_1DB2BB404();
      swift_unknownObjectRelease();
      sub_1DB1444CC(&v36, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28580, &qword_1DB2C7C18);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v36);
        sub_1DB2351B8(v17, v19);
        return 47;
      }

      else
      {
        *a3 = 0xD000000000000022;
        *(a3 + 8) = 0x80000001DB2D5D50;
        *(a3 + 16) = 2;
        v33 = 0xD000000000000022;
        v34 = 0x80000001DB2D5D50;
        v35 = 2;
        sub_1DB225318();
        swift_willThrowTypedImpl();
        sub_1DB2351B8(v17, v19);
        return __swift_destroy_boxed_opaque_existential_1(&v36);
      }
    }

    else
    {
      v25 = v24;
      v26 = sub_1DB2BA7C4();

      swift_willThrow();
      swift_getErrorValue();
      v27 = sub_1DB2BB994();
      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = 2;
      v33 = v27;
      v34 = v28;
      v35 = 2;
      sub_1DB225318();
      swift_willThrowTypedImpl();
      sub_1DB2351B8(v17, v19);
      return MEMORY[0x1E1284A10](v26);
    }
  }
}

uint64_t sub_1DB2314C8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2 || *(v4 + 16) == *(v4 + 24))
    {
      goto LABEL_19;
    }
  }

  else if (v6)
  {
    if (v4 == v4 >> 32)
    {
LABEL_19:
      sub_1DB225318();
      swift_allocError();
      *v23 = xmmword_1DB2C77A0;
      v24 = 9;
LABEL_22:
      *(v23 + 16) = v24;
      return swift_willThrow();
    }
  }

  else if ((v5 & 0xFF000000000000) == 0)
  {
    goto LABEL_19;
  }

  v7 = a1[1];
  if (!*(v7 + 16) || (v11 = sub_1DB141B30(6777953, 0xE300000000000000), (v12 & 1) == 0) || (sub_1DB1444CC(*(v7 + 56) + 32 * v11, &v38), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8), (swift_dynamicCast() & 1) == 0))
  {
    if (*(v7 + 16) && (v21 = sub_1DB141B30(6777953, 0xE300000000000000), (v22 & 1) != 0))
    {
      sub_1DB1444CC(*(v7 + 56) + 32 * v21, v41);
      sub_1DB144640(v41, &v38);
    }

    else
    {
      *(&v39 + 1) = MEMORY[0x1E69E6158];
      *&v38 = 7104878;
      *(&v38 + 1) = 0xE300000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8);
    v25 = sub_1DB2BADF4();
    v27 = v26;
    sub_1DB225318();
    swift_allocError();
    *v23 = v25;
    *(v23 + 8) = v27;
    v24 = 5;
    goto LABEL_22;
  }

  v13 = v41[0];
  v42 = *a1;
  v14 = *(v42 + 16);
  if (v14 >= 2)
  {
    v14 = 2;
  }

  *&v38 = v42;
  *(&v38 + 1) = v42 + 32;
  *&v39 = 0;
  *(&v39 + 1) = (2 * v14) | 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28520, &unk_1DB2C7BC0);
  sub_1DB1688F0(&qword_1EE13E528, &qword_1ECC28520, &unk_1DB2C7BC0, MEMORY[0x1E69E6958]);
  v15 = sub_1DB2BAD24();
  v17 = v16;
  sub_1DB1445E0(&v42, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v18 = sub_1DB2B73AC(v15, v17);
  v20 = v19;
  if (v13 == __PAIR128__(0xE500000000000000, 0x3635325348))
  {

    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  if (sub_1DB2BB924())
  {

    if (a3)
    {
LABEL_25:
      v29 = sub_1DB231A8C(a2, a3, v18, v20);
      goto LABEL_26;
    }

LABEL_38:
    v38 = 0uLL;
    LOBYTE(v39) = 9;
    sub_1DB225318();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 9;
    return sub_1DB207494(v18, v20);
  }

  if (v13 == __PAIR128__(0xE500000000000000, 0x3438335348) || (sub_1DB2BB924() & 1) != 0)
  {

    if (!a3)
    {
      goto LABEL_38;
    }

    v29 = sub_1DB231D28(a2, a3, v18, v20);
LABEL_26:
    if (v3)
    {
      return sub_1DB207494(v18, v20);
    }

    goto LABEL_27;
  }

  if (v13 == __PAIR128__(0xE500000000000000, 0x3231355348) || (sub_1DB2BB924() & 1) != 0)
  {

    if (!a3)
    {
      goto LABEL_38;
    }

    v29 = sub_1DB231FC4(a2, a3, v18, v20);
    goto LABEL_26;
  }

  if (v13 == __PAIR128__(0xE500000000000000, 0x3635325345) || (sub_1DB2BB924() & 1) != 0)
  {

    v33 = *(a1 + 1);
    v38 = *a1;
    v39 = v33;
    v40 = *(a1 + 2);
    *&v41[0] = a2;
    *(&v41[0] + 1) = a3;
    v34 = v18;
    v35 = v20;
    v36 = 0;
  }

  else
  {
    if (v13 != __PAIR128__(0xE500000000000000, 0x3438335345) && (sub_1DB2BB924() & 1) == 0)
    {
      sub_1DB225318();
      swift_allocError();
      *v30 = v13;
      v31 = 6;
      goto LABEL_29;
    }

    v37 = *(a1 + 1);
    v38 = *a1;
    v39 = v37;
    v40 = *(a1 + 2);
    *&v41[0] = a2;
    *(&v41[0] + 1) = a3;
    v34 = v18;
    v35 = v20;
    v36 = 1;
  }

  v29 = sub_1DB232260(v41, v34, v35, v36);
  if (v3)
  {
    return sub_1DB207494(v18, v20);
  }

LABEL_27:
  if ((v29 & 1) == 0)
  {
    sub_1DB225318();
    swift_allocError();
    *v30 = 0xD000000000000017;
    *(v30 + 8) = 0x80000001DB2D5B90;
    v31 = 7;
LABEL_29:
    *(v30 + 16) = v31;
    swift_willThrow();
  }

  return sub_1DB207494(v18, v20);
}

uint64_t sub_1DB231A8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v23 = a4;
  v26 = sub_1DB2BAA34();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v9 = sub_1DB2BAA64();
  __swift_project_value_buffer(v9, qword_1EE13E898);
  sub_1DB2BAA24();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v28 = v11;
  *v10 = 136315138;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28530, &qword_1DB2C7BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28538, &unk_1DB2C7BD8);
  v12 = sub_1DB2BADF4();
  v14 = sub_1DB2351CC(v12, v13, &v28);

  *(v10 + 4) = v14;
  v15 = sub_1DB2BAA44();
  LOBYTE(v14) = sub_1DB2BB2F4();
  v16 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v14, v16, "verifyHMACSignature", "type=%s", v10, 0xCu);
  v17 = v25;
  v18 = sub_1DB232A14(v22, a3, v23, a1, v24);
  if (v17)
  {
  }

  else
  {
    v19 = sub_1DB2BB2E4();
    v20 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v19, v20, "verifyHMACSignature", "type=%s", v10, 0xCu);

    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E1284BF0](v11, -1, -1);
    MEMORY[0x1E1284BF0](v10, -1, -1);
  }

  (*(v6 + 8))(v8, v26);
  return v18 & 1;
}

uint64_t sub_1DB231D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v23 = a4;
  v26 = sub_1DB2BAA34();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v9 = sub_1DB2BAA64();
  __swift_project_value_buffer(v9, qword_1EE13E898);
  sub_1DB2BAA24();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v28 = v11;
  *v10 = 136315138;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28540, &qword_1DB2C7BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28548, &qword_1DB2C7BF0);
  v12 = sub_1DB2BADF4();
  v14 = sub_1DB2351CC(v12, v13, &v28);

  *(v10 + 4) = v14;
  v15 = sub_1DB2BAA44();
  LOBYTE(v14) = sub_1DB2BB2F4();
  v16 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v14, v16, "verifyHMACSignature", "type=%s", v10, 0xCu);
  v17 = v25;
  v18 = sub_1DB232794(v22, a3, v23, a1, v24);
  if (v17)
  {
  }

  else
  {
    v19 = sub_1DB2BB2E4();
    v20 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v19, v20, "verifyHMACSignature", "type=%s", v10, 0xCu);

    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E1284BF0](v11, -1, -1);
    MEMORY[0x1E1284BF0](v10, -1, -1);
  }

  (*(v6 + 8))(v8, v26);
  return v18 & 1;
}

uint64_t sub_1DB231FC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v23 = a4;
  v26 = sub_1DB2BAA34();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v9 = sub_1DB2BAA64();
  __swift_project_value_buffer(v9, qword_1EE13E898);
  sub_1DB2BAA24();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v28 = v11;
  *v10 = 136315138;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28558, &qword_1DB2C7BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28560, &unk_1DB2C7C00);
  v12 = sub_1DB2BADF4();
  v14 = sub_1DB2351CC(v12, v13, &v28);

  *(v10 + 4) = v14;
  v15 = sub_1DB2BAA44();
  LOBYTE(v14) = sub_1DB2BB2F4();
  v16 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v14, v16, "verifyHMACSignature", "type=%s", v10, 0xCu);
  v17 = v25;
  v18 = sub_1DB232514(v22, a3, v23, a1, v24);
  if (v17)
  {
  }

  else
  {
    v19 = sub_1DB2BB2E4();
    v20 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v15, v19, v20, "verifyHMACSignature", "type=%s", v10, 0xCu);

    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E1284BF0](v11, -1, -1);
    MEMORY[0x1E1284BF0](v10, -1, -1);
  }

  (*(v6 + 8))(v8, v26);
  return v18 & 1;
}

uint64_t sub_1DB232260(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v28 = a3;
  v27 = a2;
  v30 = sub_1DB2BAA34();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v26 = *a1;
  v11 = v4[1];
  v32[0] = *v4;
  v32[1] = v11;
  v32[2] = v4[2];
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v12 = sub_1DB2BAA64();
  __swift_project_value_buffer(v12, qword_1EE13E898);
  sub_1DB2BAA24();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v33 = v14;
  *v13 = 136315138;
  v15 = a4 & 1;
  v31 = v15;
  v16 = sub_1DB2BADF4();
  v18 = sub_1DB2351CC(v16, v17, &v33);

  *(v13 + 4) = v18;
  v19 = sub_1DB2BAA44();
  v20 = sub_1DB2BB2F4();
  v21 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v19, v20, v21, "verifyECDSASignature", "mode=%s", v13, 0xCu);
  v22 = v29;
  sub_1DB232C94(v32, v26, v10, v15, v27, v28, &v31);
  if (v22)
  {
  }

  else
  {
    v23 = sub_1DB2BB2E4();
    v24 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v19, v23, v24, "verifyECDSASignature", "mode=%s", v13, 0xCu);

    v20 = v31;
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E1284BF0](v14, -1, -1);
    MEMORY[0x1E1284BF0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v30);
  return v20 & 1;
}

unint64_t sub_1DB232514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = sub_1DB2BAB64();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v23 = *(a1 + 32);
    v24 = v23;
    v22[2] = a2;
    v22[3] = a3;
    sub_1DB236330(&v24, v22);

    v22[0] = sub_1DB2B73AC(a4, a5);
    v22[1] = v14;
    sub_1DB2BAB54();
    sub_1DB2BAC94();
    sub_1DB23638C(&qword_1ECC28568, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
    sub_1DB236210();
    LOBYTE(a5) = sub_1DB2BABA4();
    (*(v10 + 8))(v12, v21);
    sub_1DB207494(v23, *(&v23 + 1));
  }

  else
  {
    *&v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28558, &qword_1DB2C7BF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28560, &unk_1DB2C7C00);
    v15 = sub_1DB2BADF4();
    v17 = v16;
    sub_1DB225318();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 6;
    swift_willThrow();
  }

  return a5 & 1;
}

unint64_t sub_1DB232794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = sub_1DB2BAB64();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v23 = *(a1 + 32);
    v24 = v23;
    v22[2] = a2;
    v22[3] = a3;
    sub_1DB236330(&v24, v22);

    v22[0] = sub_1DB2B73AC(a4, a5);
    v22[1] = v14;
    sub_1DB2BAB54();
    sub_1DB2BAC84();
    sub_1DB23638C(&qword_1ECC28550, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    sub_1DB236210();
    LOBYTE(a5) = sub_1DB2BABA4();
    (*(v10 + 8))(v12, v21);
    sub_1DB207494(v23, *(&v23 + 1));
  }

  else
  {
    *&v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28540, &qword_1DB2C7BE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28548, &qword_1DB2C7BF0);
    v15 = sub_1DB2BADF4();
    v17 = v16;
    sub_1DB225318();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 6;
    swift_willThrow();
  }

  return a5 & 1;
}

unint64_t sub_1DB232A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = sub_1DB2BAB64();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v23 = *(a1 + 32);
    v24 = v23;
    v22[2] = a2;
    v22[3] = a3;
    sub_1DB236330(&v24, v22);

    v22[0] = sub_1DB2B73AC(a4, a5);
    v22[1] = v14;
    sub_1DB2BAB54();
    sub_1DB2BAC74();
    sub_1DB23638C(&qword_1ECC28528, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1DB236210();
    LOBYTE(a5) = sub_1DB2BABA4();
    (*(v10 + 8))(v12, v21);
    sub_1DB207494(v23, *(&v23 + 1));
  }

  else
  {
    *&v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28530, &qword_1DB2C7BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28538, &unk_1DB2C7BD8);
    v15 = sub_1DB2BADF4();
    v17 = v16;
    sub_1DB225318();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 6;
    swift_willThrow();
  }

  return a5 & 1;
}

uint64_t sub_1DB232C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v15 = *(a1 + 16);
  v36 = *a1;
  v37 = v15;
  v38 = *(a1 + 32);
  result = sub_1DB23310C();
  if (!v7)
  {
    if (a3)
    {
      result = sub_1DB2333C4(a4 & 1, a2, a3, a1, a5, a6);
LABEL_24:
      *a7 = result & 1;
      return result;
    }

    v17 = *(a1 + 8);
    if (*(v17 + 16))
    {
      v18 = sub_1DB141B30(6501752, 0xE300000000000000);
      if ((v19 & 1) != 0 && (sub_1DB1444CC(*(v17 + 56) + 32 * v18, &v36), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60), swift_dynamicCast()))
      {
        v20 = v35;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      if (*(v20 + 16))
      {
        goto LABEL_10;
      }
    }

    else if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_10:

      v21 = sub_1DB2BA844();
      v23 = v22;

      if (v23 >> 60 != 15)
      {
        v24 = sub_1DB2BA884();
        v25 = SecCertificateCreateWithData(0, v24);
        sub_1DB2351B8(v21, v23);

        if (v25)
        {
          v26 = SecCertificateCopyKey(v25);

          if (v26)
          {
            v27 = SecKeyCopyExternalRepresentation(v26, 0);
            if (v27)
            {
              v28 = v27;
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {

                goto LABEL_22;
              }

              v36 = xmmword_1DB2C77B0;
              sub_1DB2BA8A4();

              v29 = *(&v36 + 1);
              if (*(&v36 + 1) >> 60 != 15)
              {
                v33 = v36;
                v34 = sub_1DB2337E4(a4 & 1, v36, *(&v36 + 1), a1, a5, a6);

                sub_1DB2351B8(v33, v29);
                result = v34;
                goto LABEL_24;
              }
            }
          }

LABEL_22:
          sub_1DB225318();
          swift_allocError();
          *v32 = 0;
          *(v32 + 8) = 0;
          *(v32 + 16) = 9;
          return swift_willThrow();
        }
      }

      v36 = xmmword_1DB2C77C0;
      LOBYTE(v37) = 9;
      sub_1DB225318();
      swift_willThrowTypedImpl();
      v30 = 2;
LABEL_20:
      sub_1DB225318();
      result = swift_allocError();
      *v31 = v30;
      *(v31 + 8) = 0;
      *(v31 + 16) = 9;
      return result;
    }

    v36 = xmmword_1DB2C77D0;
    LOBYTE(v37) = 9;
    sub_1DB225318();
    swift_willThrowTypedImpl();
    v30 = 1;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB23310C()
{
  v20 = sub_1DB2BAA34();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB2BAA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  v19[0] = *v0;
  v19[1] = v8;
  v19[2] = v0[2];
  if (qword_1EE13E890 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EE13E898);
  (*(v5 + 16))(v7, v9, v4);
  sub_1DB2BAA24();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_1DB2BAA44();
  v12 = sub_1DB2BB2F4();
  v13 = sub_1DB2BAA14();
  _os_signpost_emit_with_name_impl(&dword_1DB132000, v11, v12, v13, "verifyCertificateChain", "", v10, 2u);
  sub_1DB233C24(v19);
  if (v1)
  {
  }

  else
  {
    v14 = sub_1DB2BB2E4();
    v15 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v11, v14, v15, "verifyCertificateChain", "", v10, 2u);

    MEMORY[0x1E1284BF0](v10, -1, -1);
  }

  (*(v18 + 8))(v3, v20);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB2333C4(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v30 = a5;
  *(&v30 + 1) = a6;
  v34 = a4;
  v9 = sub_1DB2BAC34();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB2BAC64();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB2BABD4();
  v27 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DB2BAC04();
  v31 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = sub_1DB2B73AC(a2, a3);
  if (a1)
  {
    *&v36 = v21;
    *(&v36 + 1) = v22;
    v23 = v39;
    sub_1DB2BAC54();
    if (!v23)
    {
      v38 = *(v34 + 32);
      v36 = *(v34 + 32);
      sub_1DB236330(&v38, v35);
      sub_1DB236210();
      sub_1DB2BAC24();
      v36 = v30;
      a1 = sub_1DB2BAC44();
      (*(v28 + 8))(v11, v29);
      (*(v32 + 8))(v14, v33);
    }
  }

  else
  {
    *&v36 = v21;
    *(&v36 + 1) = v22;
    v24 = v39;
    sub_1DB2BABF4();
    if (!v24)
    {
      v36 = *(v34 + 32);
      v37 = v36;
      sub_1DB236330(&v37, v35);
      sub_1DB236210();
      sub_1DB2BABC4();
      v36 = v30;
      a1 = sub_1DB2BABE4();
      (*(v27 + 8))(v17, v15);
      (*(v31 + 8))(v20, v18);
    }
  }

  return a1 & 1;
}

uint64_t sub_1DB2337E4(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v29 = a5;
  *(&v29 + 1) = a6;
  v32 = a4;
  v9 = sub_1DB2BAC34();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB2BAC64();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB2BABD4();
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DB2BAC04();
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *&v34 = a2;
    *(&v34 + 1) = a3;
    sub_1DB226094(a2, a3);
    v22 = v37;
    sub_1DB2BAC54();
    if (!v22)
    {
      v36 = *(v32 + 32);
      v34 = *(v32 + 32);
      sub_1DB236330(&v36, v33);
      sub_1DB236210();
      sub_1DB2BAC14();
      v34 = v29;
      LOBYTE(a2) = sub_1DB2BAC44();
      (*(v27 + 8))(v11, v28);
      (*(v30 + 8))(v14, v31);
    }
  }

  else
  {
    v23 = v19;
    *&v34 = a2;
    *(&v34 + 1) = a3;
    sub_1DB226094(a2, a3);
    v24 = v37;
    sub_1DB2BABF4();
    if (!v24)
    {
      v34 = *(v32 + 32);
      v35 = v34;
      sub_1DB236330(&v35, v33);
      sub_1DB236210();
      sub_1DB2BABB4();
      v34 = v29;
      LOBYTE(a2) = sub_1DB2BABE4();
      (*(v26 + 8))(v17, v15);
      (*(v23 + 8))(v21, v18);
    }
  }

  return a2 & 1;
}

void sub_1DB233C24(uint64_t a1)
{
  v4 = a1;
  trust[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (*(v5 + 16) && (v6 = sub_1DB141B30(6501752, 0xE300000000000000), (v7 & 1) != 0) && (sub_1DB1444CC(*(v5 + 56) + 32 * v6, &v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60), swift_dynamicCast()))
  {
    v8 = v61[0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);

  if (!v9)
  {
    sub_1DB225318();
    swift_allocError();
    *v15 = xmmword_1DB2C77D0;
    *(v15 + 16) = 9;
    swift_willThrow();
    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 16))
  {
    v11 = sub_1DB141B30(6501752, 0xE300000000000000);
    if (v12)
    {
      sub_1DB1444CC(*(v5 + 56) + 32 * v11, &v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      if (swift_dynamicCast())
      {
        ApplePinned = v61[0];
        v14 = *(v61[0] + 16);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_14:
        v57 = v4;
        *&v64 = v10;
        sub_1DB2BB614();
        v16 = 0;
        v17 = ApplePinned + 5;
        while (v16 < ApplePinned[2])
        {

          v18 = sub_1DB2BA844();
          if (v19 >> 60 == 15 || (v20 = v18, v21 = v19, v3 = sub_1DB2BA884(), v2 = SecCertificateCreateWithData(0, v3), sub_1DB2351B8(v20, v21), v3, !v2))
          {

            sub_1DB225318();
            swift_allocError();
            *v22 = xmmword_1DB2C77C0;
            *(v22 + 16) = 9;
            swift_willThrow();

            return;
          }

          v16 = (v16 + 1);

          sub_1DB2BB5E4();
          sub_1DB2BB624();
          sub_1DB2BB634();
          sub_1DB2BB5F4();
          v17 += 2;
          if (v14 == v16)
          {

            v4 = v57;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    ApplePinned = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    ApplePinned = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v14)
    {
      goto LABEL_14;
    }
  }

LABEL_22:

LABEL_23:
  v3 = 0xD000000000000019;
  v23 = sub_1DB2BAD64();
  v24 = sub_1DB2BAD64();
  v25 = sub_1DB2BAD64();
  ApplePinned = SecPolicyCreateApplePinned();

  trust[0] = 0;
  type metadata accessor for SecCertificate(0);
  v26 = sub_1DB2BB0B4();

  v27 = SecTrustCreateWithCertificates(v26, ApplePinned, trust);

  if (v27 || !trust[0])
  {
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();

    *&v64 = 0xD000000000000027;
    *(&v64 + 1) = 0x80000001DB2D5C50;
    LODWORD(v61[0]) = v27;
    v52 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v52);

    v53 = v64;
    sub_1DB225318();
    swift_allocError();
    *v54 = v53;
    *(v54 + 16) = 8;
    swift_willThrow();
  }

  else
  {
    v2 = &v64;
    v28 = v4[1];
    v64 = *v4;
    v65 = v28;
    v66 = v4[2];
    v14 = trust[0];
    sub_1DB234500(v14, 0, v61);
    if (v1)
    {
      v57 = v4;
      v29 = v61[0];
      v30 = v61[1];
      v31 = v62;
      sub_1DB225318();
      v16 = swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v30;
      *(v32 + 16) = v31;
      v33 = v16;
      if (qword_1ECC26BF0 == -1)
      {
LABEL_27:
        v34 = qword_1ECC28500;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1DB2BCC40;
        v59 = sub_1DB156674(0, 98, 0, MEMORY[0x1E69E7CC0]);
        v36._countAndFlagsBits = v3 + 35;
        v36._object = 0x80000001DB2D5C80;
        LogMessage.StringInterpolation.appendLiteral(_:)(v36);
        swift_getErrorValue();
        v63 = v58;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
        (*(*(v58 - 8) + 16))(boxed_opaque_existential_0);
        sub_1DB1567F4(v61, v60);
        v64 = 0u;
        v65 = 0u;
        sub_1DB156864(v60, &v64);
        LOBYTE(v66) = 0;
        v38 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DB156674(0, *(v59 + 2) + 1, 1, v59);
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1DB156674((v39 > 1), v40 + 1, 1, v38);
        }

        *(v38 + 2) = v40 + 1;
        v41 = &v38[40 * v40];
        v42 = v64;
        v43 = v65;
        v41[64] = v66;
        *(v41 + 2) = v42;
        *(v41 + 3) = v43;
        sub_1DB1445E0(v61, &qword_1ECC26F30, &unk_1DB2BFA90);
        v44._countAndFlagsBits = 0xD000000000000025;
        v44._object = 0x80000001DB2D5CC0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        *(v35 + 32) = v38;
        v45 = sub_1DB2BB274();
        if (os_log_type_enabled(v34, v45))
        {
          v56 = v34;
          v46 = os_variant_has_internal_content() ^ 1;
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          *&v64 = v35;
          *(&v64 + 1) = sub_1DB15693C;
          *&v65 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
          sub_1DB156944();
          v48 = sub_1DB2BAD24();
          v50 = v49;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1DB2BCC40;
          *(v51 + 56) = MEMORY[0x1E69E6158];
          *(v51 + 64) = sub_1DB156A2C();
          *(v51 + 32) = v48;
          *(v51 + 40) = v50;
          v2 = &v64;
          sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v56, v45, v51);
        }

        v55 = v57[1];
        v64 = *v57;
        v65 = v55;
        *(v2 + 2) = v57[2];
        sub_1DB234500(v14, 1, v61);

        MEMORY[0x1E1284A10](v16);
        MEMORY[0x1E1284A10](v16);
        goto LABEL_37;
      }

LABEL_39:
      swift_once();
      goto LABEL_27;
    }
  }

LABEL_37:
}

void sub_1DB234500(__SecTrust *a1, char a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  Allowed = SecTrustSetNetworkFetchAllowed(a1, a2 & 1);
  if (Allowed)
  {
    v7 = Allowed;
    if (qword_1ECC26BF0 != -1)
    {
      swift_once();
    }

    v8 = qword_1ECC28500;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DB2BCC40;
    v42 = sub_1DB156674(0, 71, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0x7420656C62616E55;
    v10._object = 0xEA0000000000206FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = 0x656C6261736964;
    if (a2)
    {
      v11 = 0x656C62616E65;
    }

    v12 = 0xE700000000000000;
    v48 = MEMORY[0x1E69E6158];
    if (a2)
    {
      v12 = 0xE600000000000000;
    }

    error[0] = v11;
    error[1] = v12;
    sub_1DB1567F4(error, v43);
    v44 = 0u;
    v45 = 0u;
    sub_1DB156864(v43, &v44);
    v46 = 0;
    v13 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DB156674(0, *(v42 + 2) + 1, 1, v42);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1DB156674((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v44;
    v18 = v45;
    v16[64] = v46;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1DB1445E0(error, &qword_1ECC26F30, &unk_1DB2BFA90);
    v19._countAndFlagsBits = 0xD00000000000003BLL;
    v19._object = 0x80000001DB2D5CF0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v48 = MEMORY[0x1E69E72F0];
    LODWORD(error[0]) = v7;
    sub_1DB1567F4(error, v43);
    v44 = 0u;
    v45 = 0u;
    sub_1DB156864(v43, &v44);
    v46 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DB156674(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_1DB156674((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[40 * v21];
    v23 = v44;
    v24 = v45;
    v22[64] = v46;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    sub_1DB1445E0(error, &qword_1ECC26F30, &unk_1DB2BFA90);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v9 + 32) = v13;
    v26 = sub_1DB2BB274();
    if (os_log_type_enabled(v8, v26))
    {
      v27 = os_variant_has_internal_content() ^ 1;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *&v44 = v9;
      *(&v44 + 1) = sub_1DB158A74;
      *&v45 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
      sub_1DB156944();
      v29 = sub_1DB2BAD24();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1DB2BCC40;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1DB156A2C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v8, v26, v32);
    }
  }

  error[0] = 0;
  if (!SecTrustEvaluateWithError(a1, error))
  {
    if (error[0])
    {
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      v33 = error[0];
      sub_1DB2BB4F4();
      v43[0] = v33;
      type metadata accessor for CFError(0);
      sub_1DB23638C(&qword_1ECC28570, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      v34 = sub_1DB2BB994();
      v36 = v35;

      *&v44 = v34;
      *(&v44 + 1) = v36;
      MEMORY[0x1E1283490](0x6E69616D6F64202CLL, 0xEA0000000000203ALL);
      v37 = v33;
      v43[0] = CFErrorGetDomain(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28578, &qword_1DB2C7C10);
      v38 = sub_1DB2BADF4();
      MEMORY[0x1E1283490](v38);

      MEMORY[0x1E1283490](0x203A65646F63202CLL, 0xE800000000000000);
      Code = CFErrorGetCode(v37);

      v43[0] = Code;
      v40 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v40);

      v41 = v44;
      *a3 = v44;
      *(a3 + 16) = 8;
      v44 = v41;
      LOBYTE(v45) = 8;
      sub_1DB225318();
      swift_willThrowTypedImpl();
    }

    else
    {
      *a3 = 0xD000000000000015;
      *(a3 + 8) = 0x80000001DB2D5D30;
      *(a3 + 16) = 8;
      *&v44 = 0xD000000000000015;
      *(&v44 + 1) = 0x80000001DB2D5D30;
      LOBYTE(v45) = 8;
      sub_1DB225318();
      swift_willThrowTypedImpl();
    }
  }
}

uint64_t sub_1DB234B78(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28518, &qword_1DB2C7BB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v22 = sub_1DB2BAB64();
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;

  v24 = sub_1DB2B73AC(a1, a2);
  v25 = v13;
  sub_1DB2BAB54();
  v14 = *(v12 + 16);
  if (v14 >= 2)
  {
    v14 = 2;
  }

  v24 = v12;
  v25 = v12 + 32;
  v26 = 0;
  v27 = (2 * v14) | 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28520, &unk_1DB2C7BC0);
  sub_1DB1688F0(&qword_1EE13E528, &qword_1ECC28520, &unk_1DB2C7BC0, MEMORY[0x1E69E6958]);
  v15 = sub_1DB2BAD24();
  v17 = v16;

  v24 = sub_1DB2B73AC(v15, v17);
  v25 = v18;
  sub_1DB2BAC74();
  sub_1DB23638C(&qword_1ECC28528, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DB236210();
  sub_1DB2BAB94();
  sub_1DB207494(v24, v25);
  v23 = v8;
  sub_1DB2BAB74();
  (*(v9 + 8))(v11, v22);
  v19 = v24;
  (*(v6 + 8))(v8, v5);
  return v19;
}

unint64_t sub_1DB234E8C@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28518, &qword_1DB2C7BB8);
    v4 = sub_1DB2BAB84();
    result = sub_1DB236280(v2, v4);
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JWT.withPayload(_:secret:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char **a5@<X8>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    goto LABEL_15;
  }

  sub_1DB226094(v10, v11);
  sub_1DB226094(v12, v13);
  sub_1DB226094(a1, a2);
  sub_1DB207494(v10, v11);
  v15 = sub_1DB2BA894();
  v17 = v16;
  v18 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB235700(v8);
  }

  if (*(v8 + 2) < 2uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v8 + 6) = v15;
  *(v8 + 7) = v17;

  if (a4)
  {

    v25 = v9;

    v26 = a1;
    v27 = a2;
    sub_1DB226094(a1, a2);
    sub_1DB226094(v12, v13);
    v19 = sub_1DB234B78(a3, a4);
    v21 = v20;

    sub_1DB207494(a1, a2);
    sub_1DB207494(v12, v13);
    v22 = v12;
    v12 = v21;
    sub_1DB207494(v22, v13);
    v15 = v19;
    v9 = sub_1DB2BA894();
    v13 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_7:
      a1 = v26;
      a2 = v27;
      v18 = v25;
      if (*(v8 + 2) >= 3uLL)
      {
LABEL_11:
        *(v8 + 8) = v9;
        *(v8 + 9) = v13;

        *a5 = v8;
        a5[1] = v18;
        a5[2] = a1;
        a5[3] = a2;
        a5[4] = v15;
        a5[5] = v12;
        return result;
      }

      __break(1u);
      goto LABEL_9;
    }

LABEL_13:
    v8 = sub_1DB235700(v8);
    goto LABEL_7;
  }

LABEL_9:
  sub_1DB207494(v12, v13);
  if (*(v8 + 2) >= 3uLL)
  {
    v9 = 0;
    v15 = 0;
    v12 = 0xC000000000000000;
    v13 = 0xE000000000000000;
    goto LABEL_11;
  }

  __break(1u);
LABEL_15:
  result = sub_1DB2BB684();
  __break(1u);
  return result;
}

uint64_t sub_1DB2351A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DB226094(a1, a2);
  }

  return a1;
}

uint64_t sub_1DB2351B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DB207494(result, a2);
  }

  return result;
}

unint64_t sub_1DB2351CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DB235298(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DB1444CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DB235298(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DB2353A4(a5, a6);
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
    result = sub_1DB2BB5B4();
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

void *sub_1DB2353A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DB2353F0(a1, a2);
  sub_1DB235520(&unk_1F56DF490);
  return v3;
}

void *sub_1DB2353F0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DB13832C(v5, 0);
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

  result = sub_1DB2BB5B4();
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
        v10 = sub_1DB2BAF34();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DB13832C(v10, 0);
        result = sub_1DB2BB4C4();
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

uint64_t sub_1DB235520(uint64_t result)
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

  result = sub_1DB23560C(result, v11, 1, v3);
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

char *sub_1DB23560C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

BOOL _s19OnDeviceStorageCore3JWTV5ErrorO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        if (v7 == 5)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_1DB219128(*a1, v2, 5u);
            sub_1DB219128(v3, v2, 5u);
            sub_1DB219144(v3, v2, 5u);
            v8 = v3;
            v9 = v2;
            v10 = 5;
            goto LABEL_80;
          }

          v13 = sub_1DB2BB924();
          sub_1DB219128(v6, v5, 5u);
          sub_1DB219128(v3, v2, 5u);
          sub_1DB219144(v3, v2, 5u);
          v14 = v6;
          v15 = v5;
          v16 = 5;
          goto LABEL_70;
        }
      }

      else if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1DB219128(*a1, v2, 6u);
          sub_1DB219128(v3, v2, 6u);
          sub_1DB219144(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_80;
        }

        v13 = sub_1DB2BB924();
        sub_1DB219128(v6, v5, 6u);
        sub_1DB219128(v3, v2, 6u);
        sub_1DB219144(v3, v2, 6u);
        v14 = v6;
        v15 = v5;
        v16 = 6;
        goto LABEL_70;
      }
    }

    else if (v4 == 7)
    {
      if (v7 == 7)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1DB219128(*a1, v2, 7u);
          sub_1DB219128(v3, v2, 7u);
          sub_1DB219144(v3, v2, 7u);
          v8 = v3;
          v9 = v2;
          v10 = 7;
          goto LABEL_80;
        }

        v13 = sub_1DB2BB924();
        sub_1DB219128(v6, v5, 7u);
        sub_1DB219128(v3, v2, 7u);
        sub_1DB219144(v3, v2, 7u);
        v14 = v6;
        v15 = v5;
        v16 = 7;
        goto LABEL_70;
      }
    }

    else
    {
      if (v4 != 8)
      {
        if (v3 <= 1)
        {
          if (v3 | v2)
          {
            if (v7 == 9 && v6 == 1 && !v5)
            {
              sub_1DB219144(*a1, v2, 9u);
              v12 = 1;
              sub_1DB219144(1, 0, 9u);
              return v12;
            }

            goto LABEL_57;
          }

          if (v7 != 9 || v5 | v6)
          {
LABEL_57:
            sub_1DB219128(v6, v5, v7);
            sub_1DB219144(v3, v2, v4);
            sub_1DB219144(v6, v5, v7);
            return 0;
          }

          sub_1DB219144(*a1, v2, 9u);
          v8 = 0;
        }

        else if (v3 ^ 2 | v2)
        {
          if (v3 ^ 3 | v2)
          {
            if (v7 != 9 || v6 != 4 || v5)
            {
              goto LABEL_57;
            }

            sub_1DB219144(*a1, v2, 9u);
            v8 = 4;
          }

          else
          {
            if (v7 != 9 || v6 != 3 || v5)
            {
              goto LABEL_57;
            }

            sub_1DB219144(*a1, v2, 9u);
            v8 = 3;
          }
        }

        else
        {
          if (v7 != 9 || v6 != 2 || v5)
          {
            goto LABEL_57;
          }

          sub_1DB219144(*a1, v2, 9u);
          v8 = 2;
        }

        v9 = 0;
        v10 = 9;
        goto LABEL_80;
      }

      if (v7 == 8)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1DB219128(*a1, v2, 8u);
          sub_1DB219128(v3, v2, 8u);
          sub_1DB219144(v3, v2, 8u);
          v8 = v3;
          v9 = v2;
          v10 = 8;
          goto LABEL_80;
        }

        v13 = sub_1DB2BB924();
        sub_1DB219128(v6, v5, 8u);
        sub_1DB219128(v3, v2, 8u);
        sub_1DB219144(v3, v2, 8u);
        v14 = v6;
        v15 = v5;
        v16 = 8;
LABEL_70:
        sub_1DB219144(v14, v15, v16);
        return v13 & 1;
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1DB219128(*a1, v2, 2u);
          sub_1DB219128(v3, v2, 2u);
          sub_1DB219144(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_80;
        }

        v13 = sub_1DB2BB924();
        sub_1DB219128(v6, v5, 2u);
        sub_1DB219128(v3, v2, 2u);
        sub_1DB219144(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
        goto LABEL_70;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1DB219128(*a1, v2, 3u);
          sub_1DB219128(v3, v2, 3u);
          sub_1DB219144(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_80:
          sub_1DB219144(v8, v9, v10);
          return 1;
        }

        v13 = sub_1DB2BB924();
        sub_1DB219128(v6, v5, 3u);
        sub_1DB219128(v3, v2, 3u);
        sub_1DB219144(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
        goto LABEL_70;
      }
    }

    else if (v7 == 4)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_1DB219128(*a1, v2, 4u);
        sub_1DB219128(v3, v2, 4u);
        sub_1DB219144(v3, v2, 4u);
        v8 = v3;
        v9 = v2;
        v10 = 4;
        goto LABEL_80;
      }

      v13 = sub_1DB2BB924();
      sub_1DB219128(v6, v5, 4u);
      sub_1DB219128(v3, v2, 4u);
      sub_1DB219144(v3, v2, 4u);
      v14 = v6;
      v15 = v5;
      v16 = 4;
      goto LABEL_70;
    }

    goto LABEL_56;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1DB219144(*a1, v2, 0);
      sub_1DB219144(v6, v5, 0);
      return v3 == v6 && v2 == v5;
    }

    goto LABEL_57;
  }

  if (v7 != 1)
  {
    goto LABEL_56;
  }

  if (v3 != v6 || v2 != v5)
  {
    v13 = sub_1DB2BB924();
    sub_1DB219128(v6, v5, 1u);
    sub_1DB219128(v3, v2, 1u);
    sub_1DB219144(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_70;
  }

  v12 = 1;
  sub_1DB219128(*a1, v2, 1u);
  sub_1DB219128(v3, v2, 1u);
  sub_1DB219144(v3, v2, 1u);
  sub_1DB219144(v3, v2, 1u);
  return v12;
}

unint64_t sub_1DB235ED8(void *a1)
{
  a1[1] = sub_1DB2190D4();
  a1[2] = sub_1DB235F10();
  result = sub_1DB235F64();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB235F10()
{
  result = qword_1ECC28508;
  if (!qword_1ECC28508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28508);
  }

  return result;
}

unint64_t sub_1DB235F64()
{
  result = qword_1ECC28510;
  if (!qword_1ECC28510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28510);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DB235FD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB236018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB236074(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DB2360C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DB236118(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore3JWTV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1DB23615C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB2361A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1DB2361E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DB236210()
{
  result = qword_1EE13F298;
  if (!qword_1EE13F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F298);
  }

  return result;
}

unint64_t sub_1DB236280(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DB2B91D4(a1, &a1[a2]);
  }

  sub_1DB2BA724();
  swift_allocObject();
  sub_1DB2BA6D4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DB2BA854();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DB23638C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DB2363E8()
{
  result = qword_1ECC28588;
  if (!qword_1ECC28588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28588);
  }

  return result;
}

uint64_t sub_1DB23643C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 6518642;
    }

    else
    {
      v3 = 0x79726F6D656DLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 30578;
    }

    else
    {
      v3 = 28530;
    }

    v4 = 0xE200000000000000;
  }

  v5 = 28530;
  v6 = 0xE300000000000000;
  v7 = 6518642;
  if (a2 != 2)
  {
    v7 = 0x79726F6D656DLL;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 30578;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB2BB924();
  }

  return v10 & 1;
}

uint64_t sub_1DB236548(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 27762;
    }

    else
    {
      v3 = 110;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE200000000000000;
    v3 = 28773;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 7107700;
    }

    else
    {
      v3 = 99;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 27762;
    }

    else
    {
      v6 = 110;
    }

    if (a2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE200000000000000;
    if (v3 != 28773)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 7107700)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    if (v3 != 99)
    {
LABEL_34:
      v7 = sub_1DB2BB924();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1DB236684(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C626174;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 2003134838;
    }

    else
    {
      v4 = 0x72656767697274;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7865646E69;
    }

    else
    {
      v4 = 0x656C626174;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 2003134838;
  if (a2 != 2)
  {
    v7 = 0x72656767697274;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x7865646E69;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB2BB924();
  }

  return v10 & 1;
}

uint64_t sub_1DB2367AC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x434952454D554ELL;
    }

    else
    {
      v3 = 0x52454745544E49;
    }

    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
    if (a1 == 2)
    {
      v3 = 1279346002;
    }

    else if (a1 == 3)
    {
      v3 = 1415071060;
    }

    else
    {
      v3 = 1112493122;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x434952454D554ELL;
    }

    else
    {
      v7 = 0x52454745544E49;
    }

    v6 = 0xE700000000000000;
    if (v3 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 1415071060;
    if (a2 != 3)
    {
      v4 = 1112493122;
    }

    if (a2 == 2)
    {
      v5 = 1279346002;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE400000000000000;
    if (v3 != v5)
    {
      goto LABEL_25;
    }
  }

  if (v2 != v6)
  {
LABEL_25:
    v8 = sub_1DB2BB924();
    goto LABEL_26;
  }

  v8 = 1;
LABEL_26:

  return v8 & 1;
}

uint64_t sub_1DB236900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x54524F4241;
    }

    else
    {
      v4 = 0x4B4341424C4C4F52;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1279869254;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x45524F4E4749;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x4543414C504552;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x54524F4241;
    }

    else
    {
      v9 = 0x4B4341424C4C4F52;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x45524F4E4749;
    if (a2 != 3)
    {
      v6 = 0x4543414C504552;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1279869254;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DB2BB924();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DB236A6C(char a1, char a2)
{
  if (qword_1DB2C8058[a1] == qword_1DB2C8058[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB2BB924();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DB236AD4(char a1, char a2)
{
  if (qword_1DB2C8078[a1] == qword_1DB2C8078[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB2BB924();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DB236B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1735289200;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7374617473;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7106931;
    }

    else
    {
      v4 = 1735289200;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7374617473;
  if (a2 != 2)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 7106931;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB236C58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x5443495254534552;
    }

    else
    {
      v5 = 0x4F49544341204F4ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE90000000000004ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x4C4C554E20544553;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4146454420544553;
    }

    else
    {
      v5 = 0x45444143534143;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000544C55;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  v9 = 0x4146454420544553;
  v10 = 0xEB00000000544C55;
  if (a2 != 3)
  {
    v9 = 0x45444143534143;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x5443495254534552;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DB2BB924();
  }

  return v13 & 1;
}

uint64_t sub_1DB236DEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE600000000000000;
    v11 = 0xE400000000000000;
    v12 = 1852403562;
    if (a1 != 2)
    {
      v12 = 0x737265746C6966;
      v11 = 0xE700000000000000;
    }

    v13 = 1836020326;
    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v13 = 0x7463656C6573;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x74696D696CLL;
    v5 = 0xE500000000000000;
    v6 = 0x6E6F696E75;
    if (a1 != 7)
    {
      v6 = 1752459639;
      v5 = 0xE400000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x70756F7267;
    if (a1 != 4)
    {
      v7 = 0x726564726FLL;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v8 != 1852403562)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        if (v8 != 0x737265746C6966)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v8 != 1836020326)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v8 != 0x7463656C6573)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE500000000000000;
    if (a2 == 4)
    {
      if (v8 != 0x70756F7267)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x726564726FLL)
    {
LABEL_52:
      v15 = sub_1DB2BB924();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE500000000000000;
    if (v8 != 0x74696D696CLL)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE500000000000000;
    if (v8 != 0x6E6F696E75)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE400000000000000;
    if (v8 != 1752459639)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_1DB237054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7361696C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1953393000;
    }

    else
    {
      v4 = 0x7972657571;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x736E6D756C6F63;
    }

    else
    {
      v4 = 0x7361696C61;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE400000000000000;
  v8 = 1953393000;
  if (a2 != 2)
  {
    v8 = 0x7972657571;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x736E6D756C6F63;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB23717C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4B4341424C4C4F52;
    }

    else
    {
      v4 = 0x4543414C504552;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x54524F4241;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1279869254;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x45524F4E4749;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x4B4341424C4C4F52;
    }

    else
    {
      v9 = 0x4543414C504552;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1279869254;
    if (a2 != 3)
    {
      v6 = 0x45524F4E4749;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x54524F4241;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DB2BB924();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DB2372E8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1DB2BAEB4();
  return sub_1DB2BAFD4();
}

uint64_t sub_1DB237368(uint64_t result, char a2)
{
  *(&v24 + 1) = *(result + 8);
  v25 = *result;
  *&v24 = *(result + 16);
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = qword_1DB2C8078[a2];
    v5 = (*v2 + 64);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = *(v5 - 32);
      v26 = *(v5 - 24);
      v11 = *(v5 - 1);
      v12 = *v5;
      if (qword_1DB2C8078[v10] == v4)
      {
        break;
      }

      v13 = sub_1DB2BB924();
      result = swift_bridgeObjectRelease_n();
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_6:
      v5 += 40;
      if (!--v3)
      {
        goto LABEL_13;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_10:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1386E0(0, *(v6 + 16) + 1, 1);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_1DB1386E0((v7 > 1), v8 + 1, 1);
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 40 * v8;
    *(v9 + 32) = v10;
    *(v9 + 40) = v26;
    *(v9 + 56) = v11;
    *(v9 + 64) = v12;
    goto LABEL_6;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v6 + 64);
    while (v15 < *(v6 + 16))
    {
      v18 = *(v16 - 3);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      if (qword_1DB2C8078[a2] == qword_1DB2C8078[*(v16 - 32)])
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v21 = sub_1DB2BB924();
        result = swift_bridgeObjectRelease_n();
        if ((v21 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v20)
      {
        if (v25 >= v18)
        {
          if (v25 != v18)
          {
            goto LABEL_30;
          }

          if (*(&v24 + 1) >= v17)
          {
            v22 = 0;
            if (*(&v24 + 1) != v17 || v24 >= v19)
            {
              goto LABEL_32;
            }
          }
        }
      }

      else if (v25 < v18 || v25 == v18 && v24 < __PAIR128__(v17, v19))
      {
LABEL_30:
        v22 = 0;
        goto LABEL_32;
      }

      ++v15;
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    v22 = 1;
LABEL_32:

    return v22;
  }

  return result;
}

uint64_t sub_1DB2375F4(uint64_t a1)
{
  v2 = 0;
  v3 = *(*v1 + 16);
  v33 = *v1 + 64;
  while (1)
  {
    v45 = v2;
    if (v3)
    {
      v5 = qword_1DB2C8078[*(&unk_1F56DF468 + v2 + 32)];
      v6 = v33;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v11 = *(v6 - 32);
        v36 = *(v6 - 24);
        v12 = *(v6 - 1);
        v13 = *v6;
        if (qword_1DB2C8078[v11] == v5)
        {
          break;
        }

        v14 = sub_1DB2BB924();
        swift_bridgeObjectRelease_n();
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_9:
        v6 += 40;
        if (!--v3)
        {
          goto LABEL_16;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DB1386E0(0, *(v7 + 2) + 1, 1);
        v7 = v38;
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        sub_1DB1386E0((v8 > 1), v9 + 1, 1);
        v7 = v38;
      }

      *(v7 + 2) = v9 + 1;
      v10 = &v7[40 * v9];
      v10[32] = v11;
      *(v10 + 40) = v36;
      *(v10 + 7) = v12;
      v10[64] = v13;
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
    if (*(v7 + 2) <= 1uLL)
    {
      goto LABEL_2;
    }

    v38 = v7;

    sub_1DB2389A8(&v38);
    if (v35)
    {
      MEMORY[0x1E1284A10](v35);

      __break(1u);
      return result;
    }

    v16 = *(v38 + 2);
    v35 = 0;
    if (!v16)
    {
LABEL_2:

      goto LABEL_3;
    }

    v17 = v38[32];
    v19 = *(v38 + 5);
    v18 = *(v38 + 6);
    v20 = *(v38 + 7);
    v21 = v38[64];
    v22 = &v38[40 * v16 + 32];
    v37 = *(v22 - 40);
    v24 = *(v22 - 4);
    v23 = *(v22 - 3);
    v25 = *(v22 - 2);
    v32 = *(v22 - 8);

    if (v19 >= v24)
    {
      if (v19 != v24)
      {
        goto LABEL_28;
      }

      if (v18 >= v23 && (v18 != v23 || v20 >= v25))
      {
        break;
      }
    }

LABEL_3:
    v2 = v45 + 1;
    v3 = v34;
    if (v45 == 4)
    {
      return result;
    }
  }

  v24 = v19;
LABEL_28:
  LOBYTE(v38) = v17;
  v39 = v19;
  v40 = v18;
  v41 = v20;
  v42 = v21;
  v43 = sub_1DB237B08();
  v44 = v27;
  MEMORY[0x1E1283490](8236, 0xE200000000000000);
  LOBYTE(v38) = v37;
  v39 = v24;
  v40 = v23;
  v41 = v25;
  v42 = v32;
  v28 = sub_1DB237B08();
  MEMORY[0x1E1283490](v28);

  v29 = v43;
  v30 = v44;
  *a1 = v43;
  *(a1 + 8) = v30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 4;
  v38 = v29;
  v39 = v30;
  v40 = 0;
  LOBYTE(v41) = 4;
  sub_1DB171870();
  return swift_willThrowTypedImpl();
}

unint64_t sub_1DB237908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB239B10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB237A14()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB237A70(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB237AB0(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB237B08()
{
  v1 = v0[32];
  MEMORY[0x1E1283490](qword_1DB2C8078[*v0], 0xE100000000000000);

  v2 = Version.description.getter();
  MEMORY[0x1E1283490](v2);

  if (v1)
  {
    v3 = 60;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1E1283490](v3, v4);

  return 0;
}

unint64_t sub_1DB237BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  v5 = sub_1DB2BB934();
  v7 = v6;
  v8 = sub_1DB227B48(v5, v6);
  if (!v9)
  {
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v5, v7);
    goto LABEL_6;
  }

  v10 = v8;
  v11 = v9;

  v12 = sub_1DB239B10(v10, v11);
  if (v12 == 5)
  {

    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);
LABEL_6:

    sub_1DB2BB564();
    swift_allocError();
    sub_1DB2BB534();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v38);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v12;
  v13 = sub_1DB2372E8(v5, v7);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == 60 && v15 == 0xE100000000000000)
  {

    v39 = 1;
  }

  else
  {
    v39 = sub_1DB2BB924();

    if (v39)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_1DB2BB924();
    }
  }

  v17 = sub_1DB2BAE94();

  sub_1DB239B5C(v17, v5, v7);
  v19 = v18;

  v20 = sub_1DB2BAE94();

  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1DB2BB374();
    if (v22)
    {
      result = v19;
    }

    if (v19 >> 14 >= result >> 14)
    {
      v23 = sub_1DB2BB394();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = MEMORY[0x1E12833E0](v23, v25, v27, v29);
      v32 = v31;

      *&v36 = 34;
      *(&v36 + 1) = 0xE100000000000000;
      MEMORY[0x1E1283490](v30, v32);

      MEMORY[0x1E1283490](34, 0xE100000000000000);
      v33 = sub_1DB2B73AC(34, 0xE100000000000000);
      v35 = v34;
      sub_1DB2BA5C4();
      swift_allocObject();
      sub_1DB2BA5B4();
      sub_1DB239BF8();
      sub_1DB2BA5A4();
      sub_1DB207494(v33, v35);

      LOBYTE(v33) = v39 & 1;
      __swift_destroy_boxed_opaque_existential_1(v38);
      *a2 = v40;
      *(a2 + 8) = v36;
      *(a2 + 24) = v37;
      *(a2 + 32) = v33;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB238030(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1DB2BAE84();

  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  MEMORY[0x1E1283FC0](v4);
  return sub_1DB2BBA24();
}

uint64_t sub_1DB2380B0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  MEMORY[0x1E1283FC0](v1);
  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  sub_1DB2BBA24();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB238170(uint64_t a1)
{
  sub_1DB237B08();
  sub_1DB2BAEF4();
}

BOOL sub_1DB238200(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = a2[32];
  v12[0] = *a1;
  v13 = *(a1 + 8);
  v14 = v2;
  v15 = v3;
  v8[0] = v4;
  v9 = *(a2 + 8);
  v10 = v5;
  v11 = v6;
  return !sub_1DB2399F8(v8, v12);
}

BOOL sub_1DB238270(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = a2[32];
  v12[0] = *a1;
  v13 = *(a1 + 8);
  v14 = v2;
  v15 = v3;
  v8[0] = v4;
  v9 = *(a2 + 8);
  v10 = v5;
  v11 = v6;
  return !sub_1DB2399F8(v12, v8);
}

BOOL sub_1DB2382E0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = a2[32];
  v12[0] = *a1;
  v13 = *(a1 + 8);
  v14 = v2;
  v15 = v3;
  v8[0] = v4;
  v9 = *(a2 + 8);
  v10 = v5;
  v11 = v6;
  return sub_1DB2399F8(v8, v12);
}

uint64_t sub_1DB238358(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  MEMORY[0x1E1283FC0](v4);
  sub_1DB2BBA24();
  return sub_1DB2BBA54();
}

uint64_t OSRequirements.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28590, &qword_1DB2C7CC0);
    sub_1DB2384F0();
    sub_1DB2BB944();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DB2384F0()
{
  result = qword_1EE13F6A0;
  if (!qword_1EE13F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28590, &qword_1DB2C7CC0);
    sub_1DB238574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6A0);
  }

  return result;
}

unint64_t sub_1DB238574()
{
  result = qword_1EE13FA98[0];
  if (!qword_1EE13FA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE13FA98);
  }

  return result;
}

uint64_t OSRequirements.encode(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v3, 0);
    v4 = (v2 + 64);
    do
    {
      v5 = *v4;
      MEMORY[0x1E1283490](qword_1DB2C8078[*(v4 - 32)], 0xE100000000000000);

      v15 = sub_1DB2BB8F4();
      v16 = v6;
      MEMORY[0x1E1283490](46, 0xE100000000000000);
      v7 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v7);

      MEMORY[0x1E1283490](46, 0xE100000000000000);
      v8 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v8);

      MEMORY[0x1E1283490](v15, v16);

      if (v5)
      {
        v9 = 60;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        v10 = 0xE100000000000000;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      MEMORY[0x1E1283490](v9, v10);

      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DB138470((v11 > 1), v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  sub_1DB2BB164();
}

uint64_t OSRequirements.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x1E1283FC0](v3);
  if (v3)
  {
    v5 = v2 + 64;
    do
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      v5 += 40;
      sub_1DB2BAE84();

      MEMORY[0x1E1283FC0](v6);
      MEMORY[0x1E1283FC0](v7);
      MEMORY[0x1E1283FC0](v8);
      result = sub_1DB2BBA24();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t OSRequirements.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2257C0(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB238914()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2257C0(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB238964(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  sub_1DB2257C0(v4, v2);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2389A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C148(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB238A14(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DB238A14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DB2BB8E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DB2BB104();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB238C98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1DB238B0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DB238B0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = (*a4 + 40 * a3 - 40);
    v5 = result - a3;
LABEL_5:
    v21 = v4;
    v22 = a3;
    v20 = v5;
    while (1)
    {
      v6 = v4 + 40;
      v7 = *(v4 + 6);
      v26 = *(v4 + 7);
      v8 = v4[72];
      v9 = *(v4 + 1);
      v10 = *(v4 + 2);
      v24 = *(v4 + 3);
      v25 = *(v4 + 8);
      v11 = v4[32];
      if (qword_1DB2C8078[v4[40]] == qword_1DB2C8078[*v4])
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v12 = sub_1DB2BB924();
        result = swift_bridgeObjectRelease_n();
        if ((v12 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (((v8 ^ 1) & v11 & 1) == 0 && v7 >= v9 && (v7 != v9 || v26 >= v10 && (v26 != v10 || v25 >= v24)))
      {
LABEL_4:
        a3 = v22 + 1;
        v4 = v21 + 40;
        v5 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      v13 = *v4;
      v14 = *(v4 + 1);
      *(v4 + 8) = *(v4 + 3);
      v15 = *(v4 + 8);
      v16 = v4[72];
      v17 = *(v4 + 4);
      *v4 = v4[40];
      *(v4 + 3) = v15;
      v4[32] = v16;
      v4 -= 40;
      *v6 = v13;
      *(v6 + 1) = v14;
      *(v6 + 4) = v17;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB238C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v118 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v7 = *v118;
    if (!*v118)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_116;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    v121 = v9;
    v119 = v10;
    if (v11 >= v7)
    {
      v32 = v11;
      goto LABEL_32;
    }

    v12 = *v6;
    v125 = v11;
    v13 = *v6 + 40 * v11;
    v14 = *(v13 + 24);
    v15 = *(v13 + 32);
    v16 = *v6 + 40 * v10;
    v17 = *v16;
    v18 = *(v16 + 24);
    v19 = *(v16 + 32);
    v139[0] = *v13;
    v140 = *(v13 + 8);
    v141 = v14;
    v142 = v15;
    v135[0] = v17;
    v136 = *(v16 + 8);
    v137 = v18;
    v138 = v19;
    result = sub_1DB2399F8(v139, v135);
    v134 = result;
    v20 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_28;
    }

    v115 = v5;
    v125 = v7 - 1;
    v21 = v12 + 40 * v10 + 56;
    do
    {
      v22 = v7;
      v23 = v21;
      v24 = *(v21 + 24);
      v25 = *(v21 + 32);
      v26 = *(v21 + 40);
      v21 += 40;
      v130 = *(v23 + 48);
      v132 = v26;
      v7 = *(v23 + 56);
      v27 = *(v23 - 8);
      v28 = *v23;
      v128 = *(v23 + 8);
      v29 = *(v23 + 16);
      if (qword_1DB2C8078[v24] == qword_1DB2C8078[*(v23 - 16)])
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v30 = sub_1DB2BB924();
        result = swift_bridgeObjectRelease_n();
        if ((v30 & 1) == 0)
        {
          v9 = v121;
          v6 = a3;
          goto LABEL_8;
        }
      }

      if (!(v7 & 1 | ((v29 & 1) == 0)))
      {
        v6 = a3;
LABEL_22:
        v9 = v121;
LABEL_23:
        if ((v134 & 1) == 0)
        {
          v32 = v20;
          v5 = v115;
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      v31 = v25 == v27;
      v6 = a3;
      if (v25 < v27)
      {
        goto LABEL_22;
      }

      v9 = v121;
      if (v31)
      {
        if (v132 < v28)
        {
          goto LABEL_23;
        }

        if (v132 == v28)
        {
          if (((v134 ^ (v130 >= v128)) & 1) == 0)
          {
            v125 = v20 - 1;
            goto LABEL_27;
          }

          goto LABEL_9;
        }
      }

LABEL_8:
      if (v134)
      {
        v33 = v20 - 1;
        v5 = v115;
        goto LABEL_29;
      }

LABEL_9:
      ++v20;
      v7 = v22;
    }

    while (v22 != v20);
    v20 = v22;
LABEL_27:
    v5 = v115;
LABEL_28:
    v33 = v125;
    v32 = v20;
    if (v134)
    {
LABEL_29:
      v34 = v119;
      if (v20 >= v119)
      {
        if (v119 <= v33)
        {
          v98 = 40 * v20 - 16;
          v99 = 40 * v119 + 32;
          v100 = v20;
          do
          {
            if (v34 != --v100)
            {
              v109 = *v6;
              if (!*v6)
              {
                goto LABEL_149;
              }

              v101 = (v109 + v99);
              v102 = *(v109 + v99 - 32);
              v103 = (v109 + v98);
              v104 = *(v101 - 1);
              v105 = *v101;
              v106 = *(v101 - 24);
              v107 = v103[1];
              v108 = *(v103 - 1);
              *(v101 - 2) = *(v103 - 3);
              *(v101 - 1) = v108;
              *v101 = v107;
              *(v103 - 24) = v102;
              *(v103 - 1) = v106;
              *v103 = v104;
              *(v103 + 8) = v105;
            }

            ++v34;
            v98 -= 40;
            v99 += 40;
          }

          while (v34 < v100);
        }

        v32 = v20;
        goto LABEL_32;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1DB25C120(v9);
      v9 = result;
LABEL_116:
      v143 = v9;
      v110 = *(v9 + 2);
      if (v110 >= 2)
      {
        while (1)
        {
          v111 = *v6;
          if (!*v6)
          {
            goto LABEL_150;
          }

          v6 = (v110 - 1);
          v112 = *&v9[16 * v110];
          v113 = *&v9[16 * v110 + 24];
          sub_1DB2394BC((v111 + 40 * v112), (v111 + 40 * *&v9[16 * v110 + 16]), (v111 + 40 * v113), v7);
          if (v5)
          {
          }

          if (v113 < v112)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1DB25C120(v9);
          }

          if (v110 - 2 >= *(v9 + 2))
          {
            goto LABEL_140;
          }

          v114 = &v9[16 * v110];
          *v114 = v112;
          *(v114 + 1) = v113;
          v143 = v9;
          result = sub_1DB25C094(v110 - 1);
          v9 = v143;
          v110 = *(v143 + 2);
          v6 = a3;
          if (v110 <= 1)
          {
          }
        }
      }
    }

LABEL_32:
    v35 = v6[1];
    if (v32 >= v35)
    {
      goto LABEL_55;
    }

    v36 = v119;
    if (__OFSUB__(v32, v119))
    {
      goto LABEL_142;
    }

    if (v32 - v119 >= a4)
    {
      goto LABEL_56;
    }

    v37 = v119 + a4;
    if (__OFADD__(v119, a4))
    {
      goto LABEL_143;
    }

    if (v37 >= v35)
    {
      v37 = v6[1];
    }

    if (v37 < v119)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v32 == v37)
    {
LABEL_56:
      if (v32 < v36)
      {
        goto LABEL_141;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v127 = v32;
      if ((result & 1) == 0)
      {
        result = sub_1DB1571EC(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v53 = *(v9 + 2);
      v52 = *(v9 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        result = sub_1DB1571EC((v52 > 1), v53 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v54;
      v55 = &v9[16 * v53];
      *(v55 + 4) = v119;
      *(v55 + 5) = v127;
      v56 = *v118;
      if (!*v118)
      {
        goto LABEL_151;
      }

      if (!v53)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v127;
        if (v127 >= v7)
        {
          goto LABEL_114;
        }

        continue;
      }

      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v9 + 4);
          v59 = *(v9 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_76:
          if (v61)
          {
            goto LABEL_130;
          }

          v74 = &v9[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_133;
          }

          v80 = &v9[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_137;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v84 = &v9[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_90:
        if (v79)
        {
          goto LABEL_132;
        }

        v87 = &v9[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_135;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_97:
        v95 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v6)
        {
          goto LABEL_148;
        }

        v96 = *&v9[16 * v95 + 32];
        v7 = *&v9[16 * v57 + 40];
        sub_1DB2394BC((*v6 + 40 * v96), (*v6 + 40 * *&v9[16 * v57 + 32]), (*v6 + 40 * v7), v56);
        if (v5)
        {
        }

        if (v7 < v96)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB25C120(v9);
        }

        if (v95 >= *(v9 + 2))
        {
          goto LABEL_127;
        }

        v97 = &v9[16 * v95];
        *(v97 + 4) = v96;
        *(v97 + 5) = v7;
        v143 = v9;
        result = sub_1DB25C094(v57);
        v9 = v143;
        v54 = *(v143 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v9[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_128;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_129;
      }

      v69 = &v9[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_131;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_134;
      }

      if (v73 >= v65)
      {
        v91 = &v9[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_138;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

    break;
  }

  v116 = v5;
  v129 = *v6;
  v38 = (*v6 + 40 * v32 - 40);
  v39 = v119 - v32;
  v120 = v37;
  while (2)
  {
    v124 = v38;
    v126 = v32;
    v123 = v39;
LABEL_43:
    v7 = (v38 + 40);
    v40 = *(v38 + 6);
    *&v133 = *(v38 + 8);
    *(&v133 + 1) = *(v38 + 7);
    v41 = v38[72];
    v42 = *(v38 + 1);
    v43 = *(v38 + 2);
    v131 = *(v38 + 3);
    v44 = v38[32];
    if (qword_1DB2C8078[v38[40]] == qword_1DB2C8078[*v38])
    {
      result = swift_bridgeObjectRelease_n();
    }

    else
    {
      v45 = sub_1DB2BB924();
      result = swift_bridgeObjectRelease_n();
      if ((v45 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (((v41 ^ 1) & v44 & 1) == 0 && v40 >= v42 && (v40 != v42 || v133 >= __PAIR128__(v43, v131)))
    {
LABEL_41:
      v32 = v126 + 1;
      v38 = v124 + 40;
      v39 = v123 - 1;
      if (v126 + 1 != v120)
      {
        continue;
      }

      v32 = v120;
      v5 = v116;
      v9 = v121;
      v6 = a3;
LABEL_55:
      v36 = v119;
      goto LABEL_56;
    }

    break;
  }

  if (v129)
  {
    v46 = *v38;
    v47 = *(v38 + 1);
    *(v38 + 8) = *(v38 + 3);
    v48 = *(v38 + 8);
    v49 = v38[72];
    v50 = *(v38 + 4);
    *v38 = v38[40];
    *(v38 + 3) = v48;
    v38[32] = v49;
    v38 -= 40;
    *v7 = v46;
    *(v7 + 16) = v47;
    *(v7 + 32) = v50;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

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
  return result;
}

uint64_t sub_1DB2394BC(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40 || v6 >= v5)
    {
LABEL_48:
      v37 = v7;
      goto LABEL_52;
    }

    v54 = v5;
    while (1)
    {
      v14 = *(v6 + 1);
      v48 = *(v6 + 3);
      v15 = v6[32];
      v16 = *v4;
      v17 = *(v4 + 1);
      v50 = *(v4 + 2);
      v52 = *(v6 + 2);
      v46 = *(v4 + 3);
      v18 = v4;
      v19 = v4[32];
      if (qword_1DB2C8078[*v6] == qword_1DB2C8078[v16])
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v20 = sub_1DB2BB924();
        swift_bridgeObjectRelease_n();
        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (((v15 ^ 1) & v19 & 1) != 0 || v14 < v17 || v14 == v17 && (v52 < v50 || v52 == v50 && v48 < v46))
      {
        v21 = v6;
        v22 = v7 == v6;
        v6 += 40;
        v4 = v18;
        if (v22)
        {
          goto LABEL_19;
        }

LABEL_18:
        v23 = *v21;
        v24 = *(v21 + 1);
        *(v7 + 4) = *(v21 + 4);
        *v7 = v23;
        *(v7 + 1) = v24;
        goto LABEL_19;
      }

LABEL_22:
      v21 = v18;
      v4 = v18 + 40;
      if (v7 != v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 40;
      if (v4 >= v13 || v6 >= v54)
      {
        goto LABEL_48;
      }
    }
  }

  v25 = 40 * v11;
  if (a4 != a2 || &a2[v25] <= a4)
  {
    memmove(a4, a2, 40 * v11);
  }

  v13 = &v4[v25];
  if (v10 < 40 || v6 <= v7)
  {
    v37 = v6;
    goto LABEL_52;
  }

  v43 = v4;
LABEL_30:
  v26 = 0;
  v27 = v13;
  v42 = v6 - 40;
  v55 = v5;
  v44 = v13;
  do
  {
    v28 = &v27[v26];
    v29 = &v27[v26 - 40];
    v51 = *&v27[v26 - 24];
    v53 = *&v27[v26 - 32];
    v30 = v27[v26 - 8];
    v31 = *(v6 - 4);
    v47 = *&v27[v26 - 16];
    v49 = *(v6 - 3);
    v45 = *(v6 - 2);
    v32 = *(v6 - 8);
    if (qword_1DB2C8078[*v29] == qword_1DB2C8078[*(v6 - 40)])
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v33 = sub_1DB2BB924();
      swift_bridgeObjectRelease_n();
      if ((v33 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (((v30 ^ 1) & v32 & 1) != 0 || v53 < v31 || v53 == v31 && (v51 < v49 || v51 == v49 && v47 < v45))
    {
      v5 = &v55[v26 - 40];
      v37 = v6 - 40;
      if (&v55[v26] != v6)
      {
        v38 = *v42;
        v39 = *(v6 - 24);
        *&v55[v26 - 8] = *(v6 - 1);
        *v5 = v38;
        *&v55[v26 - 24] = v39;
      }

      v13 = &v44[v26];
      if (&v44[v26] <= v43 || (v6 -= 40, v42 <= v7))
      {
        v13 = &v44[v26];
        goto LABEL_51;
      }

      goto LABEL_30;
    }

LABEL_41:
    if (&v55[v26] != v28)
    {
      v34 = &v55[v26 - 40];
      v35 = *v29;
      v36 = *(v29 + 1);
      *(v34 + 32) = *(v29 + 4);
      *v34 = v35;
      *(v34 + 16) = v36;
    }

    v26 -= 40;
    v27 = v44;
    v13 = &v44[v26];
  }

  while (&v44[v26] > v43);
  v37 = v6;
LABEL_51:
  v4 = v43;
LABEL_52:
  v40 = 40 * ((v13 - v4) / 40);
  if (v37 != v4 || v37 >= &v4[v40])
  {
    memmove(v37, v4, v40);
  }

  return 1;
}

unint64_t sub_1DB239894()
{
  result = qword_1ECC28598;
  if (!qword_1ECC28598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28598);
  }

  return result;
}

uint64_t sub_1DB2398F8(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DB23994C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DB2399A4()
{
  result = qword_1ECC285A0;
  if (!qword_1ECC285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285A0);
  }

  return result;
}

BOOL sub_1DB2399F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((sub_1DB236AD4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (((v5 ^ 1) & v9 & 1) != 0 || v3 < v7)
  {
    return result;
  }

  if (v3 != v7)
  {
    return 0;
  }

  v12 = v2 == v6 && v4 < v8;
  return v2 < v6 || v12;
}

uint64_t sub_1DB239A90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_1DB236AD4(*a1, *a2) & (v2 == v6);
  if (v3 != v7)
  {
    v10 = 0;
  }

  if (v4 != v8)
  {
    v10 = 0;
  }

  return v10 & (v5 ^ v9 ^ 1u);
}

unint64_t sub_1DB239B10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB239B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB2BAEC4();

    return sub_1DB2BB004();
  }

  return result;
}

unint64_t sub_1DB239BF8()
{
  result = qword_1ECC285A8;
  if (!qword_1ECC285A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285A8);
  }

  return result;
}

unint64_t sub_1DB239C60()
{
  result = qword_1ECC285B0;
  if (!qword_1ECC285B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285B0);
  }

  return result;
}

unint64_t sub_1DB239CB8()
{
  result = qword_1ECC285B8;
  if (!qword_1ECC285B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC285C0, qword_1DB2C7F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285B8);
  }

  return result;
}

unint64_t sub_1DB239D1C()
{
  result = qword_1ECC285C8;
  if (!qword_1ECC285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285C8);
  }

  return result;
}

uint64_t RateLimit.init(capacity:window:delay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t sub_1DB239D98(char *a1, char *a2)
{
  if (qword_1DB2C82F0[*a1] == qword_1DB2C82F0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB2BB924();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DB239E00()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB239E5C(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB239E9C(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB239EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB23A794(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DB239F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB23A794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB239F80(uint64_t a1)
{
  v2 = sub_1DB23A1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB239FBC(uint64_t a1)
{
  v2 = sub_1DB23A1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RateLimit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC285D0, &qword_1DB2C80A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB23A1E0();
  sub_1DB2BBA94();
  v11 = 0;
  sub_1DB2BB8B4();
  if (!v1)
  {
    v10 = 1;
    sub_1DB2BB884();
    v9 = 2;
    sub_1DB2BB884();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB23A1E0()
{
  result = qword_1EE13F2D8;
  if (!qword_1EE13F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2D8);
  }

  return result;
}

uint64_t RateLimit.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1E1283FE0](*v0);
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1E1283FE0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1E1283FE0](*&v4);
}

uint64_t RateLimit.hashValue.getter()
{
  sub_1DB2BBA04();
  RateLimit.hash(into:)();
  return sub_1DB2BBA54();
}

uint64_t RateLimit.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC285D8, &qword_1DB2C80A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB23A1E0();
  sub_1DB2BBA84();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1DB2BB7C4();
    v17 = 1;
    sub_1DB2BB794();
    v12 = v11;
    v16 = 2;
    sub_1DB2BB794();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB23A520()
{
  sub_1DB2BBA04();
  RateLimit.hash(into:)();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB23A578(uint64_t a1)
{
  sub_1DB2BBA04();
  RateLimit.hash(into:)();
  return sub_1DB2BBA54();
}

unint64_t sub_1DB23A5CC()
{
  result = qword_1ECC285E0;
  if (!qword_1ECC285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateLimit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RateLimit(uint64_t result, int a2, int a3)
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

unint64_t sub_1DB23A690()
{
  result = qword_1ECC285E8;
  if (!qword_1ECC285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285E8);
  }

  return result;
}

unint64_t sub_1DB23A6E8()
{
  result = qword_1EE13F2C8;
  if (!qword_1EE13F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2C8);
  }

  return result;
}

unint64_t sub_1DB23A740()
{
  result = qword_1EE13F2D0;
  if (!qword_1EE13F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2D0);
  }

  return result;
}

unint64_t sub_1DB23A794(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id StorageCategory.fileProtectionType.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      return 0;
    }

    v1 = MEMORY[0x1E696A388];
  }

  else if (*v0)
  {
    v1 = MEMORY[0x1E696A380];
  }

  else
  {
    v1 = MEMORY[0x1E696A378];
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

OnDeviceStorageCore::StorageCategory_optional __swiftcall StorageCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DB23A900()
{
  result = qword_1ECC285F0;
  if (!qword_1ECC285F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC285F8, &qword_1DB2C8370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC285F0);
  }

  return result;
}

unint64_t sub_1DB23AA28()
{
  result = qword_1EE13F1A0;
  if (!qword_1EE13F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F1A0);
  }

  return result;
}

uint64_t sub_1DB23AA7C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB23AAD8(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB23AB18(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB23AB80()
{
  result = qword_1EE140218;
  if (!qword_1EE140218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140218);
  }

  return result;
}

void sub_1DB23ABD8()
{
  qword_1ECC41F20 = 0;
  *algn_1ECC41F28 = 0;
  qword_1ECC41F30 = 0;
}

uint64_t Version.description.getter()
{
  v3 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  return v3;
}

uint64_t Version.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v5 = sub_1DB2BB934();
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      if (qword_1ECC26BF8 != -1)
      {
        swift_once();
      }

      v14 = qword_1ECC41F20;
      v15 = *algn_1ECC41F28;
      v16 = qword_1ECC41F30;
      goto LABEL_19;
    }

    v9 = v5;
    v24 = v5;
    v25 = v6;
    v10 = v6;
    v22 = 46;
    v23 = 0xE100000000000000;
    sub_1DB143508();
    v11 = sub_1DB2BB3A4();
    v12 = *(v11 + 16);
    if (v12 > 3)
    {

      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000018, 0x80000001DB2D6240);
      MEMORY[0x1E1283490](v9, v10);

      MEMORY[0x1E1283490](0xD000000000000017, 0x80000001DB2D6260);
      v22 = v12;
      v13 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v13);

      sub_1DB2BB564();
      swift_allocError();
      sub_1DB2BB534();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v26);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v17 = v11;

    MEMORY[0x1EEE9AC00](v18);
    v21[2] = v26;
    v19 = sub_1DB20359C(sub_1DB23B7F4, v21, v17);

    v20 = v19[2];
    if (v20)
    {
      v14 = v19[4];
      if (v20 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v19[5];
        if (v20 >= 3)
        {
          v16 = v19[6];

LABEL_19:
          __swift_destroy_boxed_opaque_existential_1(v26);
          *a2 = v14;
          a2[1] = v15;
          a2[2] = v16;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v16 = 0;
    goto LABEL_19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *sub_1DB23AFDC@<X0>(uint64_t *result@<X0>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = HIBYTE(v6) & 0xF;
  v8 = *result & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_65;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v25 = a4;

    v11 = sub_1DB22D764(v5, v6, 10);
    v27 = v26;

    if (v27)
    {
      goto LABEL_65;
    }

    a4 = v25;
LABEL_68:
    *a4 = v11;
    return result;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = a4;
      result = sub_1DB2BB5B4();
      a4 = v28;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v17 = result + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v11, 0xAuLL))
              {
                goto LABEL_63;
              }

              v14 = __CFADD__(10 * v11, v18);
              v11 = 10 * v11 + v18;
              if (v14)
              {
                goto LABEL_63;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v11, 0xAuLL))
            {
              goto LABEL_63;
            }

            v14 = __CFADD__(10 * v11, v21);
            v11 = 10 * v11 + v21;
            if (v14)
            {
              goto LABEL_63;
            }

            result = (result + 1);
            if (!--v8)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v11 = 0;
      LOBYTE(v7) = 1;
LABEL_64:
      v31 = v7;
      if (v7)
      {
LABEL_65:
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000042, 0x80000001DB2D6280);
        MEMORY[0x1E1283490](v5, v6);
        sub_1DB2BB564();
        v24 = swift_allocError();
        sub_1DB2BB534();

        result = swift_willThrow();
        *a3 = v24;
        return result;
      }

      goto LABEL_68;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v11, 0xAuLL))
            {
              goto LABEL_63;
            }

            v14 = 10 * v11 >= v13;
            v11 = 10 * v11 - v13;
            if (!v14)
            {
              goto LABEL_63;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v7) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29 = *result;
  v30 = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v7)
      {
        v11 = 0;
        v22 = &v29;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          if (!is_mul_ok(v11, 0xAuLL))
          {
            break;
          }

          v14 = __CFADD__(10 * v11, v23);
          v11 = 10 * v11 + v23;
          if (v14)
          {
            break;
          }

          v22 = (v22 + 1);
          if (!--v7)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v15 = &v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          if (!is_mul_ok(v11, 0xAuLL))
          {
            break;
          }

          v14 = 10 * v11 >= v16;
          v11 = 10 * v11 - v16;
          if (!v14)
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v19 = &v29 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        if (!is_mul_ok(v11, 0xAuLL))
        {
          break;
        }

        v14 = __CFADD__(10 * v11, v20);
        v11 = 10 * v11 + v20;
        if (v14)
        {
          break;
        }

        ++v19;
        if (!--v7)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t Version.encode(to:)(uint64_t a1)
{
  Version.description.getter();
  sub_1DB2BAEF4();
}

uint64_t Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E1283FC0](*v0);
  MEMORY[0x1E1283FC0](v1);
  return MEMORY[0x1E1283FC0](v2);
}

uint64_t Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB23B518(uint64_t a1)
{
  Version.description.getter();
  sub_1DB2BAEF4();
}

BOOL sub_1DB23B5C4(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 != *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 != v3 || a2[2] >= a1[2];
  return v4 >= v3 && v6;
}

BOOL sub_1DB23B608(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v3 != v4 || a1[2] >= a2[2];
  return v3 >= v4 && v6;
}

uint64_t sub_1DB23B64C(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 == v3 && a2[2] < a1[2];
  v7 = v4 < v3 || v6;
  if (*a2 == *a1)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB23B694()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB23B700()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E1283FC0](*v0);
  MEMORY[0x1E1283FC0](v1);
  return MEMORY[0x1E1283FC0](v2);
}

uint64_t sub_1DB23B748(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v2);
  MEMORY[0x1E1283FC0](v3);
  MEMORY[0x1E1283FC0](v4);
  return sub_1DB2BBA54();
}

uint64_t _s19OnDeviceStorageCore7VersionV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v3 == v4 && a1[2] < a2[2];
  v7 = v3 < v4 || v6;
  if (*a1 == *a2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DB23B814()
{
  result = qword_1ECC28600;
  if (!qword_1ECC28600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28600);
  }

  return result;
}

uint64_t Data.init(base64URLEncoded:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB143508();
  sub_1DB2BB3D4();

  sub_1DB2BB3D4();

  v3 = sub_1DB2BAE94();
  v4 = v3 & 3;
  if (v3 <= 0)
  {
    v4 = -(-v3 & 3);
  }

  if (v4 >= 1)
  {
    v5 = sub_1DB2BAFB4();
    v7 = v6;

    MEMORY[0x1E1283490](v5, v7);
  }

  v8 = sub_1DB2BA844();
  v10 = v9;
  sub_1DB2351A4(v8, v9);

  if (v10 >> 60 != 15)
  {
    sub_1DB2351B8(v8, v10);
  }

  return v8;
}

Swift::String __swiftcall String.base64URLUnescaped()()
{
  sub_1DB143508();
  sub_1DB2BB3D4();
  v0 = sub_1DB2BB3D4();
  v2 = v1;

  v3 = sub_1DB2BAE94();
  v4 = v3 & 3;
  if (v3 <= 0)
  {
    v4 = -(-v3 & 3);
  }

  if (v4 >= 1)
  {
    v5 = sub_1DB2BAFB4();
    v7 = v6;

    MEMORY[0x1E1283490](v5, v7);
  }

  v8 = v0;
  v9 = v2;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall String.base64URLEscaped()()
{
  sub_1DB143508();
  sub_1DB2BB3D4();
  sub_1DB2BB3D4();

  v0 = sub_1DB2BB3D4();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void NSFileManager.protectedGroupContainerUrl.getter()
{
  v1 = sub_1DB2BAD64();
  v2 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v2)
  {
    sub_1DB2BA7F4();
  }

  else
  {
    sub_1DB14AD88();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSFileManager.clearContainerData()()
{
  v1 = v0;
  v77 = *MEMORY[0x1E69E9840];
  v2 = sub_1DB2BA824();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v57 - v7;
  v9 = sub_1DB2BAD64();
  v10 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v10)
  {
    sub_1DB2BA7F4();

    v11 = sub_1DB2BA7E4();
    *&v72 = 0;
    v12 = [v1 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:&v72];

    v13 = v72;
    if (v12)
    {
      v65 = v1;
      v14 = sub_1DB2BB0C4();
      v15 = v13;

      v16 = *(v14 + 16);
      if (v16)
      {
        v58 = v8;
        v18 = *(v3 + 16);
        v17 = v3 + 16;
        v64 = v18;
        v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
        v57[1] = v14;
        v20 = v14 + v19;
        v63 = *(v17 + 56);
        v60 = "amsondevicestoraged";
        v66 = (v17 - 8);
        v62 = xmmword_1DB2BCC40;
        v59 = v2;
        v61 = v17;
        v18(v6, v14 + v19, v2);
        while (1)
        {
          v23 = sub_1DB2BA7E4();
          *&v72 = 0;
          v24 = [v65 removeItemAtURL:v23 error:&v72];

          if (v24)
          {
            v21 = *v66;
            v22 = v72;
            v21(v6, v2);
          }

          else
          {
            v25 = v72;
            v26 = sub_1DB2BA7C4();

            v67 = v26;
            swift_willThrow();
            if (qword_1ECC26BD0 != -1)
            {
              swift_once();
            }

            v27 = qword_1ECC41F10;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
            v28 = swift_allocObject();
            *(v28 + 16) = v62;
            v70 = sub_1DB156674(0, 37, 0, MEMORY[0x1E69E7CC0]);
            v29._object = (v60 | 0x8000000000000000);
            v29._countAndFlagsBits = 0xD00000000000001FLL;
            LogMessage.StringInterpolation.appendLiteral(_:)(v29);
            v30 = sub_1DB2BA804();
            v76 = MEMORY[0x1E69E6158];
            v75[0] = v30;
            v75[1] = v31;
            sub_1DB1567F4(v75, v71);
            v72 = 0u;
            v73 = 0u;
            sub_1DB156864(v71, &v72);
            v74 = 0;
            v32 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1DB156674(0, *(v32 + 2) + 1, 1, v32);
              v70 = v32;
            }

            v34 = *(v32 + 2);
            v33 = *(v32 + 3);
            if (v34 >= v33 >> 1)
            {
              v32 = sub_1DB156674((v33 > 1), v34 + 1, 1, v32);
            }

            *(v32 + 2) = v34 + 1;
            v35 = &v32[40 * v34];
            v36 = v72;
            v37 = v73;
            v35[64] = v74;
            *(v35 + 2) = v36;
            *(v35 + 3) = v37;
            v70 = v32;
            sub_1DB1568D4(v75);
            v38._countAndFlagsBits = 2629678;
            v38._object = 0xE300000000000000;
            LogMessage.StringInterpolation.appendLiteral(_:)(v38);
            swift_getErrorValue();
            v39 = v68;
            v40 = v69;
            v76 = v69;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
            (*(*(v40 - 8) + 16))(boxed_opaque_existential_0, v39, v40);
            sub_1DB1567F4(v75, v71);
            v72 = 0u;
            v73 = 0u;
            sub_1DB156864(v71, &v72);
            v74 = 0;
            v42 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_1DB156674(0, *(v42 + 2) + 1, 1, v42);
              v70 = v42;
            }

            v44 = *(v42 + 2);
            v43 = *(v42 + 3);
            if (v44 >= v43 >> 1)
            {
              v42 = sub_1DB156674((v43 > 1), v44 + 1, 1, v42);
            }

            *(v42 + 2) = v44 + 1;
            v45 = &v42[40 * v44];
            v46 = v72;
            v47 = v73;
            v45[64] = v74;
            *(v45 + 2) = v46;
            *(v45 + 3) = v47;
            v70 = v42;
            sub_1DB1568D4(v75);
            v48._countAndFlagsBits = 41;
            v48._object = 0xE100000000000000;
            LogMessage.StringInterpolation.appendLiteral(_:)(v48);
            *(v28 + 32) = v70;
            v49 = sub_1DB2BB264();
            if (os_log_type_enabled(v27, v49))
            {
              v50 = os_variant_has_internal_content() ^ 1;
              v51 = swift_allocObject();
              *(v51 + 16) = v50;
              *&v72 = v28;
              *(&v72 + 1) = sub_1DB15693C;
              *&v73 = v51;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
              sub_1DB156944();
              v52 = sub_1DB2BAD24();
              v54 = v53;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
              v55 = swift_allocObject();
              *(v55 + 16) = v62;
              *(v55 + 56) = MEMORY[0x1E69E6158];
              *(v55 + 64) = sub_1DB156A2C();
              *(v55 + 32) = v52;
              *(v55 + 40) = v54;
              sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v27, v49, v55);

              v2 = v59;
            }

            MEMORY[0x1E1284A10](v67);
            v21 = *v66;
            (*v66)(v6, v2);
          }

          v20 += v63;
          if (!--v16)
          {
            break;
          }

          v64(v6, v20, v2);
        }

        v8 = v58;
      }

      else
      {

        v21 = *(v3 + 8);
      }

      v21(v8, v2);
    }

    else
    {
      v56 = v72;
      sub_1DB2BA7C4();

      swift_willThrow();
      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    sub_1DB14AD88();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t NSFileProtectionType.sqliteFlags.getter(uint64_t a1)
{
  v1 = sub_1DB2BAD94();
  v3 = v2;
  if (v1 == sub_1DB2BAD94() && v3 == v4)
  {

    return 0x100000;
  }

  v6 = sub_1DB2BB924();

  if (v6)
  {
    return 0x100000;
  }

  v7 = sub_1DB2BAD94();
  v9 = v8;
  if (v7 == sub_1DB2BAD94() && v9 == v10)
  {

    return 0x200000;
  }

  v12 = sub_1DB2BB924();

  if (v12)
  {
    return 0x200000;
  }

  v14 = sub_1DB2BAD94();
  v16 = v15;
  if (v14 == sub_1DB2BAD94() && v16 == v17)
  {

    return 3145728;
  }

  v18 = sub_1DB2BB924();

  if (v18)
  {
    return 3145728;
  }

  v19 = sub_1DB2BAD94();
  v21 = v20;
  if (v19 == sub_1DB2BAD94() && v21 == v22)
  {

LABEL_24:
    v24 = 4;
LABEL_25:
    v25 = sub_1DB2BAD94();
    v27 = v26;
    sub_1DB135B68();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = v24;
    return swift_willThrow();
  }

  v23 = sub_1DB2BB924();

  if (v23)
  {
    goto LABEL_24;
  }

  v29 = sub_1DB2BAD94();
  v31 = v30;
  if (v29 == sub_1DB2BAD94() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_1DB2BB924();

    if ((v33 & 1) == 0)
    {
      v24 = 6;
      goto LABEL_25;
    }
  }

  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v24 = 5;
    goto LABEL_25;
  }

  return 0x400000;
}

Swift::String __swiftcall SQLFormatter.format(_:)(Swift::String a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DB143DBC(&unk_1F56DF978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28608, &unk_1DB2C8610);
  swift_arrayDestroy();
  v2 = objc_allocWithZone(MEMORY[0x1E696AD60]);
  v3 = sub_1DB2BAD64();
  v27 = [v2 initWithString_];

  v4 = 0;
  v26 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v5) != 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v4;
    if (v9)
    {
      while (1)
      {
        v9 &= v9 - 1;
        v14 = objc_allocWithZone(MEMORY[0x1E696AE70]);

        v15 = sub_1DB2BAD64();

        v28[0] = 0;
        v16 = [v14 initWithPattern:v15 options:0 error:{v28, v26}];

        if (v16)
        {
          v17 = v28[0];
          v18 = [v27 length];
          v19 = sub_1DB2BAD64();

          [v16 replaceMatchesInString:v27 options:0 range:0 withTemplate:{v18, v19}];

          v4 = v13;
          if (!v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = v28[0];

          v12 = sub_1DB2BA7C4();

          swift_willThrow();
          MEMORY[0x1E1284A10](v12);
          v26 = 0;
          v4 = v13;
          if (!v9)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v13 = v4;
      }
    }
  }

  v20 = sub_1DB2BAD94();
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

id sub_1DB23CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DB2BAD64();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DB2BA7C4();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_1DB23CC0C(uint64_t a1, unint64_t a2, int a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v7 = 0;
    v8 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1DB2BB4E4();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v8;
          v11 = v17 + v7;
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1DB2BB5B4();
          }

          v11 = (v10 + v7);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v13 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_15:
      v14 = v12 == a3;
      result = v12 == a3;
      if (!v14)
      {
        v7 += v13;
        if (v7 < v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

BOOL String.fastMatches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v7 = sub_1DB2BA9E4();
  v8 = sub_1DB2BB364();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  v14[0] = a2;
  v14[1] = a3;
  swift_checkMetadataState();
  sub_1DB2261E0();
  sub_1DB2BAD04();
  v12 = (*(*(v7 - 8) + 48))(v11, 1, v7) != 1;
  (*(v9 + 8))(v11, v8);
  return v12;
}

unint64_t Substring.fastContains(_:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a3 >> 14;
  v6 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    return 0;
  }

  v10 = a2;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v23 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a5 & 0xFFFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v15 = v10 & 0xC;
    v16 = (v10 & 1) == 0 || v15 == v12;
    v17 = v16;
    if (v16)
    {
      break;
    }

    if (v10 >> 14 < v6)
    {
      goto LABEL_55;
    }

    result = v10;
    if (v10 >> 14 >= v5)
    {
      goto LABEL_55;
    }

LABEL_25:
    if ((a5 & 0x1000000000000000) != 0)
    {
      result = sub_1DB2BB4E4();
      v18 = result;
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v26 = a4;
        v27 = v24;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1DB2BB5B4();
      }

      result = sub_1DB2BB5C4();
      v18 = result;
      if (!v17)
      {
LABEL_30:
        if (v13 <= v10 >> 16)
        {
          goto LABEL_57;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_49;
      }
    }

    if (v15 == v12)
    {
      result = sub_1DB23D3A8(v10, a4, a5);
      v10 = result;
      if (v13 <= result >> 16)
      {
        goto LABEL_56;
      }
    }

    else if (v13 <= v10 >> 16)
    {
      goto LABEL_56;
    }

    if (v10)
    {
      goto LABEL_37;
    }

    result = sub_1DB23D424(v10, a4, a5);
    v10 = v10 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_38:
      v19 = v10 >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v26 = a4;
        v27 = v24;
        v20 = *(&v26 + v19);
      }

      else
      {
        result = v23;
        if ((a4 & 0x1000000000000000) == 0)
        {
          result = sub_1DB2BB5B4();
        }

        v20 = *(result + v19);
      }

      v21 = v20;
      v22 = __clz(v20 ^ 0xFF) - 24;
      if (v21 >= 0)
      {
        LOBYTE(v22) = 1;
      }

      v10 = ((v19 + v22) << 16) | 5;
      goto LABEL_50;
    }

LABEL_49:
    result = sub_1DB2BAE44();
    v10 = result;
LABEL_50:
    v16 = v18 == a1;
    v7 = v18 == a1;
    if (v16 || v10 >> 14 == v5)
    {

      return v7;
    }
  }

  result = v10;
  if (v15 == v12)
  {
    result = sub_1DB23D3A8(v10, a4, a5);
  }

  if (result >> 14 >= v6 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      sub_1DB23D424(result, a4, a5);
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

BOOL Substring.fastMatches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a5;
  v17[1] = a1;
  swift_getAssociatedTypeWitness();
  v10 = sub_1DB2BA9E4();
  v11 = sub_1DB2BB364();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v17[0];
  swift_checkMetadataState();
  sub_1DB23D538();
  sub_1DB2BAD04();
  v15 = (*(*(v10 - 8) + 48))(v14, 1, v10) != 1;
  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t sub_1DB23D3A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB2BAF84();
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
    v5 = MEMORY[0x1E1283500](15, a1 >> 16);
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

unint64_t sub_1DB23D424(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1DB2BB5B4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}