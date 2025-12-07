uint64_t sub_10001B924()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6567;
  v3 = 0x656D695465636166;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4._countAndFlagsBits = v2;
  }

  else
  {
    v4._countAndFlagsBits = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v4._object = v5;
  sub_100021EB4(v4);

  return 46;
}

unint64_t _s31AutocompleteAppIntentsExtension06ClientB4EnumO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D388;
  v6._object = a2;
  v4 = sub_100021FC4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t _s31AutocompleteAppIntentsExtension06ClientB4EnumO26caseDisplayRepresentationsSDyAC0bC00H14RepresentationVGvgZ_0()
{
  sub_100001358(&qword_100030A08, &qword_100026540);
  v0 = *(sub_100001358(&qword_100030A10, &qword_100026548) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100024800;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_100021A64();
  v4[v1] = 1;
  sub_100021A64();
  v4[2 * v1] = 2;
  sub_100021A64();
  v4[3 * v1] = 3;
  sub_100021A64();
  v5 = sub_10001DE68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_10001BBE8()
{
  result = qword_1000309A0;
  if (!qword_1000309A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309A0);
  }

  return result;
}

unint64_t sub_10001BC40()
{
  result = qword_1000309A8;
  if (!qword_1000309A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309A8);
  }

  return result;
}

unint64_t sub_10001BC98()
{
  result = qword_1000309B0;
  if (!qword_1000309B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309B0);
  }

  return result;
}

unint64_t sub_10001BCF0()
{
  result = qword_1000309B8;
  if (!qword_1000309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309B8);
  }

  return result;
}

unint64_t sub_10001BD48()
{
  result = qword_1000309C0;
  if (!qword_1000309C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309C0);
  }

  return result;
}

unint64_t sub_10001BDA0()
{
  result = qword_1000309C8;
  if (!qword_1000309C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309C8);
  }

  return result;
}

unint64_t sub_10001BDF8()
{
  result = qword_1000309D0;
  if (!qword_1000309D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309D0);
  }

  return result;
}

unint64_t sub_10001BE50()
{
  result = qword_1000309D8;
  if (!qword_1000309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309D8);
  }

  return result;
}

unint64_t sub_10001BEF8()
{
  result = qword_1000309E0;
  if (!qword_1000309E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309E0);
  }

  return result;
}

unint64_t sub_10001BF50()
{
  result = qword_1000309E8;
  if (!qword_1000309E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309E8);
  }

  return result;
}

unint64_t sub_10001BFA8()
{
  result = qword_1000309F0;
  if (!qword_1000309F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309F0);
  }

  return result;
}

unint64_t sub_10001C000()
{
  result = qword_1000309F8;
  if (!qword_1000309F8)
  {
    sub_10000512C(&qword_100030A00, &qword_1000264B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309F8);
  }

  return result;
}

uint64_t sub_10001C080(uint64_t a1)
{
  v2 = sub_10001C1D0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C128();
  sub_100021C24();
  return 0;
}

unint64_t sub_10001C128()
{
  result = qword_100030A18;
  if (!qword_100030A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A18);
  }

  return result;
}

unint64_t sub_10001C1D0()
{
  result = qword_100030A20;
  if (!qword_100030A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A20);
  }

  return result;
}

unint64_t sub_10001C238@<X0>(Swift::String *a1@<X0>, AutocompleteAppIntentsExtension::ComposeRecipientHandleAvailabilityAppEnum_optional *a2@<X8>)
{
  result = _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnum.typeDisplayRepresentation.getter()
{
  v0 = sub_100001358(&qword_100030180, &qword_100024810);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_100021B44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100021BB4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100021E64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100021B54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_100021E54();
  sub_100021BA4();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100021B64();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_100021AF4();
}

uint64_t sub_10001C544(uint64_t a1)
{
  v2 = sub_100001BDC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001C590(uint64_t a1)
{
  v2 = sub_10001E630();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ComposeRecipientHandleAvailabilityAppEnum.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x616C696176616E75;
    }

    else
    {
      v2._countAndFlagsBits = 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      v3 = 0xEB00000000656C62;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE900000000000065;
    v2._countAndFlagsBits = 0x6C62616C69617661;
  }

  v2._object = v3;
  sub_100021EB4(v2);

  return 46;
}

uint64_t sub_10001C694()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3._countAndFlagsBits = v2;
  }

  else
  {
    v3._countAndFlagsBits = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  v3._object = v4;
  sub_100021EB4(v3);

  return 46;
}

unint64_t sub_10001C740(uint64_t a1)
{
  v1 = a1;
  sub_100021FF4();
  sub_100021EA4();

  v2 = sub_100022024();

  return sub_10001CC38(v1, v2);
}

unint64_t sub_10001C81C(uint64_t a1)
{
  v1 = a1;
  sub_100021FF4();
  sub_100021EA4();

  v2 = sub_100022024();

  return sub_10001CDF0(v1, v2);
}

unint64_t sub_10001C918(uint64_t a1)
{
  v1 = a1;
  sub_100021FF4();
  sub_100021EA4();

  v2 = sub_100022024();

  return sub_10001CF94(v1, v2);
}

unint64_t sub_10001CA14(char a1)
{
  sub_100021FF4();
  sub_100022004(a1 & 1);
  v2 = sub_100022024();

  return sub_10001D138(a1 & 1, v2);
}

unint64_t sub_10001CA80(uint64_t a1)
{
  v1 = a1;
  sub_100021FF4();
  sub_100021EA4();

  v2 = sub_100022024();

  return sub_10001D1A8(v1, v2);
}

unint64_t sub_10001CB68(uint64_t a1)
{
  v1 = a1;
  sub_100021FF4();
  sub_100021EA4();

  v2 = sub_100022024();
  return sub_10001D344(v1, v2);
}

unint64_t sub_10001CC38(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001000223D0;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x736552796C6C7566;
          v8 = 0xED00006465766C6FLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEA00000000006465;
            if (v7 != 0x766C6F7365726E75)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x766C6F7365726E75;
        v8 = 0xEA00000000006465;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000011;
      }

      else
      {
        v10 = 0x736552796C6C7566;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001000223D0;
      }

      else
      {
        v11 = 0xED00006465766C6FLL;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100021FE4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_10001CDF0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4) == 2 ? 0xED00006F65646956 : 0xED00006F69647541;
      v7 = *(*(v2 + 48) + v4) ? 5456722 : 0x6567617373654D69;
      v8 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE800000000000000;
      v9 = *(*(v2 + 48) + v4) <= 1u ? v7 : 0x656D695465636166;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : v6;
      v11 = v5 == 2 ? 0xED00006F65646956 : 0xED00006F69647541;
      v12 = v5 ? 5456722 : 0x6567617373654D69;
      v13 = v5 ? 0xE300000000000000 : 0xE800000000000000;
      v14 = v5 <= 1 ? v12 : 0x656D695465636166;
      v15 = v5 <= 1 ? v13 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
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

unint64_t sub_10001CF94(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4) == 2 ? 0xED00006F69647541 : 0xED00006F65646956;
      v7 = *(*(v2 + 48) + v4) ? 5456722 : 0x6567617373654D69;
      v8 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE800000000000000;
      v9 = *(*(v2 + 48) + v4) <= 1u ? v7 : 0x656D695465636166;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : v6;
      v11 = v5 == 2 ? 0xED00006F69647541 : 0xED00006F65646956;
      v12 = v5 ? 5456722 : 0x6567617373654D69;
      v13 = v5 ? 0xE300000000000000 : 0xE800000000000000;
      v14 = v5 <= 1 ? v12 : 0x656D695465636166;
      v15 = v5 <= 1 ? v13 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
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

unint64_t sub_10001D138(int a1, uint64_t a2)
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

unint64_t sub_10001D1A8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x656D695465636166 : 0x7261646E656C6163;
      v7 = *(*(v20 + 48) + v4) ? 0x736567617373656DLL : 0x636972656E6567;
      v8 = *(*(v20 + 48) + v4) ? 0xE800000000000000 : 0xE700000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE800000000000000;
      v11 = v5 == 2 ? 0x656D695465636166 : 0x7261646E656C6163;
      v12 = v5 ? 0x736567617373656DLL : 0x636972656E6567;
      v13 = v5 ? 0xE800000000000000 : 0xE700000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE800000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001D344(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x616C696176616E75;
          v8 = 0xEB00000000656C62;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v7 != 0x6C62616C69617661)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6C62616C69617661;
        v8 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x616C696176616E75;
      }

      else
      {
        v10 = 0x6E776F6E6B6E75;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000656C62;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100021FE4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_10001D4EC(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030298, qword_1000241B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AD0, &qword_100026950);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_100030298, qword_1000241B8);
      v11 = *v5;
      result = sub_10001C740(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D6D4(uint64_t a1)
{
  v2 = sub_100001358(&qword_1000303F0, &unk_100024B10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AC8, &unk_100026940);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_1000303F0, &unk_100024B10);
      v11 = *v5;
      result = sub_10001C81C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D8BC(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030598, &unk_100025060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AC0, &unk_100026930);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_100030598, &unk_100025060);
      v11 = *v5;
      result = sub_10001C918(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001DAA4(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030798, &qword_100025C48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AB8, &unk_100026920);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_100030798, &qword_100025C48);
      v11 = *v5;
      result = sub_10001CB68(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001DC8C(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030810, &qword_100025F28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AB0, &unk_100026910);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100016860(v9, v5, &qword_100030810, &qword_100025F28);
      v11 = *v5;
      result = sub_10001CA14(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001DE68(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030A10, &qword_100026548);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AA8, &unk_100026900);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_100030A10, &qword_100026548);
      v11 = *v5;
      result = sub_10001CA80(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001E050(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030A98, &qword_1000268E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001358(&qword_100030AA0, &unk_1000268F0);
    v7 = sub_100021FB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v9, v5, &qword_100030A98, &qword_1000268E8);
      v11 = *v5;
      result = sub_10001CB68(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100021A84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D458;
  v6._object = a2;
  v4 = sub_100021FC4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO26caseDisplayRepresentationsSDyAC0bC00K14RepresentationVGvgZ_0()
{
  sub_100001358(&qword_100030A90, &qword_1000268E0);
  v0 = *(sub_100001358(&qword_100030A98, &qword_1000268E8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100023EC0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_100021A64();
  v4[v1] = 1;
  sub_100021A64();
  v4[2 * v1] = 2;
  sub_100021A64();
  v5 = sub_10001E050(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_10001E420()
{
  result = qword_100030A28;
  if (!qword_100030A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A28);
  }

  return result;
}

unint64_t sub_10001E478()
{
  result = qword_100030A30;
  if (!qword_100030A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A30);
  }

  return result;
}

unint64_t sub_10001E4D0()
{
  result = qword_100030A38;
  if (!qword_100030A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A38);
  }

  return result;
}

unint64_t sub_10001E528()
{
  result = qword_100030A40;
  if (!qword_100030A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A40);
  }

  return result;
}

unint64_t sub_10001E580()
{
  result = qword_100030A48;
  if (!qword_100030A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A48);
  }

  return result;
}

unint64_t sub_10001E5D8()
{
  result = qword_100030A50;
  if (!qword_100030A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A50);
  }

  return result;
}

unint64_t sub_10001E630()
{
  result = qword_100030A58;
  if (!qword_100030A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A58);
  }

  return result;
}

unint64_t sub_10001E6D8()
{
  result = qword_100030A60;
  if (!qword_100030A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A60);
  }

  return result;
}

unint64_t sub_10001E730()
{
  result = qword_100030A68;
  if (!qword_100030A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A68);
  }

  return result;
}

unint64_t sub_10001E788()
{
  result = qword_100030A70;
  if (!qword_100030A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A70);
  }

  return result;
}

unint64_t sub_10001E7E0()
{
  result = qword_100030A78;
  if (!qword_100030A78)
  {
    sub_10000512C(&qword_100030A80, &qword_1000267D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A78);
  }

  return result;
}

unint64_t sub_10001E848()
{
  result = qword_100030A88;
  if (!qword_100030A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A88);
  }

  return result;
}

uint64_t ComposeRecipientHandleAppEntity.value.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100021934();
}

uint64_t (*ComposeRecipientHandleAppEntity.value.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_100006344;
}

uint64_t (*ComposeRecipientHandleAppEntity.label.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_100006344;
}

uint64_t (*ComposeRecipientHandleAppEntity.availability.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_1000054CC;
}

uint64_t sub_10001EB2C(uint64_t a1)
{
  v2 = sub_100021658();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t static ComposeRecipientHandleAppEntity.typeDisplayRepresentation.getter()
{
  v0 = sub_100001358(&qword_100030180, &qword_100024810);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_100021B44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100021BB4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100021E64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100021B54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_100021E54();
  sub_100021BA4();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100021B64();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_100021AF4();
}

uint64_t ComposeRecipientHandleAppEntity.displayRepresentation.getter()
{
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.description.getter();

  v2._countAndFlagsBits = 10272;
  v2._object = 0xE200000000000000;
  sub_100021EB4(v2);
  sub_100021924();
  sub_100021EB4(v1);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_100021EB4(v3);
  return sub_100021A64();
}

uint64_t sub_10001EF1C@<X0>(uint64_t *a1@<X8>)
{
  result = _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10001EF48(uint64_t a1)
{
  v2 = sub_100021658();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001EF98(uint64_t a1)
{
  v2 = sub_100003758();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001EFEC(uint64_t a1)
{
  v2 = sub_100021500();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001F03C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 40;
    v4 = a2 + 40;
    do
    {

      sub_100021924();
      sub_100021924();
      if (v21 > 1u)
      {
        v9 = 0xED00006F65646956;
        if (v21 == 2)
        {
          v8 = 0xED00006F65646956;
        }

        else
        {
          v8 = 0xED00006F69647541;
        }

        v7 = 0x656D695465636166;
        v6 = 0x6567617373654D69;
      }

      else
      {
        v6 = 0x6567617373654D69;
        if (v21)
        {
          v7 = 5456722;
        }

        else
        {
          v7 = 0x6567617373654D69;
        }

        if (v21)
        {
          v8 = 0xE300000000000000;
        }

        else
        {
          v8 = 0xE800000000000000;
        }

        v9 = 0xED00006F65646956;
      }

      if (v20 != 2)
      {
        v9 = 0xED00006F69647541;
      }

      if (v20)
      {
        v6 = 5456722;
        v10 = 0xE300000000000000;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (v20 <= 1u)
      {
        v11 = v6;
      }

      else
      {
        v11 = 0x656D695465636166;
      }

      if (v20 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      if (v7 == v11 && v8 == v12)
      {
      }

      else
      {
        v13 = sub_100021FE4();

        if ((v13 & 1) == 0)
        {

          return 0;
        }
      }

      sub_100021924();
      sub_100021924();
      if (v19)
      {
        if (v19 == 1)
        {
          v14 = 0x616C696176616E75;
        }

        else
        {
          v14 = 0x6E776F6E6B6E75;
        }

        if (v19 == 1)
        {
          v15 = 0xEB00000000656C62;
        }

        else
        {
          v15 = 0xE700000000000000;
        }

        if (v18)
        {
LABEL_42:
          if (v18 == 1)
          {
            v16 = 0xEB00000000656C62;
            if (v14 != 0x616C696176616E75)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE700000000000000;
            if (v14 != 0x6E776F6E6B6E75)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v14 = 0x6C62616C69617661;
        v15 = 0xE900000000000065;
        if (v18)
        {
          goto LABEL_42;
        }
      }

      v16 = 0xE900000000000065;
      if (v14 != 0x6C62616C69617661)
      {
        goto LABEL_5;
      }

LABEL_49:
      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_100021FE4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t ComposeRecipientHandleAppEntity.hash(into:)(uint64_t a1)
{
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)(a1);
}

Swift::Int ComposeRecipientHandleAppEntity.hashValue.getter()
{
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)(v1);

  return sub_100022024();
}

Swift::Int sub_10001F4E4()
{
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)(v1);

  return sub_100022024();
}

uint64_t sub_10001F564(uint64_t a1)
{
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)(a1);
}

Swift::Int sub_10001F5D4(uint64_t a1)
{
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)(v2);

  return sub_100022024();
}

uint64_t sub_10001F650()
{
  v0 = sub_100021E24();
  sub_10000636C(v0, qword_100030AD8);
  sub_1000043D0(v0, qword_100030AD8);
  return sub_100021E14();
}

uint64_t ComposeRecipientHandleAppEntity.description.getter()
{
  sub_100021924();
  v0 = ComposeRecipientHandleValueAppEntity.description.getter();
  v2 = v1;

  v3 = sub_10000F3C0(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_10000F3C0((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v0;
  *(v6 + 5) = v2;
  sub_100021924();
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  if (v8 >= v7 >> 1)
  {
    v3 = sub_10000F3C0((v7 > 1), v8 + 1, 1, v3);
  }

  *(v3 + 2) = v8 + 1;
  v9 = &v3[16 * v8];
  *(v9 + 4) = v18;
  *(v9 + 5) = v19;
  sub_100021924();
  v10 = sub_100021ED4();
  v12 = v11;

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_10000F3C0((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 4) = v10;
  *(v15 + 5) = v12;
  sub_100001358(&qword_100030AF0, &qword_100026958);
  sub_100005F1C(&qword_100030AF8, &qword_100030AF0, &qword_100026958, &protocol conformance descriptor for [A]);
  v16 = sub_100021E34();

  return v16;
}

uint64_t _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityV2eeoiySbAC_ACtFZ_0()
{
  sub_100021924();
  sub_100021924();
  v0 = _s31AutocompleteAppIntentsExtension027ComposeRecipientHandleValueB6EntityV2eeoiySbAC_ACtFZ_0();

  if (v0)
  {
    sub_100021924();
    sub_100021924();

    sub_100021924();
    sub_100021924();
    v1 = sub_10001F03C(v3, v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10001FA74(uint64_t a1)
{
  v2 = sub_100021CC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100001358(&qword_100030120, &unk_1000241D0);
  v6 = sub_1000219B4();

  sub_1000219B4();

  sub_1000219B4();
  v28 = xmmword_1000244B0;
  v29 = xmmword_1000244B0;

  sub_100021934();

  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for ComposeRecipient.Handle.Value.phoneNumber(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = v5[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v10 = sub_100021E24();
    sub_1000043D0(v10, qword_100030AD8);
    v11 = sub_100021F24();

    v12 = sub_100021E04();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v29 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000F7B0(v8, v9, &v29);
      _os_log_impl(&_mh_execute_header, v12, v11, "Value is phone number: %s", v13, 0xCu);
      sub_100010E14(v14);
    }

LABEL_18:

    *&v29 = v8;
    *(&v29 + 1) = v9;
    sub_100021934();
    return v6;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Value.emailAddress(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = v5[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v15 = sub_100021E24();
    sub_1000043D0(v15, qword_100030AD8);
    v16 = sub_100021F24();

    v12 = sub_100021E04();

    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v29 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10000F7B0(v8, v9, &v29);
      _os_log_impl(&_mh_execute_header, v12, v16, "Value is email address: %s", v17, 0xCu);
      sub_100010E14(v18);
    }

    goto LABEL_18;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Value.applicationDefined(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = v5[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v19 = sub_100021E24();
    sub_1000043D0(v19, qword_100030AD8);
    v20 = sub_100021F24();

    v12 = sub_100021E04();

    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v29 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000F7B0(v8, v9, &v29);
      _os_log_impl(&_mh_execute_header, v12, v20, "Value is application defined: %s", v21, 0xCu);
      sub_100010E14(v22);
    }

    goto LABEL_18;
  }

  if (qword_100030118 != -1)
  {
    swift_once();
  }

  v23 = sub_100021E24();
  sub_1000043D0(v23, qword_100030AD8);
  v24 = sub_100021F24();
  v25 = sub_100021E04();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v25, v24, "Value is unknown", v26, 2u);
  }

  v29 = v28;
  sub_100021934();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1000200B4(uint64_t a1)
{
  v2 = sub_100021CB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ComposeRecipient.Handle.Label.custom(_:))
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.home(_:))
  {
    return 1701670760;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.work(_:))
  {
    return 1802661751;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.iPhone(_:))
  {
    return 0x656E6F685069;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.appleWatch(_:))
  {
    return 0x615720656C707041;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.iCloud(_:))
  {
    return 0x64756F6C4369;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.mobile(_:))
  {
    return 0x656C69626F6DLL;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.main(_:))
  {
    return 1852399981;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.homeFax(_:))
  {
    v8 = 1701670760;
    return v8 | 0x7861662000000000;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.workFax(_:))
  {
    v8 = 1802661751;
    return v8 | 0x7861662000000000;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.otherFax(_:))
  {
    return 0x616620726568746FLL;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.pager(_:))
  {
    return 0x7265676170;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.other(_:))
  {
    return 0x726568746FLL;
  }

  if (v6 == enum case for ComposeRecipient.Handle.Label.school(_:))
  {
    return 0x6C6F6F686373;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_100021F74(43);
  v10._object = 0x8000000100023000;
  v10._countAndFlagsBits = 0xD000000000000029;
  sub_100021EB4(v10);
  sub_100021F94();
  result = sub_100021FA4();
  __break(1u);
  return result;
}

char *sub_100020470(uint64_t a1)
{
  v86 = sub_100021DB4();
  v2 = *(v86 - 8);
  v3 = __chkstk_darwin(v86);
  v79 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v84 = &v55[-v6];
  __chkstk_darwin(v5);
  v67 = &v55[-v7];
  v8 = sub_100021DC4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v77 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v55[-v13];
  __chkstk_darwin(v12);
  v64 = &v55[-v15];
  v16 = sub_100001358(&qword_100030B70, &qword_100026CB0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v55[-v20];
  v22 = *(a1 + 64);
  v75 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v59 = (v23 + 63) >> 6;
  v82 = (v2 + 16);
  v83 = (v9 + 16);
  v80 = (v2 + 32);
  v81 = (v9 + 32);
  v73 = (v9 + 88);
  v72 = enum case for HandleAvailability.Service.iMessage(_:);
  v61 = enum case for HandleAvailability.Service.RCS(_:);
  v58 = enum case for HandleAvailability.Service.faceTimeVideo(_:);
  v56 = enum case for HandleAvailability.Service.faceTimeAudio(_:);
  v66 = v9;
  v76 = (v9 + 8);
  v71 = (v2 + 88);
  v70 = enum case for HandleAvailability.Status.available(_:);
  v60 = enum case for HandleAvailability.Status.unavailable(_:);
  v57 = enum case for HandleAvailability.Status.unknown(_:);
  v68 = v2;
  v69 = a1;
  v78 = (v2 + 8);

  v27 = 0;
  v85 = _swiftEmptyArrayStorage;
  v74 = v8;
  v65 = v14;
  v63 = v19;
  v62 = v21;
  v28 = v75;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_13:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v69;
      v35 = v66;
      (*(v66 + 16))(v64, *(v69 + 48) + *(v66 + 72) * v33, v8);
      v36 = v68;
      v37 = v67;
      v38 = v86;
      (*(v68 + 16))(v67, *(v34 + 56) + *(v68 + 72) * v33, v86);
      v39 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      v40 = *(v39 + 48);
      v19 = v63;
      (*(v35 + 32))();
      (*(v36 + 32))(&v19[v40], v37, v38);
      (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
      v14 = v65;
      v21 = v62;
LABEL_14:
      sub_1000216AC(v19, v21);
      v41 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      if ((*(*(v41 - 8) + 48))(v21, 1, v41) == 1)
      {

        return v85;
      }

      v42 = *(v41 + 48);
      v8 = v74;
      (*v81)(v14, v21, v74);
      (*v80)(v84, &v21[v42], v86);
      sub_100001358(&qword_100030150, &qword_100025070);
      sub_100001B4C();
      v43 = sub_100021964();
      sub_100001358(&qword_100030160, &qword_100023E90);
      sub_100001BDC();
      v44 = sub_100021964();
      v97[0] = 0;
      sub_100021934();
      v96 = 2;
      sub_100021934();
      v45 = v77;
      (*v83)(v77, v14, v8);
      v46 = (*v73)(v45, v8);
      if (v46 == v72)
      {
        break;
      }

      if (v46 == v61)
      {
        v88 = 1;

        goto LABEL_24;
      }

      if (v46 == v58)
      {
        v90 = 2;

        goto LABEL_24;
      }

      if (v46 == v56)
      {
        v89 = 3;

        goto LABEL_24;
      }

      v95 = 0;

      sub_100021934();
      (*v76)(v77, v8);
LABEL_25:
      v48 = v79;
      v49 = v86;
      (*v82)(v79, v84, v86);
      v50 = (*v71)(v48, v49);
      if (v50 == v70)
      {
        v91 = 0;
      }

      else if (v50 == v60)
      {
        v92 = 1;
      }

      else
      {
        if (v50 != v57)
        {
          v94 = 2;
          sub_100021934();
          (*v78)(v79, v86);
          goto LABEL_32;
        }

        v93 = 2;
      }

      sub_100021934();
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_10000F6A4(0, *(v85 + 2) + 1, 1, v85);
      }

      v52 = *(v85 + 2);
      v51 = *(v85 + 3);
      if (v52 >= v51 >> 1)
      {
        v85 = sub_10000F6A4((v51 > 1), v52 + 1, 1, v85);
      }

      (*v78)(v84, v86);
      (*v76)(v14, v8);
      v53 = v85;
      *(v85 + 2) = v52 + 1;
      v54 = &v53[16 * v52];
      *(v54 + 4) = v43;
      *(v54 + 5) = v44;

      v28 = v75;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    v87 = 0;

LABEL_24:
    sub_100021934();
    goto LABEL_25;
  }

LABEL_5:
  if (v59 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v59;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v59)
    {
      v47 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      (*(*(v47 - 8) + 56))(v19, 1, 1, v47);
      v25 = 0;
      v27 = v31;
      goto LABEL_14;
    }

    v25 = *(v28 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100020DC4(uint64_t a1)
{
  v2 = sub_100021CB4();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100021CC4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001358(&qword_100030208, &unk_100026C90);
  sub_100004444();
  v22 = sub_100021984();
  sub_100001358(&qword_100030128, &unk_100025430);

  sub_1000219B4();
  sub_100001358(&qword_100030218, &unk_100026CA0);
  sub_100004554();

  sub_100021984();

  sub_100021CE4();
  v8 = sub_10001FA74(v7);
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v23);
  v26 = v8;
  v27 = v10;
  v28 = v12;

  v13 = v22;
  sub_100021934();

  sub_100021CD4();
  v14 = sub_1000200B4(v4);
  v16 = v15;
  (*(v24 + 8))(v4, v25);
  v26 = v14;
  v27 = v16;
  sub_100021934();
  v17 = sub_100021CA4();
  v18 = sub_100020470(v17);

  v26 = v18;
  sub_100021934();
  v19 = sub_100021CF4();
  (*(*(v19 - 8) + 8))(a1, v19);

  return v13;
}

uint64_t _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityVACycfC_0()
{
  sub_100001358(&qword_100030208, &unk_100026C90);
  sub_100004444();
  v0 = sub_100021984();
  sub_100001358(&qword_100030128, &unk_100025430);

  sub_1000219B4();
  sub_100001358(&qword_100030218, &unk_100026CA0);
  sub_100004554();

  sub_100021984();
  sub_100001358(&qword_100030120, &unk_1000241D0);

  sub_1000219B4();
  sub_1000219B4();
  sub_1000219B4();
  sub_100021934();

  sub_100021934();

  sub_100021924();
  sub_100021934();

  sub_100021934();
  sub_100021934();

  return v0;
}

unint64_t sub_1000212AC()
{
  result = qword_100030B00;
  if (!qword_100030B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B00);
  }

  return result;
}

unint64_t sub_100021304()
{
  result = qword_100030B08;
  if (!qword_100030B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B08);
  }

  return result;
}

unint64_t sub_10002135C()
{
  result = qword_100030B10;
  if (!qword_100030B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B10);
  }

  return result;
}

unint64_t sub_1000213F8()
{
  result = qword_100030B28;
  if (!qword_100030B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B28);
  }

  return result;
}

unint64_t sub_100021450()
{
  result = qword_100030B30;
  if (!qword_100030B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B30);
  }

  return result;
}

unint64_t sub_1000214A8()
{
  result = qword_100030B38;
  if (!qword_100030B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B38);
  }

  return result;
}

unint64_t sub_100021500()
{
  result = qword_100030B40;
  if (!qword_100030B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B40);
  }

  return result;
}

unint64_t sub_10002159C()
{
  result = qword_100030B58;
  if (!qword_100030B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B58);
  }

  return result;
}

unint64_t sub_1000215F4()
{
  result = qword_100030B60;
  if (!qword_100030B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B60);
  }

  return result;
}

unint64_t sub_100021658()
{
  result = qword_100030B68;
  if (!qword_100030B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B68);
  }

  return result;
}

uint64_t sub_1000216AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100030B70, &qword_100026CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}