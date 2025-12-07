Swift::String __swiftcall ColumnType.symbolName()()
{
  v1 = *(v0 + 8);
  v2 = 0xE000000000000000;
  if (v1 > 4)
  {
    v3 = 0xE300000000000000;
    v6 = 6775156;
    v10 = 0xE500000000000000;
    v11 = 0x64756F6C63;
    if (v1 != 8)
    {
      v11 = 0;
      v10 = 0xE000000000000000;
    }

    if (v1 != 7)
    {
      v6 = v11;
      v3 = v10;
    }

    v8 = 0xD000000000000018;
    v12 = 0x69702E7472616863;
    if (v1 == 6)
    {
      v2 = 0xE900000000000065;
    }

    else
    {
      v12 = 0;
    }

    if (v1 == 5)
    {
      v2 = 0x8000000249BE7B30;
    }

    else
    {
      v8 = v12;
    }

    v9 = v1 <= 6;
  }

  else
  {
    v3 = 0x8000000249BE7B70;
    v4 = 0xD000000000000013;
    if (v1 == 4)
    {
      v5 = 0x8000000249BE7B50;
    }

    else
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    if (v1 == 3)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = v4;
    }

    if (v1 != 3)
    {
      v3 = v5;
    }

    v7 = 0xD000000000000013;
    if (v1 == 2)
    {
      v2 = 0x8000000249BE7B50;
    }

    else
    {
      v7 = 0;
    }

    if (v1 == 1)
    {
      v8 = 0x7261646E656C6163;
    }

    else
    {
      v8 = v7;
    }

    if (v1 == 1)
    {
      v2 = 0xE800000000000000;
    }

    v9 = v1 <= 2;
  }

  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = v6;
  }

  if (v9)
  {
    v14 = v2;
  }

  else
  {
    v14 = v3;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t ColumnType.accessibilityIdentifierComponent.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (!v2)
      {
        v3 = 1701667182;
        goto LABEL_21;
      }

      if (v2 == 1)
      {
        v3 = 0x69646F4D65746164;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v2 == 2)
    {
      v3 = 0x6165724365746164;
    }

    else
    {
      v3 = 0x7473614C65746164;
    }
  }

  else
  {
    if (v2 > 5)
    {
      switch(v2)
      {
        case 6:
          v3 = 1702521203;
          goto LABEL_21;
        case 7:
          v3 = 1936154996;
          goto LABEL_21;
        case 8:
          v3 = 0x737574617473;
          goto LABEL_21;
      }

LABEL_20:
      v3 = *v0;
      goto LABEL_21;
    }

    if (v2 == 4)
    {
      v3 = 0x6564644165746164;
    }

    else
    {
      v3 = 1684957547;
    }
  }

LABEL_21:
  outlined copy of ColumnType(v1, v2);
  return v3;
}

Swift::Int DOCLocalizationContext.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCItemSortMode.DisplayableMode.accessibilityIdentifierComponent.getter()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x7942646572616873;
  if (v1 != 5)
  {
    v3 = 0x732064756F6C6369;
  }

  v4 = 1702521203;
  if (v1 != 3)
  {
    v4 = 1684957547;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 6775156;
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

Swift::String __swiftcall DOCItemSortMode.DisplayableMode.localizedName(for:)(DocumentManagerExecutables::DOCLocalizationContext a1)
{
  v2 = *a1;
  v3 = *v1;
  countAndFlagsBits = _DocumentManagerBundle();
  v6 = countAndFlagsBits;
  if (!v2)
  {
    if (v3 > 2)
    {
      if (v3 <= 4)
      {
        if (v3 == 3)
        {
          if (countAndFlagsBits)
          {
            v21 = 0x8000000249BF9EB0;
            v7 = 0x617A696C61636F4CLL;
            v8 = 0xEB00000000656C62;
            v11 = 0xD000000000000014;
            v9 = 0x8000000249BF9E90;
            v10 = 0xD000000000000033;
            goto LABEL_18;
          }

          goto LABEL_73;
        }

        if (!countAndFlagsBits)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v21 = 0x8000000249BF9E50;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0xD000000000000014;
        v9 = 0x8000000249BF9E30;
        v10 = 0xD000000000000038;
LABEL_67:
        v12.super.isa = v6;
        v13 = 1684957515;
        v14 = 0xE400000000000000;
        goto LABEL_71;
      }

      if (v3 == 5)
      {
        if (!countAndFlagsBits)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v21 = 0x8000000249BF9DF0;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v13 = 0x6220646572616853;
        v11 = 0xD000000000000019;
        v9 = 0x8000000249BF9DD0;
        v10 = 0xD000000000000035;
        goto LABEL_41;
      }

      if (!countAndFlagsBits)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v15 = "ication date in a sort menu";
      v16 = 0x8000000249BF9D90;
      v17 = 13;
      v18 = 44;
      goto LABEL_58;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        if (!countAndFlagsBits)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v21 = 0x8000000249BF9F70;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0xD000000000000014;
        v9 = 0x8000000249BF9F50;
        v10 = 0xD000000000000033;
        goto LABEL_27;
      }

      if (!countAndFlagsBits)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v21 = 0x8000000249BF9F10;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v11 = 0xD000000000000014;
      v9 = 0x8000000249BF9EF0;
      v10 = 0xD000000000000033;
LABEL_64:
      v12.super.isa = v6;
      v13 = 1936154964;
      v14 = 0xE400000000000000;
      goto LABEL_71;
    }

    if (!countAndFlagsBits)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v21 = 0x8000000249BFA6D0;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v11 = 0xD000000000000014;
    v9 = 0x8000000249BFA6B0;
    v10 = 0xD000000000000033;
LABEL_61:
    v12.super.isa = v6;
    v13 = 1702125892;
    v14 = 0xE400000000000000;
    goto LABEL_71;
  }

  if (v2 != 1)
  {
    if (v3 > 2)
    {
      if (v3 <= 4)
      {
        if (v3 == 3)
        {
          if (countAndFlagsBits)
          {
            v21 = 0x8000000249BFA560;
            v11 = 0x69745B20657A6953;
            v9 = 0xEC0000005D656C74;
            v7 = 0x617A696C61636F4CLL;
            v8 = 0xEB00000000656C62;
            v10 = 0xD00000000000003CLL;
            goto LABEL_18;
          }

          goto LABEL_87;
        }

        if (!countAndFlagsBits)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v21 = 0x8000000249BFA510;
        v11 = 0x69745B20646E694BLL;
        v9 = 0xEC0000005D656C74;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v10 = 0xD000000000000041;
        goto LABEL_67;
      }

      if (v3 == 5)
      {
        if (!countAndFlagsBits)
        {
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v21 = 0x8000000249BFA4D0;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v13 = 0x6220646572616853;
        v11 = 0xD000000000000011;
        v9 = 0x8000000249BFA4B0;
        v10 = 0xD00000000000003ELL;
        goto LABEL_41;
      }

      if (!countAndFlagsBits)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v21 = 0x8000000249BFA460;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v13 = 0x532064756F6C4369;
      v14 = 0xED00007375746174;
      v11 = 0xD000000000000015;
      v9 = 0x8000000249BFA440;
      v10 = 0xD000000000000045;
LABEL_70:
      v12.super.isa = v6;
      goto LABEL_71;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        if (countAndFlagsBits)
        {
          v21 = 0x8000000249BFA5E0;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v10 = 0xD00000000000003CLL;
          v11 = 1701667150;
          v9 = 0xE400000000000000;
          v12.super.isa = v6;
          v13 = 0;
          v14 = 0xE000000000000000;
          goto LABEL_71;
        }

        goto LABEL_88;
      }

      if (!countAndFlagsBits)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v21 = 0x8000000249BFA5A0;
      v11 = 0x69745B2073676154;
      v9 = 0xEC0000005D656C74;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v10 = 0xD00000000000003CLL;
      goto LABEL_64;
    }

    if (!countAndFlagsBits)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v21 = 0x8000000249BFA620;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v10 = 0xD00000000000003CLL;
    v11 = 1702125892;
    v9 = 0xE400000000000000;
    goto LABEL_61;
  }

  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!countAndFlagsBits)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v21 = 0x8000000249BF9BC0;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v9 = 0x8000000249BF9BA0;
        v10 = 0xD00000000000002ELL;
        v11 = 0xD000000000000010;
LABEL_27:
        v12.super.isa = v6;
        v13 = 1701667150;
        v14 = 0xE400000000000000;
        goto LABEL_71;
      }

      if (!countAndFlagsBits)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v21 = 0x8000000249BF9B70;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v9 = 0x8000000249BF9B50;
      v10 = 0xD00000000000002ELL;
      v11 = 0xD000000000000010;
      goto LABEL_64;
    }

    if (!countAndFlagsBits)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v21 = 0x8000000249BFA680;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v9 = 0x8000000249BFA660;
    v10 = 0xD00000000000002ELL;
    v11 = 0xD000000000000010;
    goto LABEL_61;
  }

  if (v3 > 4)
  {
    if (v3 == 5)
    {
      if (!countAndFlagsBits)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v21 = 0x8000000249BF9A60;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v13 = 0x6220646572616853;
      v11 = 0xD000000000000015;
      v9 = 0x8000000249BF9A40;
      v10 = 0xD000000000000030;
LABEL_41:
      v12.super.isa = v6;
      v14 = 0xE900000000000079;
      goto LABEL_71;
    }

    if (!countAndFlagsBits)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v15 = "g items by modification date";
    v16 = 0x8000000249BF9A00;
    v17 = 9;
    v18 = 39;
LABEL_58:
    v21 = v16;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v13 = 0x532064756F6C4369;
    v14 = 0xED00007375746174;
    v11 = v17 | 0xD000000000000010;
    v9 = v15 | 0x8000000000000000;
    v10 = v18 | 0xD000000000000010;
    goto LABEL_70;
  }

  if (v3 != 3)
  {
    if (!countAndFlagsBits)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v21 = 0x8000000249BF9AC0;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v9 = 0x8000000249BF9AA0;
    v10 = 0xD000000000000033;
    v11 = 0xD000000000000010;
    goto LABEL_67;
  }

  if (!countAndFlagsBits)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v21 = 0x8000000249BF9B20;
  v7 = 0x617A696C61636F4CLL;
  v8 = 0xEB00000000656C62;
  v9 = 0x8000000249BF9B00;
  v10 = 0xD00000000000002ELL;
  v11 = 0xD000000000000010;
LABEL_18:
  v12.super.isa = v6;
  v13 = 1702521171;
  v14 = 0xE400000000000000;
LABEL_71:
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v7, v12, *&v13, *&v10);

  countAndFlagsBits = v19._countAndFlagsBits;
  object = v19._object;
LABEL_93:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t DOCItemSortMode.DisplayableMode.compatibleSortModes.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v6 = outlined read-only object #0 of static DOCItemSortMode.allCases.getter[v1 + 32];
    v7 = 0xE400000000000000;
    if (v6 > 4)
    {
      if (outlined read-only object #0 of static DOCItemSortMode.allCases.getter[v1 + 32] <= 6u)
      {
        if (v6 == 5)
        {
          v8 = 1684957547;
        }

        else
        {
          v8 = 0x7942646572616873;
        }

        if (v6 == 5)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE800000000000000;
        }

        if (v2 <= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      v8 = 1702125924;
      if (v6 - 7 >= 2)
      {
        v8 = 0x745364756F6C6369;
        v7 = 0xEC00000073757461;
        if (v2 <= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_24;
      }

LABEL_23:
      if (v2 <= 2)
      {
        goto LABEL_45;
      }

      goto LABEL_24;
    }

    if (outlined read-only object #0 of static DOCItemSortMode.allCases.getter[v1 + 32] > 2u)
    {
      if (v6 == 3)
      {
        v8 = 1936154996;
      }

      else
      {
        v8 = 1702521203;
      }

      v7 = 0xE400000000000000;
      goto LABEL_23;
    }

    if (v6 >= 2)
    {
      v8 = 1701667182;
    }

    else
    {
      v8 = 1702125924;
    }

    if (v6 >= 2)
    {
      v7 = 0xE400000000000000;
    }

    if (v2 <= 2)
    {
LABEL_45:
      if (v2)
      {
        if (v2 == 1)
        {
          v14 = 1701667182;
        }

        else
        {
          v14 = 1936154996;
        }

        v13 = 0xE400000000000000;
        if (v8 != v14)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v8 != 1702125924)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

LABEL_24:
    v9 = 0x7942646572616873;
    if (v2 != 5)
    {
      v9 = 0x745364756F6C6369;
    }

    v10 = 0xEC00000073757461;
    if (v2 == 5)
    {
      v10 = 0xE800000000000000;
    }

    v11 = 1702521203;
    if (v2 != 3)
    {
      v11 = 1684957547;
    }

    if (v2 <= 4)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v2 <= 4)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = v10;
    }

    if (v8 != v12)
    {
LABEL_54:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

LABEL_52:
    if (v7 != v13)
    {
      goto LABEL_54;
    }

LABEL_55:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
    }

    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + v5 + 32) = v6;
LABEL_5:
    ++v1;
  }

  while (v1 != 10);
  return v3;
}

DocumentManagerExecutables::DOCItemSortMode::DisplayableMode_optional __swiftcall DOCItemSortMode.DisplayableMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCItemSortMode.DisplayableMode.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t DOCItemSortMode.DisplayableMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x7942646572616873;
  if (v1 != 5)
  {
    v3 = 0x745364756F6C6369;
  }

  v4 = 1702521203;
  if (v1 != 3)
  {
    v4 = 1684957547;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 1936154996;
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

double protocol witness for Hashable.hash(into:) in conformance DOCItemSortMode.DisplayableMode(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCItemSortMode.DisplayableMode(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702125924;
  v5 = 0xE800000000000000;
  v6 = 0x7942646572616873;
  if (v2 != 5)
  {
    v6 = 0x745364756F6C6369;
    v5 = 0xEC00000073757461;
  }

  v7 = 1702521203;
  if (v2 != 3)
  {
    v7 = 1684957547;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 1701667182;
  if (v2 != 1)
  {
    v8 = 1936154996;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemSortMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemSortMode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t static DOCItemSortDescriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[24];
  v3 = a2[24];
  return specialized == infix<A>(_:_:)(*a1, *a2) & ~(v2 ^ v3) & 1;
}

void static DOCItemSortDescriptor.equalIgnoringSortOption(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {

    if (v2)
    {
      v5 = a1 + 48;
      v6 = a2 + 40;
      while (1)
      {
        v8 = *(v5 - 16);
        if (v8 > 4)
        {
          if (*(v5 - 16) <= 6u)
          {
            if (v8 == 5)
            {
              v9 = 0xE400000000000000;
              v10 = 1684957547;
            }

            else
            {
              v9 = 0xE800000000000000;
              v10 = 0x7942646572616873;
            }
          }

          else if (v8 == 7)
          {
            v10 = 0x6E6F697461657263;
            v9 = 0xEC00000065746144;
          }

          else if (v8 == 8)
          {
            v10 = 0x6564644165746164;
            v9 = 0xE900000000000064;
          }

          else
          {
            v10 = 0x745364756F6C6369;
            v9 = 0xEC00000073757461;
          }
        }

        else if (*(v5 - 16) <= 1u)
        {
          v10 = 0x646573557473616CLL;
          v9 = 0xEC00000065746144;
          if (!*(v5 - 16))
          {
            v10 = 0xD000000000000010;
            v9 = 0x8000000249BC5DF0;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          if (v8 == 2)
          {
            v10 = 1701667182;
          }

          else
          {
            v10 = v8 == 3 ? 1936154996 : 1702521203;
          }
        }

        v11 = *(v6 - 8);
        if (v11 <= 4)
        {
          break;
        }

        if (*(v6 - 8) > 6u)
        {
          if (v11 == 7)
          {
            v12 = 0xEC00000065746144;
            if (v10 != 0x6E6F697461657263)
            {
              goto LABEL_4;
            }

            goto LABEL_49;
          }

          if (v11 == 8)
          {
            v12 = 0xE900000000000064;
            if (v10 != 0x6564644165746164)
            {
              goto LABEL_4;
            }

            goto LABEL_49;
          }

          v13 = 0x745364756F6C6369;
          v12 = 0xEC00000073757461;
LABEL_48:
          if (v10 != v13)
          {
            goto LABEL_4;
          }

          goto LABEL_49;
        }

        if (v11 == 5)
        {
          v12 = 0xE400000000000000;
          if (v10 != 1684957547)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v12 = 0xE800000000000000;
          if (v10 != 0x7942646572616873)
          {
LABEL_4:
            v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v7 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_5;
          }
        }

LABEL_49:
        if (v9 != v12)
        {
          goto LABEL_4;
        }

LABEL_5:
        v5 += 32;
        v6 += 32;
        if (!--v2)
        {
          goto LABEL_54;
        }
      }

      if (*(v6 - 8) > 1u)
      {
        v12 = 0xE400000000000000;
        if (v11 == 2)
        {
          if (v10 != 1701667182)
          {
            goto LABEL_4;
          }
        }

        else if (v11 == 3)
        {
          if (v10 != 1936154996)
          {
            goto LABEL_4;
          }
        }

        else if (v10 != 1702521203)
        {
          goto LABEL_4;
        }

        goto LABEL_49;
      }

      v13 = 0x646573557473616CLL;
      v12 = 0xEC00000065746144;
      if (!*(v6 - 8))
      {
        v12 = 0x8000000249BC5DF0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_4;
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_54:
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemSortDescriptor(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[24];
  v3 = a2[24];
  return specialized == infix<A>(_:_:)(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.CodingKeys and conformance ColumnType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.CodingKeys and conformance ColumnType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance ColumnType.CustomNameCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.CustomNameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.CustomNameCodingKeys and conformance ColumnType.CustomNameCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.CustomNameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.CustomNameCodingKeys and conformance ColumnType.CustomNameCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.DateAddedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.DateAddedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.DateCreatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateCreatedCodingKeys and conformance ColumnType.DateCreatedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.DateCreatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateCreatedCodingKeys and conformance ColumnType.DateCreatedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.DateLastOpenedCodingKeys(uint64_t a1)
{
  OpenedCoding = lazy protocol witness table accessor for type ColumnType.DateLastOpenedCodingKeys and conformance ColumnType.DateLastOpenedCodingKeys();

  return MEMORY[0x2821FE718](a1, OpenedCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.DateLastOpenedCodingKeys(uint64_t a1)
{
  OpenedCoding = lazy protocol witness table accessor for type ColumnType.DateLastOpenedCodingKeys and conformance ColumnType.DateLastOpenedCodingKeys();

  return MEMORY[0x2821FE720](a1, OpenedCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.DateModifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateModifiedCodingKeys and conformance ColumnType.DateModifiedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.DateModifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.DateModifiedCodingKeys and conformance ColumnType.DateModifiedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.KindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.KindCodingKeys and conformance ColumnType.KindCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.KindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.KindCodingKeys and conformance ColumnType.KindCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.NameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.NameCodingKeys and conformance ColumnType.NameCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.NameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.NameCodingKeys and conformance ColumnType.NameCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.SizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.SizeCodingKeys and conformance ColumnType.SizeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.SizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.SizeCodingKeys and conformance ColumnType.SizeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.StatusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.StatusCodingKeys and conformance ColumnType.StatusCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.StatusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.StatusCodingKeys and conformance ColumnType.StatusCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ColumnType.TagCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.TagCodingKeys and conformance ColumnType.TagCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ColumnType.TagCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColumnType.TagCodingKeys and conformance ColumnType.TagCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColumnType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._safeAreaLayoutGuide, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO16StatusCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v76 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._keyboardLayoutGuide, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO13TagCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v73 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._readableContentGuide, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO14SizeCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v70 = v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView.__lastNotifiedTraitCollection, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO14KindCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v67 = v57 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView.__autoresizingMaskForPreviousAutoresizingLayoutConstraints, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO19DateAddedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v16);
  v64 = v57 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView.__alignmentRectOriginCache, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO24DateLastOpenedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v18);
  v83 = v57 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._rawLayoutMargins, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO21DateCreatedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v82 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v20);
  v81 = v57 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._rawLayoutMargins.left, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO22DateModifiedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v80 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v57 - v24;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._rawLayoutMargins.bottom, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO20CustomNameCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v26);
  v59 = v57 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._rawLayoutMargins.right, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO14NameCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v79 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._inferredLayoutMargins, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables10ColumnTypeO10CodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMR);
  v33 = *(v32 - 8);
  v85 = v32;
  v86 = v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = v57 - v35;
  v37 = v2[1];
  v57[1] = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ColumnType.CodingKeys and conformance ColumnType.CodingKeys();
  v84 = v36;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37 <= 3)
  {
    v44 = v79;
    v43 = v80;
    v78 = v22;
    v45 = v81;
    v46 = v82;
    v47 = v83;
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v90 = 3;
        lazy protocol witness table accessor for type ColumnType.DateCreatedCodingKeys and conformance ColumnType.DateCreatedCodingKeys();
        v51 = v45;
        v40 = v84;
        v39 = v85;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v46 + 8))(v51, v58);
        return (*(v86 + 8))(v40, v39);
      }

      v91 = 4;
      lazy protocol witness table accessor for type ColumnType.DateLastOpenedCodingKeys and conformance ColumnType.DateLastOpenedCodingKeys();
      v48 = v84;
      v49 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v60 + 8))(v47, v62);
    }

    else
    {
      if (!v37)
      {
        v87 = 0;
        lazy protocol witness table accessor for type ColumnType.NameCodingKeys and conformance ColumnType.NameCodingKeys();
        v40 = v84;
        v39 = v85;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v44 + 8))(v31, v28);
        return (*(v86 + 8))(v40, v39);
      }

      if (v37 != 1)
      {
        goto LABEL_23;
      }

      v89 = 2;
      lazy protocol witness table accessor for type ColumnType.DateModifiedCodingKeys and conformance ColumnType.DateModifiedCodingKeys();
      v48 = v84;
      v49 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v25, v78);
    }

    return (*(v86 + 8))(v48, v49);
  }

  if (v37 <= 5)
  {
    if (v37 != 4)
    {
      v93 = 6;
      lazy protocol witness table accessor for type ColumnType.KindCodingKeys and conformance ColumnType.KindCodingKeys();
      v38 = v67;
      v40 = v84;
      v39 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v68;
      v41 = v69;
      goto LABEL_21;
    }

    v92 = 5;
    lazy protocol witness table accessor for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys();
    v52 = v64;
    v40 = v84;
    v39 = v85;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v65 + 8))(v52, v66);
    return (*(v86 + 8))(v40, v39);
  }

  switch(v37)
  {
    case 6:
      v94 = 7;
      lazy protocol witness table accessor for type ColumnType.SizeCodingKeys and conformance ColumnType.SizeCodingKeys();
      v38 = v70;
      v40 = v84;
      v39 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v71;
      v41 = v72;
      goto LABEL_21;
    case 7:
      v95 = 8;
      lazy protocol witness table accessor for type ColumnType.TagCodingKeys and conformance ColumnType.TagCodingKeys();
      v38 = v73;
      v40 = v84;
      v39 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v74;
      v41 = v75;
      goto LABEL_21;
    case 8:
      v96 = 9;
      lazy protocol witness table accessor for type ColumnType.StatusCodingKeys and conformance ColumnType.StatusCodingKeys();
      v38 = v76;
      v40 = v84;
      v39 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v77;
      v41 = v78;
LABEL_21:
      (*(v42 + 8))(v38, v41);
      return (*(v86 + 8))(v40, v39);
  }

LABEL_23:
  v88 = 1;
  lazy protocol witness table accessor for type ColumnType.CustomNameCodingKeys and conformance ColumnType.CustomNameCodingKeys();
  v53 = v59;
  v55 = v84;
  v54 = v85;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v56 = v63;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v61 + 8))(v53, v56);
  return (*(v86 + 8))(v55, v54);
}

Swift::Int ColumnType.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      goto LABEL_20;
    }

    if (!v1)
    {
      v2 = 0;
      goto LABEL_20;
    }

    if (v1 == 1)
    {
      v2 = 2;
      goto LABEL_20;
    }

LABEL_22:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_20;
  }

  if (v1 == 6)
  {
    v2 = 7;
    goto LABEL_20;
  }

  if (v1 == 7)
  {
    v2 = 8;
    goto LABEL_20;
  }

  if (v1 != 8)
  {
    goto LABEL_22;
  }

  v2 = 9;
LABEL_20:
  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColumnType()
{
  v3 = *v0;
  Hasher.init(_seed:)();
  ColumnType.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  result = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSSortDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys()
{
  result = *&sharedTypeToFocusInputView._safeAreaInsets.bottom;
  if (!*&sharedTypeToFocusInputView._safeAreaInsets.bottom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._safeAreaInsets.bottom);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCLocalizationContext and conformance DOCLocalizationContext()
{
  result = lazy protocol witness table cache variable for type DOCLocalizationContext and conformance DOCLocalizationContext;
  if (!lazy protocol witness table cache variable for type DOCLocalizationContext and conformance DOCLocalizationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCLocalizationContext and conformance DOCLocalizationContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemSortMode.DisplayableMode and conformance DOCItemSortMode.DisplayableMode()
{
  result = lazy protocol witness table cache variable for type DOCItemSortMode.DisplayableMode and conformance DOCItemSortMode.DisplayableMode;
  if (!lazy protocol witness table cache variable for type DOCItemSortMode.DisplayableMode and conformance DOCItemSortMode.DisplayableMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSortMode.DisplayableMode and conformance DOCItemSortMode.DisplayableMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColumnType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

Swift::Int OutlineGestureTypes.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t UIViewWithDraggingStuff.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UIViewWithDraggingStuff.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

double UIViewWithDraggingStuff.currentTouchXLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_currentTouchXLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIViewWithDraggingStuff.currentTouchXLocation.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_currentTouchXLocation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIViewWithDraggingStuff.startingLocation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startingLocation;
  swift_beginAccess();
  return *v1;
}

void UIViewWithDraggingStuff.startingLocation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startingLocation;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
}

void *UIViewWithDraggingStuff.timer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UIViewWithDraggingStuff.timer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *UIViewWithDraggingStuff.singleTapTimer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_singleTapTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UIViewWithDraggingStuff.singleTapTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_singleTapTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t UIViewWithDraggingStuff.startedGesture.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startedGesture;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIViewWithDraggingStuff.startedGesture.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startedGesture;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double UIViewWithDraggingStuff.eligibleTypes.getter()
{
  swift_beginAccess();

  return result;
}

double UIViewWithDraggingStuff.eligibleTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_eligibleTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id UIViewWithDraggingStuff.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_currentTouchXLocation] = 0;
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startingLocation];
  *v9 = 0;
  v9[8] = -1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_timer] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_singleTapTimer] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startedGesture] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_eligibleTypes] = MEMORY[0x277D84F90];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for UIViewWithDraggingStuff();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setHitTestsAsOpaque_];

  return v10;
}

Swift::Void __swiftcall UIViewWithDraggingStuff.beginColumnDrag()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v3 = v2();
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*((*v1 & *v0) + 0xA0))();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = v8;
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v9 = -1;
  }

  v10 = (*((*v1 & *v0) + 0xB8))(v3);
  if (v9 == -1)
  {
    if (v11 != -1)
    {
      return;
    }
  }

  else
  {
    if (v11 == -1)
    {
      return;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        if (v11 != 2 || v10 != 0)
        {
          return;
        }

        goto LABEL_17;
      }

      v12 = v11 == 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (!v12 || v7 != v10)
    {
      return;
    }
  }

LABEL_17:
  v14 = (v2)(v10);
  if (v14)
  {
    v16 = v15;
    v17 = swift_getObjectType();
    (*((*v1 & *v0) + 0xA0))();
    (*(v16 + 16))(v17, v16);
    v14 = swift_unknownObjectRelease();
  }

  if ((v2)(v14))
  {
    v19 = v18;
    v20 = swift_getObjectType();
    (*((*v1 & *v0) + 0xA0))();
    (*(v19 + 40))(v20, v19);
    swift_unknownObjectRelease();
  }

  v21 = *((*v1 & *v0) + 0x120);

  v21(&outlined read-only object #0 of UIViewWithDraggingStuff.beginColumnDrag());
}

Swift::Void __swiftcall UIViewWithDraggingStuff.singleTapHit()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x88))())
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*((*v1 & *v0) + 0xA0))();
    (*(v3 + 32))(ObjectType, v3);

    swift_unknownObjectRelease();
  }
}

void UIViewWithDraggingStuff.finishedAnimation()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x108))(0);
  v3 = [v0 superview];
  [v3 setNeedsLayout];

  v4 = (*((*v2 & *v1) + 0x88))();
  if (v4)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(ObjectType, v6);
    v4 = swift_unknownObjectRelease();
  }

  v8 = (*((*v2 & *v1) + 0xD0))(v4);
  [v8 invalidate];
}

Swift::Void __swiftcall UIViewWithDraggingStuff.willMove(toWindow:)(UIWindow_optional *toWindow)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIViewWithDraggingStuff();
  v3 = [(UIWindow_optional *)&v4 willMoveToWindow:toWindow];
  if (!toWindow && ((*((*MEMORY[0x277D85000] & *v1) + 0x100))(v3) & 1) != 0)
  {
    UIViewWithDraggingStuff.finishedAnimation()();
  }
}

double @objc UIViewWithDraggingStuff.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8);

  return result;
}

void BasicLabel.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BasicLabel.body.getter@<X0>(uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.subheadline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  static Font.Weight.semibold.getter();
  v14 = Text.fontWeight(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined consume of Text.Storage(v9, v11, v13 & 1);

  result = swift_getKeyPath();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  *(a3 + 32) = result;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  return result;
}

DocumentManagerExecutables::BasicLabel __swiftcall BasicLabel.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result.name._object = v1;
  result.name._countAndFlagsBits = v0;
  return result;
}

id DOCOutlineHeaderView.rowView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_rowView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCOutlineHeaderView.rowView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_rowView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCOutlineHeaderView.headerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0xF0))();
  (*((*v5 & *v6) + 0x90))(a1, a2);
}

uint64_t DOCOutlineHeaderView.headerDelegate.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v3 = (*((*v1 & *v2) + 0x88))();

  return v3;
}

void (*DOCOutlineHeaderView.headerDelegate.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[2] = v1;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
  v7 = ((*MEMORY[0x277D85000] & *v1) + 240) & 0xFFFFFFFFFFFFLL | 0x1519000000000000;
  v3[3] = v6;
  v3[4] = v7;
  v8 = v6();
  v9 = (*((*v5 & *v8) + 0x88))();
  v11 = v10;

  *v4 = v9;
  v4[1] = v11;
  return DOCOutlineHeaderView.headerDelegate.modify;
}

void DOCOutlineHeaderView.headerDelegate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    v7 = (v5)(v6);
    (*((*MEMORY[0x277D85000] & *v7) + 0x90))(v3, v4);

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v5();
    (*((*MEMORY[0x277D85000] & *v8) + 0x90))(v3, v4);
  }

  free(v2);
}

Swift::Void __swiftcall DOCOutlineHeaderView.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCOutlineHeaderView();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  (*((*MEMORY[0x277D85000] & *v0) + 0x168))(0);
}

id DOCOutlineHeaderView.viewWithDraggingStuff.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_viewWithDraggingStuff;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCOutlineHeaderView.viewWithDraggingStuff.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_viewWithDraggingStuff;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCOutlineHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_metrics];
  *(v9 + 8) = xmmword_249BBA7F0;
  *(v9 + 24) = xmmword_249BBA7F0;
  v10 = *(MEMORY[0x277D75060] + 16);
  *(v9 + 40) = *MEMORY[0x277D75060];
  *v9 = 256;
  *(v9 + 56) = v10;
  v9[72] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_basicLabel;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables10BasicLabelVGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables10BasicLabelVGMR));
  *&v4[v11] = _UIHostingView.init(rootView:)();
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_rowView;
  v14 = objc_allocWithZone(type metadata accessor for DOCItemRowView());
  *&v4[v13] = DOCItemRowView.init(isHeader:)(1);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_viewWithDraggingStuff;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for UIViewWithDraggingStuff()) initWithFrame_];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_isPinned] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___bottomSeparator] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_scrollPocketInteraction] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_displaySortButtons] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___topSeparator] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideTopSeparator] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideSeparators] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundTopExtension] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundAlpha] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView] = 0;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for DOCOutlineHeaderView();
  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_viewWithDraggingStuff;
  swift_beginAccess();
  v18 = *&v16[v17];
  v19 = v16;
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_rowView;
  swift_beginAccess();
  [v19 addSubview_];
  v21 = DOCOutlineHeaderView.bottomSeparator.getter();
  [v19 addSubview_];

  v22 = DOCOutlineHeaderView.topSeparator.getter();
  [v19 addSubview_];

  DOCOutlineHeaderView.setSeparatorAppearance()();
  (*((*MEMORY[0x277D85000] & *v19) + 0x178))();

  return v19;
}

uint64_t DOCOutlineHeaderView.isPinned.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_isPinned;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCOutlineHeaderView.isPinned.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_isPinned;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCOutlineHeaderView.setSeparatorAppearance()();
    v6 = [v1 setNeedsLayout];
    v7 = *(v1 + v4);
    v8 = MEMORY[0x277D85000];
    if (v7)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v6);
    }

    else
    {
      v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x148))(v6);
      if (v9)
      {
        v10 = v9;
        v11 = (*((*v8 & *v1) + 0xC0))();
        [v11 removeInteraction_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void (*DOCOutlineHeaderView.isPinned.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_isPinned;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCOutlineHeaderView.isPinned.modify;
}

void DOCOutlineHeaderView.isPinned.modify(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_9;
    }

    v16 = v3[3];
    v17 = v3[4];
    DOCOutlineHeaderView.setSeparatorAppearance()();
    v10 = [v16 setNeedsLayout];
    v11 = MEMORY[0x277D85000];
    v12 = *MEMORY[0x277D85000] & *v16;
    if (*(v16 + v17) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(v12 + 376))(v10);
    goto LABEL_9;
  }

  if (((v6 ^ v7) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v3[3];
  v9 = v3[4];
  DOCOutlineHeaderView.setSeparatorAppearance()();
  v10 = [v8 setNeedsLayout];
  v11 = MEMORY[0x277D85000];
  v12 = *MEMORY[0x277D85000] & *v8;
  if (*(v8 + v9))
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = (*(v12 + 328))(v10);
  if (v13)
  {
    v14 = v13;
    v15 = (*((*v11 & *v3[3]) + 0xC0))();
    [v15 removeInteraction_];

    swift_unknownObjectRelease();
  }

LABEL_9:

  free(v3);
}

uint64_t DOCOutlineHeaderView.scrollPocketInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_scrollPocketInteraction;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t DOCOutlineHeaderView.displaySortButtons.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_displaySortButtons;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCOutlineHeaderView.displaySortButtons.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_displaySortButtons;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = v1;
    DOCOutlineHeaderView.setSeparatorAppearance()();
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xC0))();
    (*((*v7 & *v8) + 0x228))(*(v6 + v4));

    v9 = (*((*v7 & *v6) + 0xF0))();
    [v9 setUserInteractionEnabled_];
  }
}

void (*DOCOutlineHeaderView.displaySortButtons.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_displaySortButtons;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCOutlineHeaderView.displaySortButtons.modify;
}

void DOCOutlineHeaderView.displaySortButtons.modify(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    v7 = v2[3];
    v8 = v2[4];
    DOCOutlineHeaderView.setSeparatorAppearance()();
    v9 = MEMORY[0x277D85000];
    v10 = (*((*MEMORY[0x277D85000] & *v7) + 0xC0))();
    (*((*v9 & *v10) + 0x228))(*(v7 + v8));

    v11 = (*((*v9 & *v7) + 0xF0))();
    [v11 setUserInteractionEnabled_];
  }

  free(v2);
}

Swift::Void __swiftcall DOCOutlineHeaderView.addScrollInteraction()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithStyle_];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x150))(v1);
  v4 = (*((*v2 & *v0) + 0xC0))(v3);
  v5 = (*((*v2 & *v0) + 0x148))();
  if (v5)
  {
    [v4 addInteraction_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void DOCOutlineHeaderView.setSeparatorAppearance()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_metrics + 1);
  v2 = DOCOutlineHeaderView.topSeparator.getter();
  v3 = v2;
  if (v1 == 1)
  {
    v4 = _UISolariumEnabled();
    v5 = MEMORY[0x277D85000];
    if (v4 & 1) != 0 || ((*((*MEMORY[0x277D85000] & *v0) + 0x160))() & 1) == 0 || ((*((*v5 & *v0) + 0x118))())
    {
      v6 = 1;
    }

    else
    {
      v6 = (*((*v5 & *v0) + 0x1A0))();
    }

    [v3 setHidden_];

    v7 = DOCOutlineHeaderView.bottomSeparator.getter();
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if ((*((*v5 & *v0) + 0x160))())
      {
        v8 = 0;
        goto LABEL_15;
      }

      if ((*((*v5 & *v0) + 0x118))())
      {
        v8 = (*((*v5 & *v0) + 0x1B8))();
        goto LABEL_15;
      }
    }

    v8 = 1;
LABEL_15:
    [v7 setHidden_];

    [v0 setNeedsLayout];
    return;
  }

  [v2 setHidden_];

  v9 = DOCOutlineHeaderView.bottomSeparator.getter();
  [v9 setHidden_];
}

uint64_t DOCOutlineHeaderView.hideTopSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideTopSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*DOCOutlineHeaderView.hideTopSeparator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideTopSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCOutlineHeaderView.hideTopSeparator.modify;
}

uint64_t DOCOutlineHeaderView.hideSeparators.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideSeparators;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCOutlineHeaderView.hideTopSeparator.setter(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    DOCOutlineHeaderView.setSeparatorAppearance()();
  }
}

uint64_t (*DOCOutlineHeaderView.hideSeparators.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideSeparators;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCOutlineHeaderView.hideSeparators.modify;
}

void DOCOutlineHeaderView.hideTopSeparator.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCOutlineHeaderView.setSeparatorAppearance()();
  }

  free(v1);
}

void DOCOutlineHeaderView.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = &v48 - v5;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v52 = &v48 - v12;
  v13 = type metadata accessor for UICellConfigurationState();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCItemCollectionView();
  v17 = [v1 superview];
  if (v17)
  {
    v18 = v17;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v18 isKindOfClass_] & 1) == 0)
    {
      v20 = [v18 superview];

      v18 = v20;
      if (!v20)
      {
        return;
      }
    }

    v50 = [swift_dynamicCastClassUnconditional() doc_nearestAncestorViewController];

    if (v50)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = [v21 navigationController];

        if (v22)
        {
          v49 = v2;
          v23 = v56;
          v24 = *(v56 + 16);
          v25 = v13;
          v24(v16, v55, v13);
          UICellConfigurationState.isPinned.setter();
          if (_UISolariumEnabled())
          {
            (*(v23 + 8))(v16, v13);
          }

          else
          {
            v27 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView;
            if (*(v49 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView))
            {
              v28 = *(v49 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView);
              v29 = v28;
              v30 = v13;
              v32 = v53;
              v31 = v54;
              v33 = v52;
            }

            else
            {
              static UIBackgroundConfiguration.listHeader()();
              v57[3] = v13;
              v57[4] = MEMORY[0x277D74BA8];
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
              v24(boxed_opaque_existential_1, v16, v13);
              v33 = v52;
              UIBackgroundConfiguration.updated(for:)();
              v55 = v25;
              v32 = v53;
              v31 = v54;
              v50 = *(v53 + 8);
              (v50)(v9, v54);
              __swift_destroy_boxed_opaque_existential_0(v57);
              v35 = UIBackgroundConfiguration.visualEffect.getter();
              v36 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

              v37 = v36;
              v38 = [v22 navigationBar];
              v39 = [v38 _backdropViewLayerGroupName];

              [v37 _setGroupName_];
              (v50)(v33, v31);
              v40 = *(v49 + v27);
              *(v49 + v27) = v37;
              v29 = v37;

              v30 = v55;
              v28 = 0;
            }

            v41 = v28;
            static UIBackgroundConfiguration.clear()();
            v42 = v29;
            v43 = UIBackgroundConfiguration.customView.setter();
            v44 = v49;
            v45 = MEMORY[0x277D85000];
            (*((*MEMORY[0x277D85000] & *v49) + 0x1D0))(v43);
            UIBackgroundConfiguration.backgroundInsets.setter();
            v46 = v51;
            (*(v32 + 16))(v51, v33, v31);
            (*(v32 + 56))(v46, 0, 1, v31);
            v47 = MEMORY[0x24C1FBB40](v46);
            (*((*v45 & *v44) + 0x1E8))(v47);
            [v42 setAlpha_];

            (*(v32 + 8))(v33, v31);
            (*(v56 + 8))(v16, v30);
          }
        }
      }

      else
      {
        v26 = v50;
      }
    }
  }
}

double DOCOutlineHeaderView.backgroundTopExtension.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundTopExtension;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCOutlineHeaderView.backgroundTopExtension.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundTopExtension;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 setNeedsUpdateConfiguration];
  }
}

void (*DOCOutlineHeaderView.backgroundTopExtension.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundTopExtension;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.backgroundTopExtension.modify;
}

double DOCOutlineHeaderView.backgroundAlpha.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCOutlineHeaderView.backgroundAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t (*DOCOutlineHeaderView.backgroundAlpha.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundAlpha;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCOutlineHeaderView.backgroundAlpha.modify;
}

void DOCOutlineHeaderView.backgroundAlpha.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView);
    if (v5)
    {
      [v5 setAlpha_];
    }
  }

  free(v3);
}

Swift::Void __swiftcall DOCOutlineHeaderView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for DOCOutlineHeaderView();
  [(UICollectionViewLayoutAttributes *)&v23 applyLayoutAttributes:a1];
  type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
    v6 = a1;
    v7 = v5(&v18);
    v8 = v19;
    if (v19)
    {
      v10 = v21;
      v9 = v22;
      v11 = v20;
      v12 = v18;
      v13 = *((*v4 & *v1) + 0xC0);
      v14 = (v13)(v7);
      LOBYTE(v18) = v12 & 1;
      v15 = *v4 & *v14;
      v19 = v8;
      v20 = v11;
      v21 = v10;
      v22 = v9;
      (*(v15 + 1048))(&v18);

      v16 = outlined consume of OutlineColumnData?(v12, v8, v11, v10, v9);
      v17 = v13(v16);
      (*((*v4 & *v17) + 0x3E8))();
    }

    else
    {
    }
  }
}

id DOCOutlineHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void __swiftcall DOCOutlineHeaderView.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes *__return_ptr retstr, UICollectionViewLayoutAttributes *a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCOutlineHeaderView();
  v4 = [(UICollectionViewLayoutAttributes *)&v5 preferredLayoutAttributesFittingAttributes:a2];
  [v4 setZIndex_];
  [v4 setAlpha_];
}

CGSize __swiftcall DOCOutlineHeaderView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  height = _.height;
  width = _.width;
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(__PAIR128__(v6, *&_.width), __PAIR128__(v7, *&_.height), *&withHorizontalFittingPriority.rawValue, *&verticalFittingPriority.rawValue);
  [v8 systemLayoutSizeFittingSize_];
  v10 = v9;

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

Swift::Void __swiftcall DOCOutlineHeaderView.layoutSubviews()()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for DOCOutlineHeaderView();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  [v0 bounds];
  v48 = CGRectInset(v47, 0.0, 0.0);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v6 = [v0 safeAreaInsets];
  v8 = x + v7;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v6);
  [v10 setFrame_];

  v11 = *((*v9 & *v1) + 0xF0);
  v12 = v11();
  LOBYTE(v9) = (*((*v9 & *v12) + 0x100))();

  if ((v9 & 1) == 0)
  {
    v13 = v11();
    [v13 setFrame_];
  }

  v14 = DOCOutlineHeaderView.bottomSeparator.getter();
  [v14 intrinsicContentSize];

  v15 = DOCOutlineHeaderView.topSeparator.getter();
  [v15 isHidden];

  v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___bottomSeparator);
  [v1 bounds];
  CGRectGetHeight(v49);
  v50.origin.x = v8;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  CGRectGetWidth(v50);
  DOCGridLayout.specIconWidth.modify();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = objc_opt_self();
  if ([v25 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    v51.origin.x = v18;
    v51.origin.y = v20;
    v51.size.width = v22;
    v51.size.height = v24;
    v45 = y;
    MinX = CGRectGetMinX(v51);
    [v1 bounds];
    v44 = v8;
    v27 = height;
    v28 = width;
    v29 = MinX - CGRectGetMinX(v52);
    [v1 bounds];
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v18;
    v54.origin.y = v20;
    v54.size.width = v22;
    v54.size.height = v24;
    v31 = v29 + CGRectGetWidth(v54);
    width = v28;
    height = v27;
    v18 = MaxX - v31;
    v8 = v44;
    y = v45;
  }

  [v16 setFrame_];

  v32 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___topSeparator);
  v55.origin.x = v8;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  CGRectGetWidth(v55);
  DOCGridLayout.specIconWidth.modify();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if ([v25 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    v56.origin.x = v34;
    v56.origin.y = v36;
    v56.size.width = v38;
    v56.size.height = v40;
    v41 = CGRectGetMinX(v56);
    [v1 bounds];
    v42 = v41 - CGRectGetMinX(v57);
    [v1 bounds];
    v43 = CGRectGetMaxX(v58);
    v59.origin.x = v34;
    v59.origin.y = v36;
    v59.size.width = v38;
    v59.size.height = v40;
    v34 = v43 - (v42 + CGRectGetWidth(v59));
  }

  [v32 setFrame_];
}

void __swiftcall DOCOutlineHeaderView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for DOCOutlineHeaderView();
  v8 = [(UIView_optional *)&v18 hitTest:isa withEvent:x, y];
  if (![v3 pointInside:isa withEvent:{x, y}])
  {
    return;
  }

  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v3) + 0xC0))();
  v11 = (*((*v9 & *v10) + 0x298))();

  if (!v11)
  {
    __break(1u);
    return;
  }

  if (v8)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v12 = v8;
    v13 = static NSObject.== infix(_:_:)();

    v14 = v12;
    if (v13)
    {
      return;
    }

    if (!isa)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = [(objc_class *)isa type];
    if (v14 == 11)
    {
      return;
    }

    goto LABEL_9;
  }

  if (isa)
  {
    goto LABEL_8;
  }

LABEL_9:
  v15 = *((*v9 & *v4) + 0xF0);
  v16 = (v15)(v14);
  v17 = [v16 isUserInteractionEnabled];

  if (v17)
  {
    if (([v4 isHidden] & 1) == 0)
    {
      v15();
    }
  }
}

id UIViewWithDraggingStuff.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized UIViewWithDraggingStuff.touchesBegan(_:with:)(uint64_t a1)
{
  v2 = v1;
  v4 = specialized Collection.first.getter(a1);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 tapCount];

  if (v6 != 1)
  {
    return;
  }

  v7 = specialized Collection.first.getter(a1);
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 locationInView_];
  v10 = v9;

  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v10);
  (*((*v11 & *v2) + 0x108))(1);
  [v2 frame];
  v12 = (*((*v11 & *v2) + 0xD0))([v2 setFrame_]);
  [v12 invalidate];

  v13 = *((*v11 & *v2) + 0x88);
  if (v13())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*((*v11 & *v2) + 0xA0))();
    v17 = (*(v15 + 8))(ObjectType, v15);
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 255;
  }

  v20 = (*((*v11 & *v2) + 0xC0))(v17, v19);
  (*((*v11 & *v2) + 0xB8))(v20);
  if (v21)
  {
    v22 = (*((*v11 & *v2) + 0x120))(&outlined read-only object #2 of UIViewWithDraggingStuff.touchesBegan(_:with:));
    v23 = (v13)(v22);
    if (v23)
    {
      v25 = v24;
      v26 = swift_getObjectType();
      (*((*v11 & *v2) + 0xA0))();
      (*(v25 + 48))(v26, v25);
      v23 = swift_unknownObjectRelease();
    }

    goto LABEL_15;
  }

  v27 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:sel_beginColumnDrag selector:0 userInfo:0 repeats:0.3];
  v28 = (*((*v11 & *v2) + 0xD8))(v27);
  v29 = (*((*v11 & *v2) + 0xE8))(v28);
  if (v29)
  {
    v30 = v29;
    if ([v29 isValid])
    {
      (*((*v11 & *v2) + 0x120))(&outlined read-only object #0 of UIViewWithDraggingStuff.touchesBegan(_:with:));
      [v30 invalidate];

      goto LABEL_15;
    }
  }

  v23 = (*((*v11 & *v2) + 0x120))(&outlined read-only object #1 of UIViewWithDraggingStuff.touchesBegan(_:with:));
LABEL_15:
  if ((v13)(v23))
  {
    v32 = v31;
    v33 = swift_getObjectType();
    (*((*v11 & *v2) + 0xA0))();
    (*(v32 + 72))(v33, v32);

    swift_unknownObjectRelease();
  }
}

void specialized UIViewWithDraggingStuff.touchesEnded(_:with:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v3 = v2();
  v4 = specialized Sequence<>.contains(_:)(1u, v3);

  if (v4)
  {
    v5 = (*((*v1 & *v0) + 0xE8))(v5);
    if (v5)
    {
      v6 = v5;
      if ([v5 isValid])
      {
        if ((*((*v1 & *v0) + 0x88))())
        {
          v8 = v7;
          ObjectType = swift_getObjectType();
          (*((*v1 & *v0) + 0xA0))();
          (*(v8 + 24))(ObjectType, v8);
          swift_unknownObjectRelease();
        }

        [v6 invalidate];

        goto LABEL_10;
      }
    }
  }

  v10 = (v2)(v5);
  v11 = specialized Sequence<>.contains(_:)(0, v10);

  if (v11)
  {
    v12 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_singleTapHit selector:0 userInfo:0 repeats:0.25];
    (*((*v1 & *v0) + 0xF0))(v12);
  }

LABEL_10:

  UIViewWithDraggingStuff.finishedAnimation()();
}

void specialized UIViewWithDraggingStuff.touchesMoved(_:with:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized Collection.first.getter(a1);
  if (v3)
  {
    v4 = v3;
    [v3 locationInView_];
    v6 = v5;

    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v6);
    v9 = *((*v7 & *v2) + 0x118);
    v10 = v9(v8);
    v11 = specialized Sequence<>.contains(_:)(3u, v10);

    if (v11)
    {
      v12 = (*((*v7 & *v2) + 0x88))(v12);
      if (v12)
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        (*((*v7 & *v2) + 0xA0))();
        (*(v14 + 56))(ObjectType, v14);
        v12 = swift_unknownObjectRelease();
      }
    }

    v16 = v9(v12);
    v17 = specialized Sequence<>.contains(_:)(2u, v16);

    if (v17)
    {
      v19 = (*((*v7 & *v2) + 0xD0))(v18);
      if (v19)
      {
        v20 = v19;
        v21 = [v19 isValid];

        if ((v21 & 1) == 0)
        {
          if ((*((*v7 & *v2) + 0x88))())
          {
            v23 = v22;
            v24 = swift_getObjectType();
            (*((*v7 & *v2) + 0xA0))();
            (*(v23 + 40))(v24, v23);

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized UIViewWithDraggingStuff.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_currentTouchXLocation) = 0;
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startingLocation;
  *v1 = 0;
  *(v1 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_timer) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_singleTapTimer) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_startedGesture) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23UIViewWithDraggingStuff_eligibleTypes) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCOutlineHeaderView.init(coder:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_metrics;
  *(v2 + 8) = xmmword_249BBA7F0;
  *(v2 + 24) = xmmword_249BBA7F0;
  v3 = *(MEMORY[0x277D75060] + 16);
  *(v2 + 40) = *MEMORY[0x277D75060];
  *v2 = 256;
  *(v2 + 56) = v3;
  *(v2 + 72) = 0;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_basicLabel;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables10BasicLabelVGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables10BasicLabelVGMR));
  *(v0 + v4) = _UIHostingView.init(rootView:)();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_rowView;
  v7 = objc_allocWithZone(type metadata accessor for DOCItemRowView());
  *(v0 + v6) = DOCItemRowView.init(isHeader:)(1);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_viewWithDraggingStuff;
  *(v1 + v8) = [objc_allocWithZone(type metadata accessor for UIViewWithDraggingStuff()) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_isPinned) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___bottomSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_scrollPocketInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_displaySortButtons) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView____lazy_storage___topSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideTopSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_hideSeparators) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundTopExtension) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_backgroundAlpha) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCOutlineHeaderView_customBackgroundView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type OutlineGestureTypes and conformance OutlineGestureTypes()
{
  result = lazy protocol witness table cache variable for type OutlineGestureTypes and conformance OutlineGestureTypes;
  if (!lazy protocol witness table cache variable for type OutlineGestureTypes and conformance OutlineGestureTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineGestureTypes and conformance OutlineGestureTypes);
  }

  return result;
}

uint64_t DOCColumnViewController.containedItemCollectionViewControllers.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  v3 = v2;
  v13 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = (*((*v1 & *v9) + 0xE8))();

      if (v11)
      {
        break;
      }

LABEL_6:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_6;
    }

    MEMORY[0x24C1FB090]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = v13;
  }

  while (v6 != v5);
LABEL_23:

  return v7;
}

char *DOCColumnViewController.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized DOCColumnViewController.init(configuration:)(a1);

  return v4;
}

uint64_t DOCColumnLayout.shouldInvalidateLayout(forBoundsChange:)(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;

  if (v12 != a3 || v14 != a4)
  {
    return 1;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for DOCColumnLayout();
  return objc_msgSendSuper2(&v17, sel_shouldInvalidateLayoutForBoundsChange_, a1, a2, a3, a4);
}

id DOCColumnViewControllerCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCColumnViewControllerCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = type metadata accessor for DOCColumnViewControllerCollectionView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id DOCColumnViewControllerCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCColumnViewControllerCollectionView.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCColumnViewControllerCollectionView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id @objc DOCColumnLayout.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id DOCColumnLayout.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ScrollToItem.description.getter()
{
  _StringGuts.grow(_:)(25);

  type metadata accessor for IndexPath();
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x74616D696E61202CLL, 0xEB000000003D6465);
  v2 = type metadata accessor for ScrollToItem(0);
  v3 = *(v0 + *(v2 + 20)) == 0;
  if (*(v0 + *(v2 + 20)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x24C1FAEA0](v4, v5);

  return 0x7461507865646E69;
}

uint64_t one-time initialization function for DOCColumnViewControllerUpdatedNavigationItem()
{
  result = MEMORY[0x24C1FAD20](0xD00000000000002CLL, 0x8000000249BFAA90);
  static DOCColumnViewController.DOCColumnViewControllerUpdatedNavigationItem = result;
  return result;
}

id static DOCColumnViewController.DOCColumnViewControllerUpdatedNavigationItem.getter()
{
  if (one-time initialization token for DOCColumnViewControllerUpdatedNavigationItem != -1)
  {
    swift_once();
  }

  v1 = static DOCColumnViewController.DOCColumnViewControllerUpdatedNavigationItem;

  return v1;
}

uint64_t static DOCColumnViewController.supportsDisplayInTraitCollection(_:availableArea:)(void *a1, double a2, double a3)
{
  if ([a1 enclosedInUIPDocumentLanding])
  {
    return 0;
  }

  result = DOCUsePadIdiomForTraits();
  if (result)
  {
    if ([a1 horizontalSizeClass] != 2)
    {
      return 0;
    }

    specialized static DOCColumnWidth.layoutWidth(for:)(a1);
    v8 = v7;
    v9 = type metadata accessor for DOCColumnViewSpecs();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize];
    *v11 = a2;
    v11[1] = a3;
    *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth] = v8;
    v12.receiver = v10;
    v12.super_class = v9;

    return 1;
  }

  return result;
}

double DOCColumnViewController.containerControllers.setter(unint64_t a1)
{
  v3 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  swift_beginAccess();
  v4 = *(v1 + v3);

  DOCColumnViewController.containerControllers.willset(a1);
  *(v1 + v3) = a1;

  DOCColumnViewController.containerControllers.didset(v4);

  return result;
}

void DOCColumnViewController.containerControllers.willset(unint64_t a1)
{
  v3 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  swift_beginAccess();

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5(v4, a1);

  if (v5)
  {
    return;
  }

  v43 = a1;
  v44 = v1;
  v6 = *(v1 + v3);
  if (v6 >> 62)
  {
LABEL_36:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_17:

    v10 = 0;
LABEL_18:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BEDC80, &v45);
      _os_log_impl(&dword_2493AC000, v18, v19, "%s willSet new containers contain current responder. Do not resign responder", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = 0;
  v9 = MEMORY[0x277D85000];
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v10 = v11;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v13 = (*((*v9 & *v11) + 0xE8))();
    if (v13)
    {
      break;
    }

LABEL_7:

    ++v8;
    if (v12 == v7)
    {
      goto LABEL_17;
    }
  }

  v14 = v13;
  type metadata accessor for DOCItemCollectionViewController(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    v10 = v14;
    goto LABEL_7;
  }

  v16 = [v15 isFirstResponder];

  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  v23 = v10;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BEDC80, &v45);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v10;
    v29 = v23;
    _os_log_impl(&dword_2493AC000, v24, v25, "%s willSet found existing first responder: %@", v26, 0x16u);
    outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1FE850](v28, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  v45 = v23;
  MEMORY[0x28223BE20](v30, v31);
  v42[2] = &v45;
  v32 = v23;
  if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v42, v43))
  {

    goto LABEL_18;
  }

  v33 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BEDC80, &v45);
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v37 = v10;
    v39 = v33;
    _os_log_impl(&dword_2493AC000, v34, v35, "%s willSet new containers do not contain current responder, resigning from: %@", v36, 0x16u);
    outlined destroy of CharacterSet?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1FE850](v38, -1, -1);
    MEMORY[0x24C1FE850](v36, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v33;
  v41 = v33;
  specialized DOCColumnViewController.resignFocusOfContainers(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_23:
  DOCColumnViewController.clearContainerNavigationItem()();
}

void DOCColumnViewController.containerControllers.didset(unint64_t a1)
{
  v3 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  swift_beginAccess();

  LOBYTE(a1) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5(v4, a1);

  if ((a1 & 1) == 0)
  {
    v5 = *&v1[v3];
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      v8 = MEMORY[0x277D85000];
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C1FC540](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v5 + 8 * v7 + 32);
        }

        v10 = v11;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v13 = (*((*v8 & *v11) + 0xE8))();
        if (v13)
        {
          v14 = v13;
          type metadata accessor for DOCItemCollectionViewController(0);
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            (*((*v8 & *v15) + 0xBE0))(3);
            v9 = v14;
          }

          else
          {
            v9 = v10;
            v10 = v14;
          }
        }

        ++v7;
        if (v12 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_17:

    if ([v1 isViewLoaded])
    {

      DOCColumnViewController.updateSnapshot(newValue:)(v16);
    }

    else
    {
      v1[OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot] = 1;
    }
  }
}

void (*DOCColumnViewController.containerControllers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCColumnViewController.containerControllers.modify;
}

void DOCColumnViewController.containerControllers.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v5);
  if (a2)
  {

    DOCColumnViewController.containerControllers.willset(v3);
    *(v4 + v5) = v3;

    DOCColumnViewController.containerControllers.didset(v6);
  }

  else
  {

    DOCColumnViewController.containerControllers.willset(v3);
    *(v4 + v5) = v3;

    DOCColumnViewController.containerControllers.didset(v6);
  }

  free(v2);
}

double DOCColumnViewController.additionalLeadingNavigationBarButtonItems.didset()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((*v1 & *v0) + 0xC8))();
      (*((*v1 & *v7) + 0x1E0))(v9);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void (*DOCColumnViewController.additionalLeadingNavigationBarButtonItems.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCColumnViewController.additionalLeadingNavigationBarButtonItems.modify;
}

double DOCColumnViewController.additionalTrailingNavigationBarButtonItems.didset()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((*v1 & *v0) + 0xE0))();
      (*((*v1 & *v7) + 0x1F8))(v9);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t DOCColumnViewController.additionalLeadingNavigationBarButtonItems.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  *(v3 + v6) = a1;

  return a3(v7);
}

void (*DOCColumnViewController.additionalTrailingNavigationBarButtonItems.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCColumnViewController.additionalTrailingNavigationBarButtonItems.modify;
}

void DOCColumnViewController.additionalLeadingNavigationBarButtonItems.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

id DOCColumnViewController.configuration.getter()
{
  v1 = OBJC_IVAR___DOCColumnViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCColumnViewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCColumnViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DOCColumnViewController.updateContainerControllerProperties()()
{
  v1 = MEMORY[0x277D85000];
  v20 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v2 = v20();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((*v1 & *v0) + 0xC8))();
      (*((*v1 & *v7) + 0x1E0))(v9);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = (v20)(v10);
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = (*((*v1 & *v0) + 0xE0))();
      (*((*v1 & *v16) + 0x1F8))(v18);

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return result;
}

Swift::Void __swiftcall DOCColumnViewController.applyLocationChangeColumnHiding(after:)(DOCConcreteLocation *after)
{
  v60 = after;
  v56 = type metadata accessor for IndexPath();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v59 = &v50 - v8;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v7);
  v11 = v10;
  v12 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v55 = v12;
    v54 = v2;
    v58 = v1;
    v14 = 0;
    v61 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v14, v11);
      }

      else
      {
        if (v14 >= *(v61 + 16))
        {
          goto LABEL_57;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v12 = v15;
      v1 = v15;
      v16 = (*((*v9 & *v15) + 0xE8))();
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = v16;
      type metadata accessor for DOCItemCollectionViewController(0);
      v18 = swift_dynamicCastClass();
      if (!v18)
      {

        goto LABEL_18;
      }

      v19 = v18;
      v20 = (*((*v9 & *v18) + 0xC70))();
      if (v20)
      {
        v21 = v20;
        v22 = (*((*v9 & *v19) + 0xA68))();
        v23 = [v22 identifier];

        v1 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v23 node:v21];
        swift_unknownObjectRelease();
      }

      else
      {
        (*((*v9 & *v19) + 0xA50))(&v62);
        v67[2] = v64;
        v67[3] = v65;
        v67[4] = v66;
        v67[0] = v62;
        v67[1] = v63;
        v2 = *(&v63 + 1);
        v1 = *(&v63 + 1);
        outlined destroy of DOCItemCollectionConfiguration(v67);
        if (!v2)
        {

LABEL_17:
          goto LABEL_18;
        }
      }

      v24 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
      v25 = v1;
      v26 = v60;
      v1 = v24;
      v2 = static NSObject.== infix(_:_:)();

      v9 = MEMORY[0x277D85000];
      if (v2)
      {
        if (v55)
        {
          v28 = __CocoaSet.count.getter();
        }

        else
        {
          v28 = *(v61 + 16);
        }

        v29 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_65:
          __break(1u);
        }

        else
        {
          v12 = v28 - v29;
          v9 = v58;
          if (!__OFSUB__(v28, v29))
          {
            if (v12 < 1)
            {
              goto LABEL_63;
            }

            v30 = [v58 collectionView];
            if (v30)
            {
              v31 = v30;
              v1 = [v30 numberOfItemsInSection_];

              v32 = [v9 collectionView];
              if (v32)
              {
                v2 = v32;

                v33 = [v2 visibleCells];

                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
                v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                if (!(v9 >> 62))
                {
                  v60 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
                  v34 = v56;
                  if (!v60)
                  {
                    goto LABEL_63;
                  }

                  v35 = 0;
                  v11 = v9 & 0xC000000000000001;
                  v36 = v9 & 0xFFFFFFFFFFFFFF8;
                  v55 = (v54 + 4);
                  v37 = v1 - v12;
                  v38 = __OFSUB__(v1, v12);
                  v53 = v38;
                  ++v54;
                  v52 = v9 & 0xFFFFFFFFFFFFFF8;
                  v51 = v9 & 0xC000000000000001;
                  v50 = v9;
                  while (1)
                  {
                    if (v11)
                    {
                      v39 = MEMORY[0x24C1FC540](v35, v9);
                    }

                    else
                    {
                      if (v35 >= *(v36 + 16))
                      {
                        goto LABEL_59;
                      }

                      v39 = *(v9 + 8 * v35 + 32);
                    }

                    v40 = v39;
                    v12 = v35 + 1;
                    if (__OFADD__(v35, 1))
                    {
                      goto LABEL_58;
                    }

                    v41 = [v58 collectionView];
                    if (!v41)
                    {
                      __break(1u);
                      goto LABEL_69;
                    }

                    v2 = v41;
                    v1 = [v41 indexPathForCell_];

                    if (v1)
                    {
                      v61 = v35 + 1;
                      v2 = v57;
                      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

                      v1 = v59;
                      v12 = v34;
                      (*v55)(v59, v2, v34);
                      type metadata accessor for DOCColumnViewCell();
                      v42 = swift_dynamicCastClass();
                      if (v42)
                      {
                        v2 = v42;
                        v43 = v40;
                        v44 = IndexPath.item.getter();
                        if (v53)
                        {
                          __break(1u);
                          goto LABEL_65;
                        }

                        v1 = v44;
                        if (v44 >= v37)
                        {
                          v45 = 0.0;
                        }

                        else
                        {
                          v45 = 1.0;
                        }

                        [v43 setAlpha_];
                        v46 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
                        swift_beginAccess();
                        v47 = *(v2 + v46);
                        if (v47)
                        {
                          v48 = v1 < v37;
                          swift_endAccess();
                          v49 = *((*MEMORY[0x277D85000] & *v47) + 0x210);
                          v1 = v47;
                          v49(v48);
                          v2 = v56;

                          v34 = v2;
                          (*v54)(v59, v2);
                        }

                        else
                        {
                          (*v54)(v59, v34);
                          swift_endAccess();
                        }

                        v9 = v50;
                        v11 = v51;
                        v36 = v52;
                      }

                      else
                      {
                        (*v54)(v1, v34);
                      }

                      v12 = v61;
                    }

                    ++v35;
                    if (v12 == v60)
                    {
                      goto LABEL_63;
                    }
                  }
                }

LABEL_67:
                v60 = __CocoaSet.count.getter();
                goto LABEL_31;
              }
            }

            else
            {
LABEL_69:
              __break(1u);
            }

            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_18:
      v27 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      ++v14;
      if (v27 == i)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_63:
}

char *closure #1 in DOCColumnViewController.createDiffableDataSource(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BFA8C0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:isa];

  type metadata accessor for DOCColumnViewCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(v10);

    return v11;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *DOCColumnViewController.collectionView(_:columnCellForItemAt:)(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BFA8C0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  type metadata accessor for DOCColumnViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(v6);
    return v7;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void DOCColumnViewController.updateSnapshot(newValue:)(unint64_t a1)
{
  v2 = v1;
  v65 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v65, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMR);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v7);
  isEscapingClosureAtFileLocation = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v58 - v12;
  v14 = *(v1 + OBJC_IVAR___DOCColumnViewController_diffableDataSource);
  if (!v14)
  {
    return;
  }

  *(v1 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) = 0;
  v15 = v14;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  if (NSDiffableDataSourceSnapshot.numberOfSections.getter() != 1)
  {
LABEL_12:
    v19 = 0;
    if (!(a1 >> 62))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  aBlock = 0;
  v16 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  if (v16 >> 62)
  {
    v21 = v16;
    v22 = __CocoaSet.count.getter();
    v16 = v21;
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  for (i = *(v16 + 32); ; i = MEMORY[0x24C1FC540](0))
  {
    v18 = i;

    v19 = v18;
    if (a1 >> 62)
    {
LABEL_9:
      v20 = __CocoaSet.count.getter();
    }

    else
    {
LABEL_13:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v13;
    v62 = v6;
    v64 = v19;
    if (!v20)
    {
      v26 = v19 == 0;
      goto LABEL_27;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = isEscapingClosureAtFileLocation;
      v24 = MEMORY[0x24C1FC540](0, a1);
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v23 = isEscapingClosureAtFileLocation;
      v24 = *(a1 + 32);
      if (!v19)
      {
LABEL_23:
        if (v24)
        {

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_26;
      }
    }

    if (v24)
    {
      type metadata accessor for DOCBrowserContainerController();
      v25 = v64;
      v26 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v26 = 0;
    }

LABEL_26:
    isEscapingClosureAtFileLocation = v23;
LABEL_27:
    v27 = v26 ^ 1;
    type metadata accessor for DOCBrowserContainerController();
    _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DOCBrowserContainerController and conformance NSObject, type metadata accessor for DOCBrowserContainerController, MEMORY[0x277D85378]);
    NSDiffableDataSourceSnapshot.init()();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #0 of DOCColumnViewController.updateSnapshot(newValue:));
    aBlock = 0;
    LOBYTE(v67) = 1;
    v60 = v5;
    v28 = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    v5 = &v58;
    MEMORY[0x28223BE20](v28, v29);
    v6 = (&v58 - 6);
    *(&v58 - 32) = (v26 ^ 1) & 1;
    *(&v58 - 3) = v15;
    *(&v58 - 2) = isEscapingClosureAtFileLocation;
    v63 = isEscapingClosureAtFileLocation;
    *(&v58 - 1) = a1;
    v15 = v15;

    if (((v26 ^ 1) & 1) == 0 && [v2 doc_hasAppearedOrIsAppearing])
    {
      v30 = [v2 view];
      if (!v30)
      {
        goto LABEL_71;
      }

      v31 = v30;
      v32 = [v30 window];

      if (v32)
      {

        if (![v2 doc_isAppearing])
        {
          goto LABEL_50;
        }

        v33 = [v2 navigationController];
        if (!v33)
        {
          goto LABEL_50;
        }

        v34 = v33;
        v59 = v15;
        v35 = [v33 topViewController];
        if (!v35)
        {

          v15 = v59;
LABEL_50:
          closure #1 in DOCColumnViewController.updateSnapshot(newValue:)(v27 & 1, v15, v63, a1);

          goto LABEL_36;
        }

        v36 = v35;
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
        v58 = v2;
        v37 = static NSObject.== infix(_:_:)();

        v15 = v59;
        if ((v37 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    v38 = objc_opt_self();
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for closure #1 in DOCColumnViewController.updateSnapshot(newValue:);
    *(v39 + 24) = v6;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v6 + 24) = v39;
    v70 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v71 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = thunk for @escaping @callee_guaranteed () -> ();
    v69 = &block_descriptor_114_1;
    v40 = _Block_copy(&aBlock);
    v13 = v71;

    [v38 performWithoutAnimation_];
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_36:
    DOCColumnViewController.updateContainerControllerProperties()();
    DOCColumnViewController.updateContainerNavigationItem()();
    v41 = [v2 collectionView];
    if (!v41)
    {
      goto LABEL_55;
    }

    isEscapingClosureAtFileLocation = v41;
    v42 = [v41 preparedCells];
    if (!v42)
    {
      goto LABEL_70;
    }

    v43 = v42;
    v59 = v15;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = isEscapingClosureAtFileLocation;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_54;
      }

      goto LABEL_40;
    }

LABEL_53:
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      goto LABEL_54;
    }

LABEL_40:
    if (v15 >= 1)
    {
      break;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v44 = 0;
  a1 = v13 & 0xC000000000000001;
  do
  {
    if (a1)
    {
      v45 = MEMORY[0x24C1FC540](v44, v13);
    }

    else
    {
      v45 = *(v13 + 8 * v44 + 32);
    }

    v46 = v45;
    type metadata accessor for DOCColumnViewCell();
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
      v5 = v47;
      swift_beginAccess();
      v49 = *(v5 + v48);
      if (v49)
      {
        v5 = v49;
        UIViewController.traitOverrides.getter();
        UIMutableTraits.horizontalSizeClass.setter();
        UIViewController.traitOverrides.setter();
      }
    }

    ++v44;
  }

  while (v15 != v44);
LABEL_54:

  v15 = v59;
LABEL_55:
  DOCColumnViewController.invalidateCollectionViewLayoutIfNeeded()();
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x250))();
  DOCColumnViewController.updateFakeSeparator()();
  v50 = (*((*v13 & *v2) + 0xB0))();
  v6 = v50;
  if (v50 >> 62)
  {
    isEscapingClosureAtFileLocation = __CocoaSet.count.getter();
    if (!isEscapingClosureAtFileLocation)
    {
      goto LABEL_64;
    }
  }

  else
  {
    isEscapingClosureAtFileLocation = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!isEscapingClosureAtFileLocation)
    {
      goto LABEL_64;
    }
  }

  if (isEscapingClosureAtFileLocation < 1)
  {
    __break(1u);
    goto LABEL_67;
  }

  for (j = 0; j != isEscapingClosureAtFileLocation; ++j)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x24C1FC540](j, v6);
    }

    else
    {
      v52 = *(v6 + 8 * j + 32);
    }

    v53 = v52;
    (*((*v13 & *v52) + 0x1C0))(0);
  }

LABEL_64:

  v55 = (*((*v13 & *v2) + 0x260))(v54);
  (*((*v13 & *v2) + 0x238))(v55);

  v56 = *(v62 + 8);
  v57 = v60;
  v56(v61, v60);
  v56(v63, v57);
}

void adjustContentOffsetsIfNeeded #1 () in DOCColumnViewController.updateSnapshot(newValue:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v30 = v1;
    while (1)
    {
      if (v4)
      {
        v9 = MEMORY[0x24C1FC540](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v1 + 8 * v3 + 32);
      }

      v8 = v9;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = (*((*MEMORY[0x277D85000] & *v9) + 0xE8))();
      if (!v11)
      {
        goto LABEL_6;
      }

      v7 = v11;
      type metadata accessor for DOCItemCollectionViewController(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = MEMORY[0x277D85000];
        v14 = *((*MEMORY[0x277D85000] & *v12) + 0x1010);
        v15 = v14();
        v16 = (*((*v13 & *v15) + 0x138))();
        v18 = v17;

        v19 = v14();
        v20 = (*((*v13 & *v19) + 0x140))();
        v22 = v21;

        v23 = v14();
        [v23 contentOffset];
        v25 = v24;

        if (v22 < v25)
        {
          goto LABEL_16;
        }

        v26 = v14();
        [v26 contentOffset];
        v28 = v27;

        if (v28 < v18)
        {
          v20 = v16;
          v22 = v18;
LABEL_16:
          v29 = v14();
          [v29 setContentOffset_];
        }

        v1 = v30;
        v5 = v31;
        v4 = v32;
        goto LABEL_5;
      }

      v6 = v7;
      v7 = v8;
      v8 = v6;
LABEL_5:

LABEL_6:
      ++v3;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t closure #1 in DOCColumnViewController.updateSnapshot(newValue:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMR);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v14 - v11;
  (*(v8 + 16))(&v14 - v11, a3, v7, v10);
  *(swift_allocObject() + 16) = a4;

  if (a1)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
  }

  else
  {
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t DOCColumnViewController.notificationsController.getter()
{
  v1 = OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController;
  if (*(v0 + OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController))
  {
    v2 = *(v0 + OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC013DOCColumnViewF0CGMd, &_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC013DOCColumnViewF0CGMR);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *DOCColumnViewController.init(configuration:)(void *a1)
{
  v2 = specialized DOCColumnViewController.init(configuration:)(a1);

  return v2;
}

void closure #1 in DOCColumnViewController.init(configuration:)(void *a1)
{
  if ([a1 isViewLoaded])
  {
    Notification.object.getter();
    if (v11[3])
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCast())
      {
        v2 = v10;
        v3 = DOCColumnViewController.containedItemCollectionViewControllers.getter();
        v11[0] = v10;
        MEMORY[0x28223BE20](v3, v4);
        v9[2] = v11;
        v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v3);

        if (v5)
        {
          v7 = MEMORY[0x277D85000];
          v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x260))(v6);
          (*((*v7 & *a1) + 0x238))(v8);
        }
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v11, &_sypSgMd, &_sypSgMR);
    }
  }
}

void closure #2 in DOCColumnViewController.init(configuration:)(void *a1, uint64_t a2, uint64_t (*a3)(id *))
{
  if ([a1 isViewLoaded])
  {
    Notification.object.getter();
    if (v12[3])
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCast())
      {
        v5 = v11;
        v6 = DOCColumnViewController.containedItemCollectionViewControllers.getter();
        v12[0] = v11;
        MEMORY[0x28223BE20](v6, v7);
        v10[2] = v12;
        v8 = specialized Sequence.contains(where:)(a3, v10, v6);

        if (v8)
        {
          (*((*MEMORY[0x277D85000] & *a1) + 0x260))(v9);
        }
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v12, &_sypSgMd, &_sypSgMR);
    }
  }
}

uint64_t DOCColumnViewController.description.getter()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DOCColumnViewController(0);
  v1 = objc_msgSendSuper2(&v11, sel_description);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v12 = v2;
  v13 = v4;
  v5 = [v0 navigationItem];
  v6 = [v5 title];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x8000000249BFA940;
    v7 = 0xD00000000000001ALL;
  }

  MEMORY[0x24C1FAEA0](v7, v9);

  MEMORY[0x24C1FAEA0](34, 0xE100000000000000);
  MEMORY[0x24C1FAEA0](8736, 0xE200000000000000);

  return v12;
}

Swift::Void __swiftcall DOCColumnViewController.viewDidLoad()()
{
  v1 = v0;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for DOCColumnViewController(0);
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for DOCColumnViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BFA8C0);
    [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

    [v3 setAllowsSelection_];
    v6 = v3;
    v7 = 1;
    [v6 setAlwaysBounceHorizontal_];
    v8 = objc_opt_self();
    v9 = v6;
    v10 = [v8 clearColor];
    [v9 setBackgroundColor_];

    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      [v9 setPreservesSuperviewLayoutMargins_];
      v7 = 2;
    }

    [v9 setContentInsetAdjustmentBehavior_];

    v11 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
    v12 = DOCFocusGroupIdentifierBrowserFromConfiguration();

    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x24C1FAD20](v13);
    }

    [v9 setFocusGroupIdentifier_];

    [v9 setAllowsFocus_];
    v14 = [v9 subviews];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = MEMORY[0x277D84F90];
    if (v15 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v34 = v1;
      v17 = 0;
      v18 = v15 & 0xC000000000000001;
      v19 = v15 & 0xFFFFFFFFFFFFFF8;
      v1 = &selRef_removeFromSuperlayer;
      while (1)
      {
        if (v18)
        {
          v20 = MEMORY[0x24C1FC540](v17, v15);
        }

        else
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_20;
          }

          v20 = *(v15 + 8 * v17 + 32);
        }

        v21 = v20;
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSeparatorView, 0x277D063B8);
        if ([v21 isKindOfClass_])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 = v15 & 0xC000000000000001;
          v19 = v15 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v17;
        if (v22 == i)
        {
          v23 = v35;
          v1 = v34;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_23:

    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      goto LABEL_36;
    }

    for (j = *(v23 + 16); j; j = __CocoaSet.count.getter())
    {
      v25 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C1FC540](v25, v23);
        }

        else
        {
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_35;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 removeFromSuperview];

        ++v25;
        if (v28 == j)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_37:

    type metadata accessor for DOCColumnViewControllerCollectionView();
    swift_dynamicCastClassUnconditional();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in DOCColumnViewController.createDiffableDataSource(_:);
    *(v30 + 24) = v29;
    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMR));
    v32 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v33 = *(v1 + OBJC_IVAR___DOCColumnViewController_diffableDataSource);
    *(v1 + OBJC_IVAR___DOCColumnViewController_diffableDataSource) = v32;
  }

  if (*(v1 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) == 1)
  {
    DOCColumnViewController.updateContainerControllerProperties()();
    DOCColumnViewController.updateContainerNavigationItem()();
  }
}

Swift::Void __swiftcall DOCColumnViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DOCColumnViewController(0);
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1);
  v3 = [v1 collectionView];
  v4 = MEMORY[0x277D85000];
  if (v3)
  {
    v5 = v3;
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
    v7 = DOCFocusGroupIdentifierBrowserFromConfiguration();

    if (!v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = MEMORY[0x24C1FAD20](v8);
    }

    [v5 setFocusGroupIdentifier_];
  }

  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 setDelegate_];
  }

  v11 = (*((*v4 & *v1) + 0x250))();
  v12 = (*((*v4 & *v1) + 0x260))(v11);
  (*((*v4 & *v1) + 0x238))(v12);
}

void DOCColumnViewController.updateCellScrollPositionRelatedLayout()()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 preparedCells];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      if (v6 >= 1)
      {
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x24C1FC540](v7, v5);
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          type metadata accessor for DOCColumnViewCell();
          swift_dynamicCastClass();
        }

        while (v6 != v7);
        goto LABEL_13;
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

LABEL_13:
}

unint64_t DOCColumnViewController.shouldDisplayFullWidth(_:)(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
    result = 0;
    if (!(v2 >> 62))
    {
LABEL_3:
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_4;
      }

LABEL_12:

      return 0;
    }
  }

  v10 = result;
  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_12;
  }

  v11 = __CocoaSet.count.getter();
  result = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v2);
LABEL_7:
    v5 = v4;

    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x130))(v6);

    if (v8)
    {
      v9 = (*((*v7 & *v8) + 0x1F8))();

      return v9 & 1;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);

    v4 = v3;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void DOCColumnViewController.invalidateCollectionViewLayoutIfNeeded()()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v47 = [v0 collectionViewLayout];
  type metadata accessor for DOCColumnLayout();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    if (CGRectGetWidth(v50) > 0.0)
    {
      v14 = [v1 traitCollection];
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        v17 = &selRef__setLocationsInBrowseTab_;
        [v15 bounds];
        v19 = v18;
        v21 = v20;

        specialized static DOCColumnWidth.layoutWidth(for:)(v14);
        v23 = v22;
        v24 = type metadata accessor for DOCColumnViewSpecs();
        v25 = objc_allocWithZone(v24);
        v26 = &v25[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize];
        *v26 = v19;
        *(v26 + 1) = v21;
        *&v25[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth] = v23;
        v48.receiver = v25;
        v48.super_class = v24;
        v27 = objc_msgSendSuper2(&v48, sel_init);

        if (DOCColumnViewController.shouldDisplayFullWidth(_:)(0))
        {
          v28 = (*((*MEMORY[0x277D85000] & *v27) + 0x68))();

          v27 = v28;
        }

        v29 = OBJC_IVAR___DOCColumnViewController_columnViewSpecs;
        v30 = *&v1[OBJC_IVAR___DOCColumnViewController_columnViewSpecs];
        if (v30)
        {
          v31 = v27;
          v32 = v30;
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
LABEL_17:

            if ([v1 _appearState] == 2)
            {
              DOCColumnViewController.performPendingScrollToItem(immediate:)(0);
            }

            return;
          }

          v34 = *&v1[v29];
          v17 = &selRef__setLocationsInBrowseTab_;
        }

        else
        {
          v35 = v27;
          v34 = 0;
        }

        *&v1[v29] = v27;

        v36 = *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth);
        v31 = v47;
        v37 = [v1 view];
        if (v37)
        {
          v38 = v37;
          [v37 v17[152]];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v51.origin.x = v40;
          v51.origin.y = v42;
          v51.size.width = v44;
          v51.size.height = v46;
          [v3 setItemSize_];
          goto LABEL_17;
        }

LABEL_23:
        __break(1u);
        return;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }
}

void DOCColumnViewController.scrollToViewController(containerController:animated:completion:)(void *a1, int a2, void (*a3)(void, __n128), uint64_t a4)
{
  v5 = v4;
  v47 = a4;
  v51 = a3;
  v45 = a2;
  v7 = type metadata accessor for IndexPath();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v48 = &v43 - v12;
  v13 = type metadata accessor for ScrollToItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v43 - v25;
  v46 = [v5 doc_hasAppearedOrIsAppearing];
  v27 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v5 + v27, v26, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  if ((*(v14 + 48))(v26, 1, v13))
  {
    outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  }

  else
  {
    outlined init with copy of ScrollToItem(v26, v17, type metadata accessor for ScrollToItem);
    outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
    v28 = &v17[*(v13 + 24)];
    v30 = *v28;
    v29 = v28[1];
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v28, v29);
    outlined destroy of ScrollToItem(v17, type metadata accessor for ScrollToItem);
    if (v30)
    {
      v30(0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v30, v29);
    }
  }

  v31 = *(v14 + 56);
  v31(v21, 1, 1, v13);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v21, v5 + v27, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  swift_endAccess();
  if (!a1)
  {
    goto LABEL_8;
  }

  v32 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v33 = a1;
  v34 = v32();
  v35 = specialized Collection<>.firstIndex(of:)(v33, v34);
  v37 = v36;

  if (v37)
  {

LABEL_8:
    if (v51)
    {
      v51(0);
    }

    return;
  }

  v38 = v44;
  MEMORY[0x24C1F8100](v35, 0);
  (*(v49 + 32))(v48, v38, v50);
  v39 = 0;
  v40 = 0;
  v41 = v51;
  if (v46)
  {
    v40 = v47;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v51, v47);
    v39 = v41;
  }

  (*(v49 + 16))(v21, v48, v50);
  v21[*(v13 + 20)] = v45 & 1;
  v42 = &v21[*(v13 + 24)];
  *v42 = v39;
  *(v42 + 1) = v40;
  v31(v21, 0, 1, v13);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v21, v5 + v27, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  swift_endAccess();
  if (*(v5 + OBJC_IVAR___DOCColumnViewController_columnViewSpecs))
  {
    DOCColumnViewController.performPendingScrollToItem(immediate:)(1);
  }

  if ((v46 & 1) != 0 || !v41)
  {
    (*(v49 + 8))(v48, v50);
  }

  else
  {
    v41(0);

    (*(v49 + 8))(v48, v50);
  }
}

uint64_t DOCColumnViewController.performPendingScrollToItem(immediate:)(int a1)
{
  LODWORD(v61) = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v5);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveScrollItemContext(0);
  MEMORY[0x28223BE20](active, v7);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for ScrollToItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v58 = &v51 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v51 - v26;
  v28 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v28, v16, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  }

  outlined init with take of ActiveScrollItemContext(v16, v27, type metadata accessor for ScrollToItem);
  (*(v18 + 56))(v12, 1, 1, v17);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v12, v1 + v28, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables12ScrollToItem33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  swift_endAccess();
  v30 = [v1 collectionView];
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = v30;
  type metadata accessor for DOCColumnViewControllerCollectionView();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

LABEL_8:
    v43 = *&v27[*(v17 + 24)];
    if (v43)
    {
      v43(0);
    }

    v42 = type metadata accessor for ScrollToItem;
    v41 = v27;
    return outlined destroy of ScrollToItem(v41, v42);
  }

  v33 = v32;
  v34 = v62;
  outlined init with copy of ScrollToItem(v27, v62, type metadata accessor for ScrollToItem);
  *(v34 + *(active + 20)) = v33;
  v35 = v31;
  DOCColumnViewController.beginActiveScrollToItem(withContext:)(v34);
  v36 = v58;
  outlined init with copy of ScrollToItem(v27, v58, type metadata accessor for ScrollToItem);
  v37 = v60;
  outlined init with copy of ScrollToItem(v36, v60, type metadata accessor for ScrollToItem);
  v38 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  outlined init with take of ActiveScrollItemContext(v36, v39 + v38, type metadata accessor for ScrollToItem);
  *(v39 + ((v19 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  if (v61)
  {
    v40 = v35;
    closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)(v33, v37, v1);

    outlined destroy of ScrollToItem(v37, type metadata accessor for ScrollToItem);
    outlined destroy of ScrollToItem(v34, type metadata accessor for ActiveScrollItemContext);
    v41 = v27;
    v42 = type metadata accessor for ScrollToItem;
  }

  else
  {
    v44 = v1;
    v61 = type metadata accessor for ScrollToItem;
    outlined destroy of ScrollToItem(v37, type metadata accessor for ScrollToItem);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v45 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:);
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_105_2;
    v46 = _Block_copy(aBlock);

    v47 = v52;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v48 = v54;
    v49 = v27;
    v50 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v47, v48, v46);
    _Block_release(v46);

    (*(v56 + 8))(v48, v50);
    (*(v53 + 8))(v47, v55);
    outlined destroy of ScrollToItem(v34, type metadata accessor for ActiveScrollItemContext);
    v41 = v49;
    v42 = v61;
  }

  return outlined destroy of ScrollToItem(v41, v42);
}

void closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)(void *a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVySi26DocumentManagerExecutables29DOCBrowserContainerControllerCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v65 - v9;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 layoutAttributesForItemAtIndexPath_];

  if (v12)
  {
    if (!_UISolariumFeatureFlagEnabled())
    {
      [v12 frame];
      MaxX = CGRectGetMaxX(v68);
      [a1 visibleSize];
      v24 = MaxX - v23;
      if (v24 < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v24;
      }

      [a1 contentOffset];
      v27 = v26;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BFABD0);
      *v65 = v25;
      *&v65[1] = v27;
      type metadata accessor for CGPoint(0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](0x6574616D696E6120, 0xEA00000000003D64);
      v28 = type metadata accessor for ScrollToItem(0);
      v29 = *(a2 + *(v28 + 20));
      if (*(a2 + *(v28 + 20)))
      {
        v30 = 1702195828;
      }

      else
      {
        v30 = 0x65736C6166;
      }

      if (v29)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v30, v31);

      v32 = v66;
      v33 = v67;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.UI);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v32;
        v40 = v38;
        v66 = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v33, &v66);
        _os_log_impl(&dword_2493AC000, v35, v36, "[ScrollToItem] %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1FE850](v40, -1, -1);
        MEMORY[0x24C1FE850](v37, -1, -1);
      }

      [a1 setContentOffset:v29 animated:{v25, v27}];
      goto LABEL_24;
    }

    v13 = [a3 traitCollection];
    v14 = [v13 layoutDirection];

    if (v14 == 1)
    {
      v15 = *&a3[OBJC_IVAR___DOCColumnViewController_diffableDataSource];
      if (!v15)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v15;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v17 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*(v7 + 8))(v10, v6);
      if (v17 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 <= 2)
      {
        v41 = [a3 view];
        if (v41)
        {
          v42 = v41;
          [v41 bounds];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;

          v69.origin.x = v44;
          v69.origin.y = v46;
          v69.size.width = v48;
          v69.size.height = v50;
          Width = CGRectGetWidth(v69);
          v52 = [a3 collectionView];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 collectionViewLayout];

            [v54 collectionViewContentSize];
            v56 = v55;

            v57 = [a3 collectionView];
            if (v57)
            {
              v58 = v57;
              [v57 adjustedContentInset];
              v60 = v59;

              [a1 contentOffset];
              v62 = v61;
              v63 = [a3 collectionView];
              if (v63)
              {
                v64 = v63;
                [v63 setContentOffset:0 animated:{-(Width - v56 - v60), v62}];

                goto LABEL_24;
              }

LABEL_40:
              __break(1u);
              return;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v19 = [a3 collectionView];
    if (v19)
    {
      v20 = v19;
      v21 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v20 scrollToItemAtIndexPath:v21 atScrollPosition:8 animated:*(a2 + *(type metadata accessor for ScrollToItem(0) + 20))];

LABEL_24:
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_25:
  if (*(a2 + *(type metadata accessor for ScrollToItem(0) + 20)) != 1 || ([a1 isScrollAnimating] & 1) == 0)
  {
    DOCColumnViewController.finishActiveScrollToItem(didComplete:)(1);
  }
}

Swift::Void __swiftcall DOCColumnViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DOCColumnViewController(0);
  v5 = objc_msgSendSuper2(&v13, sel_setEditing_animated_, _, animated);
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0xB0))(v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v12 = v6;
  v7 = __CocoaSet.count.getter();
  v6 = v12;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v10 = MEMORY[0x24C1FC540](v9);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 8 * v9 + 32);
LABEL_8:
    v11 = v10;

    [v11 setEditing:_ animated:animated];

    return;
  }

  __break(1u);
}

double DOCColumnViewController.beginActiveScrollToItem(withContext:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  DOCColumnViewController.finishActiveScrollToItem(didComplete:)(0);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v20 = 0xD000000000000014;
  v21 = 0x8000000249BFAB90;
  v8 = ScrollToItem.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  v10 = v20;
  v9 = v21;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v20);
    _os_log_impl(&dword_2493AC000, v12, v13, "[ScrollToItem] %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  outlined init with copy of ScrollToItem(a1, v7, type metadata accessor for ActiveScrollItemContext);
  active = type metadata accessor for ActiveScrollItemContext(0);
  (*(*(active - 8) + 56))(v7, 0, 1, active);
  v17 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v7, v2 + v17, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  swift_endAccess();
  return result;
}

uint64_t DOCColumnViewController.finishActiveScrollToItem(didComplete:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - v10;
  active = type metadata accessor for ActiveScrollItemContext(0);
  v13 = *(active - 8);
  MEMORY[0x28223BE20](active, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v17, v11, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  if ((*(v13 + 48))(v11, 1, active) == 1)
  {
    return outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  }

  v36 = v7;
  outlined init with take of ActiveScrollItemContext(v11, v16, type metadata accessor for ActiveScrollItemContext);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v37 = 0xD000000000000013;
  v38 = 0x8000000249BFABB0;
  v19 = ScrollToItem.description.getter();
  MEMORY[0x24C1FAEA0](v19);

  v21 = v37;
  v20 = v38;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = v2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = v21;
    v29 = a1;
    v30 = v27;
    v37 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v20, &v37);
    _os_log_impl(&dword_2493AC000, v23, v24, "[ScrollToItem] %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v31 = v30;
    a1 = v29;
    MEMORY[0x24C1FE850](v31, -1, -1);
    v32 = v26;
    v2 = v35;
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  v33 = v36;
  (*(v13 + 56))(v36, 1, 1, active);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v33, v2 + v17, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMd, &_s26DocumentManagerExecutables23ActiveScrollItemContext33_4B25C1241B3CB7AF52EB95B520B0CFC5LLVSgMR);
  swift_endAccess();
  v34 = *&v16[*(type metadata accessor for ScrollToItem(0) + 24)];
  if (v34)
  {
    v34(a1 & 1);
  }

  return outlined destroy of ScrollToItem(v16, type metadata accessor for ActiveScrollItemContext);
}

void DOCColumnViewController.revealColumn(of:animated:)(uint64_t a1, int a2)
{
  v3 = v2;
  v28 = a2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v27[-v13];
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v2) + 0xB0))(v12);
  v17 = specialized Collection<>.firstIndex(of:)(a1, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    MEMORY[0x24C1F8100](v17, 0);
    (*(v6 + 32))(v14, v9, v5);
    v20 = [v3 collectionView];
    if (v20)
    {
      v21 = v20;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v21 layoutAttributesForItemAtIndexPath_];

      if (!v23)
      {
LABEL_8:
        (*(v6 + 8))(v14, v5);
        return;
      }

      v24 = [v3 collectionView];
      if (v24)
      {
        v25 = v24;
        [v23 frame];
        v26 = [v25 _isRectFullyVisible_];

        if (v26)
        {
          (*(v6 + 8))(v14, v5);

          return;
        }

        (*((*v15 & *v3) + 0x1F0))(a1, v28 & 1, 0, 0);

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall DOCColumnViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v5 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DOCColumnViewController(0);
  v22.receiver = v2;
  v22.super_class = v7;
  [(UIWindow_optional *)&v22 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    v8 = [v2 collectionView];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 preparedCells];
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = v10;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        v13 = __CocoaSet.count.getter();
        if (v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_6:
          if (v13 >= 1)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x24C1FC540](i, v12);
              }

              else
              {
                v15 = *(v12 + 8 * i + 32);
              }

              v16 = v15;
              type metadata accessor for DOCColumnViewCell();
              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
                v19 = v17;
                swift_beginAccess();
                v20 = *(v19 + v18);
                if (v20)
                {
                  v21 = v20;
                  UIViewController.traitOverrides.getter();
                  UIMutableTraits.horizontalSizeClass.setter();
                  UIViewController.traitOverrides.setter();
                }
              }
            }

            goto LABEL_16;
          }

          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }
      }

LABEL_16:
    }
  }
}

Swift::Void __swiftcall DOCColumnViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v3, v4);
  v5 = type metadata accessor for DOCColumnViewController(0);
  v20.receiver = v1;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, sel_traitCollectionDidChange_, isa);
  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 preparedCells];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_5:
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x24C1FC540](i, v10);
            }

            else
            {
              v13 = *(v10 + 8 * i + 32);
            }

            v14 = v13;
            type metadata accessor for DOCColumnViewCell();
            v15 = swift_dynamicCastClass();
            if (v15)
            {
              v16 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
              v17 = v15;
              swift_beginAccess();
              v18 = *(v17 + v16);
              if (v18)
              {
                v19 = v18;
                UIViewController.traitOverrides.getter();
                UIMutableTraits.horizontalSizeClass.setter();
                UIViewController.traitOverrides.setter();
              }
            }
          }

          goto LABEL_15;
        }

        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }
    }

LABEL_15:
  }
}

Swift::Void __swiftcall DOCColumnViewController.viewLayoutMarginsDidChange()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DOCColumnViewController(0);
  objc_msgSendSuper2(&v30, sel_viewLayoutMarginsDidChange);
  v29 = v0;
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 preparedCells];
    if (!v3)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
          v7 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x24C1FC540](v7, v5);
            }

            else
            {
              v9 = *(v5 + 8 * v7 + 32);
            }

            v8 = v9;
            type metadata accessor for DOCColumnViewCell();
            v10 = swift_dynamicCastClass();
            if (!v10)
            {
              goto LABEL_8;
            }

            v11 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
            v12 = v10;
            swift_beginAccess();
            v13 = *(v12 + v11);
            if (!v13)
            {
              break;
            }

            v14 = *((*MEMORY[0x277D85000] & *v13) + 0xE8);
            v15 = v13;
            v16 = v14();

            if (_UISolariumFeatureFlagEnabled())
            {
              goto LABEL_7;
            }

            if (v16)
            {
              v17 = [v16 view];
              if (!v17)
              {
                goto LABEL_26;
              }

              v18 = v17;
              v19 = [v29 view];
              if (!v19)
              {
                goto LABEL_25;
              }

              v20 = v19;
              [v19 layoutMargins];
              v22 = v21;
              v24 = v23;
              v26 = v25;
              v28 = v27;

              [v18 setLayoutMargins_];
            }

LABEL_8:
            ++v7;

            if (v6 == v7)
            {
              goto LABEL_22;
            }
          }

          if (!_UISolariumFeatureFlagEnabled())
          {
            goto LABEL_8;
          }

          v16 = 0;
LABEL_7:

          v8 = v16;
          goto LABEL_8;
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

LABEL_22:
  }
}

void DOCColumnViewController.applyLayoutMarginsTo(cell:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0xE8);
    v7 = v5;
    v8 = v6();

    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      if (!v8)
      {
        return;
      }

      v9 = [v8 view];
      if (v9)
      {
        v10 = v9;
        v11 = [v2 view];
        if (v11)
        {
          v12 = v11;
          [v11 layoutMargins];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          [v10 setLayoutMargins_];
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      return;
    }

    v8 = 0;
  }

LABEL_9:
}

void DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v4, v5);
  v6 = IndexPath.item.getter();
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v6 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x24C1FC540](v6, v8);
LABEL_5:
  v10 = v9;

  v11 = [v10 parentViewController];
  if (v11 && (v12 = v11, type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28), v13 = v1, v14 = static NSObject.== infix(_:_:)(), v13, v12, (v14 & 1) != 0) && (v15 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController, swift_beginAccess(), (v16 = *&a1[v15]) != 0) && (type metadata accessor for DOCBrowserContainerController(), v17 = v10, v18 = v16, v19 = static NSObject.== infix(_:_:)(), v17, v18, (v19 & 1) != 0))
  {
    (*((*v7 & *v17) + 0x1C0))(0);
  }

  else
  {
    [v10 doc:0 removeFromParentWithRemoveSubviewBlock:?];
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v10;
    aBlock[4] = partial apply for closure #1 in DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_151;
    v21 = _Block_copy(aBlock);
    v17 = v10;
    v22 = a1;

    [v2 doc:v17 addChildViewController:v21 addSubviewBlock:?];
    _Block_release(v21);
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (v24)
    {
      v25 = v24;
      UIViewController.traitOverrides.getter();
      UIMutableTraits.horizontalSizeClass.setter();
      UIViewController.traitOverrides.setter();
    }

    DOCColumnViewController.applyLayoutMarginsTo(cell:)(v22);
  }
}

Swift::Void __swiftcall DOCColumnViewController.updateMultiSelectEnabledOnColumns()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v3 = v2();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_39:
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_43;
    }
  }

  v6 = v4 & 0xC000000000000001;
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  v22 = v4;
  v8 = v4 + 32;
  while (1)
  {
    v10 = __OFSUB__(v5--, 1);
    if (v10)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v11 = MEMORY[0x24C1FC540](v5, v22);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v5 >= *(v7 + 16))
      {
        goto LABEL_38;
      }

      v11 = *(v8 + 8 * v5);
    }

    v24 = v11;
    v12 = (*((*v1 & *v11) + 0xE8))();
    if (v12)
    {
      break;
    }

    v9 = v24;
LABEL_5:

    if (!v5)
    {
      goto LABEL_43;
    }
  }

  v9 = v12;
  v4 = type metadata accessor for DOCItemCollectionViewController(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_5;
  }

  v13 = v2();
  v23 = v13;
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
LABEL_20:
      while (1)
      {
        v10 = __OFSUB__(v14--, 1);
        if (v10)
        {
          break;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x24C1FC540](v14, v23);
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v16 = *(v23 + 32 + 8 * v14);
        }

        v15 = v16;
        v17 = (*((*v1 & *v16) + 0xE8))();
        if (v17)
        {
          v18 = v17;
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            v4 = v19;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
            v2 = (static NSObject.== infix(_:_:)() & 1) != 0 ? (*((*v1 & *v4) + 0x1298))() : 0;
            v20 = (*((*v1 & *v4) + 0x1018))();
            if (v20)
            {
              v21 = v2 & 1;
              v2 = v20;
              [v20 setAllowsMultipleSelection_];
            }
          }

          v15 = v18;
        }

        if (!v14)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_20;
    }
  }

LABEL_42:

LABEL_43:
}

double DOCColumnViewController.clearContainerNavigationItem()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      (*((*v1 & *v6) + 0x240))(0);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void DOCColumnViewController.updateContainerNavigationItem()()
{
  v1 = v0;
  v2 = DOCColumnViewController.clearContainerNavigationItem()();
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v2);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (!__OFSUB__(v5--, 1))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v4);
LABEL_8:
        v8 = v7;
        v9 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_dataSource + 8];
        ObjectType = swift_getObjectType();
        if ((*(v9 + 24))(ObjectType, v9))
        {

          v11 = v8;
          v12 = [v1 navigationItem];
          (*((*MEMORY[0x277D85000] & *v11) + 0x240))(v12);

          goto LABEL_13;
        }

        if (!v5)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v4 + 32 + 8 * v5);
          goto LABEL_8;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:

  v11 = 0;
LABEL_13:
  v13 = [objc_opt_self() defaultCenter];
  v14 = v13;
  if (one-time initialization token for DOCColumnViewControllerUpdatedNavigationItem != -1)
  {
    swift_once();
    v13 = v14;
  }

  [v13 postNotificationName:static DOCColumnViewController.DOCColumnViewControllerUpdatedNavigationItem object:v1];
}

Swift::Void __swiftcall DOCColumnViewController.updateHighlightedHierarchy()()
{
  v37 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v1 = v37();
  specialized Collection.dropLast(_:)(1, v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = swift_unknownObjectRetain();
  v36 = (v7 >> 1) - v5;
  if (v7 >> 1 == v5)
  {
LABEL_2:
    v9 = swift_unknownObjectRelease();
    v8 = (v37)(v9);
    if (v8 >> 62)
    {
      goto LABEL_49;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_50;
    }

LABEL_4:
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      __break(1u);
    }

    else if ((v8 & 0xC000000000000001) == 0)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v8 + 8 * v12 + 32);
        goto LABEL_9;
      }

      __break(1u);
      return;
    }

    v13 = MEMORY[0x24C1FC540](v12);
LABEL_9:
    v14 = v13;

    type metadata accessor for DOCItemCollectionContainerDataSource();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(*v15 + 112);
      swift_unknownObjectRetain();
      v16(0);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_51;
  }

  v17 = 0;
  if (v5 <= (v7 >> 1))
  {
    v18 = v7 >> 1;
  }

  else
  {
    v18 = v5;
  }

  v35 = v18 - v5;
  v34 = v3 + 8 * v5;
  while (v35 != v17)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_45;
    }

    v22 = *(v34 + 8 * v17);
    type metadata accessor for DOCItemCollectionContainerDataSource();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      goto LABEL_43;
    }

    v24 = v23;
    v25 = v22;
    v26 = swift_unknownObjectRetain();
    v8 = (v37)(v26);
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v17 + 1, v8);

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v21 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v27 = *(v8 + 8 * v21 + 32);

      swift_unknownObjectRetain();
    }

    type metadata accessor for DOCItemInfoContainerDataSource();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = v28;
    v30 = *(v28 + 48);
    if (v30 >> 62)
    {
      if (__CocoaSet.count.getter() == 1)
      {
LABEL_28:
        v31 = *(v29 + 48);
        if (v31 >> 62)
        {
          v8 = __CocoaSet.count.getter();
          if (v8)
          {
LABEL_30:
            if ((v31 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();

              MEMORY[0x24C1FC540](0, v31);
            }

            else
            {
              if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }

              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
            }

            goto LABEL_17;
          }
        }

        else
        {
          v8 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_28;
    }

    swift_unknownObjectRetain();

LABEL_38:
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease_n();
      goto LABEL_51;
    }

    if (![*(v32 + 40) node])
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_43:
      swift_unknownObjectRelease();
      goto LABEL_51;
    }

LABEL_17:
    v19 = *(*v24 + 112);
    v20 = swift_unknownObjectRetain();
    v19(v20);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v8 = swift_unknownObjectRelease();
    if (v36 == ++v17)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v33 = v8;
  v10 = __CocoaSet.count.getter();
  v8 = v33;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_50:

LABEL_51:

  swift_unknownObjectRelease();
}

uint64_t DOCColumnViewController.handleLeftArrowNavigationFor(_:_:)(void *a1, uint64_t a2)
{
  v4 = specialized Collection.first.getter(a2);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 key];

    if (v6)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter() != 1)
        {
          goto LABEL_11;
        }
      }

      else if (*(a2 + 16) != 1)
      {
        goto LABEL_11;
      }

      if (![v6 modifierFlags] && objc_msgSend(v6, sel_keyCode) == 80 && ((*((*MEMORY[0x277D85000] & *a1) + 0x1448))() & 1) == 0)
      {
        v7 = 1;
        DOCItemCollectionViewController.clearFocus(removingLastColumn:)(1);
        goto LABEL_12;
      }

LABEL_11:
      v7 = 0;
LABEL_12:

      return v7;
    }
  }

  return 0;
}

Swift::Void __swiftcall DOCColumnViewController.updateFocusHierarchy()()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    goto LABEL_48;
  }

  v2 = v1;
  v3 = [v1 visibleCells];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    type metadata accessor for DOCColumnViewCell();
    if (swift_dynamicCastClass())
    {
      DOCColumnViewCell.updatePreferredFocusCell(_:)(0);
    }
  }

LABEL_13:

  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v27) + 0xB0);
  v12 = (v11)(v9);
  if (v12 >> 62)
  {
LABEL_44:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = (v11)(v14);
  v11 = v15;
  if (v13 >= 2)
  {
    v11 = specialized Sequence.dropLast(_:)(1, v15);
  }

  if (!(v11 >> 62))
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_40:

    return;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_40;
  }

LABEL_19:
  v17 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C1FC540](v17, v11);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:

        swift_unknownObjectRelease();
        goto LABEL_40;
      }
    }

    else
    {
      if (v17 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v18 = *(v11 + 8 * v17 + 32);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_32;
      }
    }

    v29 = v18;
    type metadata accessor for DOCItemCollectionContainerDataSource();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {

      v26 = v29;
      goto LABEL_36;
    }

    v21 = *(*v20 + 104);
    v22 = swift_unknownObjectRetain();
    if (!v21(v22))
    {
      goto LABEL_33;
    }

    swift_unknownObjectRelease();
    v23 = (*((*v10 & *v29) + 0xE8))();
    if (!v23)
    {
      goto LABEL_33;
    }

    v28 = v23;
    type metadata accessor for DOCItemCollectionViewController(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      break;
    }

    v25 = (*((*v10 & *v24) + 0xC98))();
    if (!v25)
    {

      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    [v27 setNeedsFocusUpdate];
    swift_unknownObjectRelease();

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_40;
    }
  }

  swift_unknownObjectRelease();

  v26 = v28;
LABEL_36:
}

unint64_t specialized Sequence.dropLast(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (a1)
  {
    v22 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v21 = 0;
      while (1)
      {
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x24C1FC540](v6, v2);
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_26;
            }

            v7 = *(v2 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v10 = v22;
          v11 = *(v22 + 16);
          if (v11 >= v3)
          {
            break;
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          if (v9 == v5)
          {
            goto LABEL_29;
          }
        }

        if (v21 >= v11)
        {
          break;
        }

        *(v22 + 8 * v21 + 32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v22);
          v22 = v10;
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_32;
        }

        v12 = v10 + 8 * v21;
        v13 = *(v12 + 32);
        *(v12 + 32) = v8;

        specialized ContiguousArray._endMutation()();
        if ((v21 + 1) < v3)
        {
          v14 = v21 + 1;
        }

        else
        {
          v14 = 0;
        }

        v21 = v14;
        v6 = v9;
        if (v9 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v15 = v23;

    return v15;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
LABEL_36:

    return MEMORY[0x277D84F90];
  }

  v18 = v17;
  v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5Tm(v17, 0);
  specialized Array._copyContents(initializing:)((v15 + 4), v18, v2);
  v20 = v19;

  if (v20 != v18)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v15;
}

uint64_t DOCColumnViewController.preferredFocusEnvironments.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    goto LABEL_11;
  }

  v5 = (v1)(v4);
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = (v1)(v7);
  v9 = v8;
  if (v6 < 2)
  {
    if (!(v8 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      return v9;
    }

    goto LABEL_23;
  }

  v10 = specialized Collection.dropFirst(_:)(1, v8);
  v0 = (v10 - v11);
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd, &_sSo18UIFocusEnvironment_pMR);
    v20 = _bridgeCocoaArray<A>(_:)();

    return v20;
  }

  v13 = v12;
  if (!v0)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_15:

    if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      return v9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd, &_sSo18UIFocusEnvironment_pMR);
    v20 = _bridgeCocoaArray<A>(_:)();

    return v20;
  }

  v14 = v10;
  v15 = v11;
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5Tm(v10 - v11, 0);
  v16 = specialized Slice._copyContents(initializing:)(&v21, (v9 + 32), v0, v14, v15, v13);

  if (v16 == v0)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_11:
  v17 = type metadata accessor for DOCColumnViewController(0);
  v22.receiver = v0;
  v22.super_class = v17;
  v18 = objc_msgSendSuper2(&v22, sel_preferredFocusEnvironments);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd, &_sSo18UIFocusEnvironment_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t DOCColumnViewController.showsHierarchyIndicator.getter()
{
  v1 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCColumnViewController.showsHierarchyIndicator.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCColumnViewController.updateFakeSeparator()();
  }
}

void (*DOCColumnViewController.showsHierarchyIndicator.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCColumnViewController.showsHierarchyIndicator.modify;
}

void DOCColumnViewController.showsHierarchyIndicator.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCColumnViewController.updateFakeSeparator()();
  }

  free(v1);
}

void DOCColumnViewController.updateFakeSeparator()()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v60 = v2;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x268))())
  {
    [v60 contentOffset];
    if (v3 < 0.0)
    {
      v4 = OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator;
      v5 = *&v1[OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator];
      if (v5)
      {
        v6 = *&v1[OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator];
        v7 = v6;
      }

      else
      {
        v7 = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
        v6 = 0;
        v5 = *&v1[v4];
      }

      *&v1[v4] = v7;
      v12 = v7;
      v13 = v6;

      v11 = v12;
      [v11 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = objc_opt_self();
      v21 = [v1 traitCollection];
      [v20 separatorThicknessForTraitCollection_];
      v23 = v22;

      v24 = [v1 view];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 effectiveUserInterfaceLayoutDirection];

        v27 = 0.0;
        if (v26 == 1)
        {
          v28 = [v1 collectionView];
          if (!v28)
          {
LABEL_35:
            __break(1u);
            return;
          }

          v29 = v28;
          [v28 frame];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          v62.origin.x = v31;
          v62.origin.y = v33;
          v62.size.width = v35;
          v62.size.height = v37;
          MaxX = CGRectGetMaxX(v62);
          v63.origin.x = v15;
          v63.origin.y = v17;
          v63.size.width = v23;
          v63.size.height = v19;
          v27 = MaxX - CGRectGetWidth(v63);
        }

        v39 = [v1 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 frame];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v64.origin.x = v42;
          v64.origin.y = v44;
          v64.size.width = v46;
          v64.size.height = v48;
          MinY = CGRectGetMinY(v64);
          v50 = [v1 collectionView];
          if (v50)
          {
            v51 = v50;
            [v50 frame];
            v53 = v52;

            [v11 setFrame_];
            [v11 setHidden_];
            v54 = [v11 superview];

            v55 = [v1 collectionView];
            v56 = v55;
            if (v54)
            {
              if (v55)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
                v57 = static NSObject.== infix(_:_:)();

                if (v57)
                {
                  goto LABEL_27;
                }

LABEL_25:
                v58 = [v1 collectionView];
                if (v58)
                {
                  v59 = v58;
                  [v58 addSubview_];

                  goto LABEL_27;
                }

                goto LABEL_34;
              }

              v56 = v54;
            }

            else if (!v55)
            {
              goto LABEL_27;
            }

            goto LABEL_25;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  v8 = OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator;
  v9 = *&v1[OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator];
  if (v9)
  {
    [v9 setHidden_];
    v10 = *&v1[v8];
    if (v10)
    {
      v11 = v10;
      [v11 removeFromSuperview];
LABEL_27:
    }
  }
}

unint64_t DOCColumnViewController.canLoadAdditionalParents()()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  v11 = result;
  v3 = __CocoaSet.count.getter();
  result = v11;
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v6 = MEMORY[0x24C1FC540](v5);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v5 + 32);
LABEL_8:
    v7 = v6;

    v9 = (*((*v1 & *v7) + 0x188))(v8);
    if (v9)
    {
      v10 = [v9 canLoadAdditionalParents];
      swift_unknownObjectRelease();

      return v10;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void DOCColumnViewController.beginLoadingAdditionalParents()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
  if (v2 >> 62)
  {
    v10 = v2;
    v3 = __CocoaSet.count.getter();
    v2 = v10;
    if (v3)
    {
LABEL_3:
      v4 = __OFSUB__(v3, 1);
      v5 = v3 - 1;
      if (v4)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v2 + 8 * v5 + 32);
          goto LABEL_8;
        }

        __break(1u);
        return;
      }

      v6 = MEMORY[0x24C1FC540](v5);
LABEL_8:
      v11 = v6;

      v7 = (*((*v1 & *v11) + 0x188))();
      if (v7)
      {
        v8 = v7;
        aBlock[4] = DOCGridLayout.specIconWidth.modify;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor_99_0;
        v9 = _Block_copy(aBlock);
        [v8 beginLoadingAdditionalParents_];
        _Block_release(v9);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

id DOCColumnViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id DOCColumnViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall DOCColumnViewController.removeChildViewController(_:)(UIViewController *a1)
{
  v46.receiver = v1;
  v46.super_class = type metadata accessor for DOCColumnViewController(0);
  v45 = a1;
  [(UIViewController *)&v46 removeChildViewController:a1];
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preparedCells];
    if (!v5)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v6 = v5;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_5:
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = v7 & 0xC000000000000001;
          v44 = v8;
          while (1)
          {
            if (v10)
            {
              v11 = MEMORY[0x24C1FC540](v9, v7);
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            type metadata accessor for DOCColumnViewCell();
            v13 = swift_dynamicCastClass();
            if (!v13)
            {
              goto LABEL_8;
            }

            v14 = v13;
            v15 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
            swift_beginAccess();
            v16 = *&v14[v15];
            if (!v16)
            {
              goto LABEL_8;
            }

            type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
            v17 = v16;
            v18 = v45;
            v19 = static NSObject.== infix(_:_:)();

            if ((v19 & 1) == 0 || (v20 = *&v14[v15], *&v14[v15] = 0, !v20))
            {
              v10 = v7 & 0xC000000000000001;
              goto LABEL_8;
            }

            v21 = v20;
            v22 = [v21 viewIfLoaded];
            v23 = [v22 superview];

            v24 = [v14 contentView];
            v25 = v24;
            if (v23)
            {
              break;
            }

            v27 = v21;
            if (!v24)
            {
              goto LABEL_21;
            }

LABEL_23:

LABEL_24:
            v28 = *&v14[v15];
            if (v28)
            {
              v29 = v28;
              v30 = [v14 contentView];
              v31 = v29;
              v32 = [v31 view];
              if (!v32)
              {
                goto LABEL_35;
              }

              v33 = v32;
              [v30 addSubview_];

              v34 = [v31 &selRef_variant];
              if (!v34)
              {
                goto LABEL_34;
              }

              v35 = [v14 contentView];
              [v35 bounds];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              [v34 setFrame_];
              DOCColumnViewCell.updateSeparatorView()();
              DOCColumnViewCell.updatePreferredFocusCell(_:)(0);

              v12 = v21;
            }

            else
            {
              v31 = v21;
            }

            v12 = v31;
            v8 = v44;
            v10 = v7 & 0xC000000000000001;
LABEL_8:
            ++v9;

            if (v8 == v9)
            {
              goto LABEL_31;
            }
          }

          if (!v24)
          {
            v27 = v21;
            v25 = v23;
            goto LABEL_23;
          }

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
          v26 = static NSObject.== infix(_:_:)();

          v25 = v21;
          if ((v26 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_21:
          v25 = v21;
          [v25 doc:0 removeFromParentWithRemoveSubviewBlock:?];
          v27 = [v25 viewIfLoaded];

          [v27 removeFromSuperview];
          goto LABEL_23;
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_31:
  }
}

void closure #1 in DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v6 = *(a2 + v5);
  *(a2 + v5) = a3;
  v7 = a3;
  DOCColumnViewCell.browserContainerController.didset(v6);
}

Swift::Int __swiftcall DOCColumnViewController.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0xB0))(_, numberOfItemsInSection);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

void DOCColumnViewController.getTransitionController(forURL:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v6 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v7 = _bridgeCocoaArray<A>(_:)();

    v6 = v7;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v7 = v6;
  }

  type metadata accessor for DOCTransitionableProxy();
  v8 = swift_allocObject();
  v8[2] = v6;
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v18);
    _os_log_impl(&dword_2493AC000, v11, v12, "[Presentation Error] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

LABEL_10:
  URL._bridgeToObjectiveC()(v9);
  v16 = v15;
  v18[4] = a2;
  v18[5] = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
  v18[3] = &block_descriptor_10_2;
  v17 = _Block_copy(v18);

  [v8 getTransitionControllerForURL:v16 completionBlock:v17];
  _Block_release(v17);
}

double DOCColumnViewController.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v8 = _bridgeCocoaArray<A>(_:)();

    v7 = v8;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v8 = v7;
  }

  type metadata accessor for DOCTransitionableProxy();
  v9 = swift_allocObject();
  v9[2] = v7;
  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v17);
    _os_log_impl(&dword_2493AC000, v11, v12, "[Presentation Error] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

LABEL_10:
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
  v17[3] = &block_descriptor_13_6;
  v15 = _Block_copy(v17);

  [v9 getTransitionControllerForItem:a1 completionBlock:v15];
  _Block_release(v15);

  return result;
}

double DOCColumnViewController.getPopoverTracker(for:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v8 = _bridgeCocoaArray<A>(_:)();

    v7 = v8;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v8 = v7;
  }

  type metadata accessor for DOCTransitionableProxy();
  v9 = swift_allocObject();
  v9[2] = v7;
  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v17);
    _os_log_impl(&dword_2493AC000, v11, v12, "[Presentation Error] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

LABEL_10:
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
  v17[3] = &block_descriptor_16_5;
  v15 = _Block_copy(v17);

  [v9 getPopoverTrackerForItem:a1 completionBlock:v15];
  _Block_release(v15);

  return result;
}

double @objc DOCColumnViewController.getTransitionController(forItem:completionBlock:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

double DOCColumnViewController.getView(for:waitForNewThumbnail:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0xB0))();
  if (v9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v10 = _bridgeCocoaArray<A>(_:)();

    v9 = v10;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v10 = v9;
  }

  type metadata accessor for DOCTransitionableProxy();
  v11 = swift_allocObject();
  v11[2] = v9;
  if (v9 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v19);
    _os_log_impl(&dword_2493AC000, v13, v14, "[Presentation Error] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

LABEL_10:
  v19[4] = a3;
  v19[5] = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
  v19[3] = &block_descriptor_19_11;
  v17 = _Block_copy(v19);

  [v11 getViewFor_waitForNewThumbnail:a1 :{a2 & 1, v17}];
  _Block_release(v17);

  return result;
}

double DOCColumnViewController.getCell(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v8 = _bridgeCocoaArray<A>(_:)();

    v7 = v8;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v8 = v7;
  }

  type metadata accessor for DOCTransitionableProxy();
  v9 = swift_allocObject();
  v9[2] = v7;
  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v17);
    _os_log_impl(&dword_2493AC000, v11, v12, "[Presentation Error] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

LABEL_10:
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
  v17[3] = &block_descriptor_22_3;
  v15 = _Block_copy(v17);

  [v9 getCellFor:a1 :v15];
  _Block_release(v15);

  return result;
}

void DOCColumnViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = (*((*MEMORY[0x277D85000] & *v4) + 0xB0))();
  if (v8 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTransitionable_pMd, &_s26DocumentManagerExecutables17DOCTransitionable_pMR);
    v9 = _bridgeCocoaArray<A>(_:)();

    v8 = v9;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v9 = v8;
  }

  type metadata accessor for DOCTransitionableProxy();
  v10 = swift_allocObject();
  v10[2] = v8;
  if (v8 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, v18);
    _os_log_impl(&dword_2493AC000, v12, v13, "[Presentation Error] %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18[4] = a3;
  v18[5] = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_25_6;
  v17 = _Block_copy(v18);

  [v10 revealWithNodes:isa selectEvenIfVisible:a2 & 1 completionBlock:v17];
  _Block_release(v17);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC22UniformTypeIdentifiers6UTTypeV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v4 = *(type metadata accessor for UTType() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0L0V5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0H0V5valuetGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0H0V5valuetGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuetGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuetGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables15USBFormatOptionO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15USBFormatOptionOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15USBFormatOptionOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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

uint64_t *specialized Slice._copyContents(initializing:)(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
LABEL_17:
    v17 = a4;
LABEL_20:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v17;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v18 = a3;
    v19 = result;
    v9 = 0;
    v10 = a6 & 0xC000000000000001;
    v11 = a6 & 0xFFFFFFFFFFFFFF8;
    v12 = a4 - a5;
    v13 = a3 - 1;
    v20 = a6;
    v14 = a6 + 8 * a4 + 24;
    v15 = 1;
    while (1)
    {
      if (!(v12 + v9))
      {
        v17 = a5;
        a3 = a4 - a5;
        result = v19;
        a6 = v20;
        goto LABEL_20;
      }

      if (a4 + v9 <= a5)
      {
        break;
      }

      result = (a4 + v9 - 1);
      if (v10)
      {
        result = MEMORY[0x24C1FC540](result, v20);
      }

      else
      {
        if (a4 + v9 < 1)
        {
          goto LABEL_22;
        }

        if (result >= *(v11 + 16))
        {
          goto LABEL_23;
        }

        result = *(v14 + 8 * v9);
      }

      *v8 = result;
      if (!(v13 + v9))
      {
        v17 = a4 + v9 - 1;
        result = v19;
        a6 = v20;
        a3 = v18;
        goto LABEL_20;
      }

      ++v8;
      --v9;
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

void specialized DOCColumnViewController.resignFocusOfContainers(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v43 = &v39 - v8;
  v44 = a1;
  if (a1 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = v44 & 0xC000000000000001;
    v12 = MEMORY[0x277D85000];
    v13 = &selRef_initWithFrame_;
    v40 = v44 & 0xC000000000000001;
    v41 = v9;
    do
    {
      if (v11)
      {
        v14 = MEMORY[0x24C1FC540](v10, v44, v7);
      }

      else
      {
        v14 = *(v44 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = *((*v12 & *v14) + 0xE8);
      v17 = v16();
      if (v17)
      {
        v18 = v17;
        type metadata accessor for DOCItemCollectionViewController(0);
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = 0;
      }

      [v19 v13[298]];

      v20 = v16();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for DOCItemCollectionViewController(0);
        v22 = swift_dynamicCastClass();
        v12 = MEMORY[0x277D85000];
        if (v22)
        {
          v23 = (*((*MEMORY[0x277D85000] & *v22) + 0x1010))();

          v24 = type metadata accessor for IndexPath();
          v25 = v43;
          v26 = (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
          v27 = *((*v12 & *v23) + 0xF0);
          v28 = (v27)(v26);
          v29 = v42;
          outlined init with copy of DOCGridLayout.Spec?(v25, v42, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          (*(*v28 + 112))(v29);

          v30 = outlined destroy of CharacterSet?(v25, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          v31 = (v27)(v30);
          LOBYTE(v25) = (*(*v31 + 152))(v31);

          if (v25)
          {
            v12 = MEMORY[0x277D85000];
            if ((*((*MEMORY[0x277D85000] & *v23) + 0xD8))(v32))
            {
              v34 = v33;
              ObjectType = swift_getObjectType();
              v36 = v27();
              v37 = v43;
              (*(*v36 + 104))(v36);

              v38 = ObjectType;
              v12 = MEMORY[0x277D85000];
              (*(v34 + 16))(v23, &protocol witness table for DOCItemCollectionView, v37, v38, v34);

              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v37, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            }

            else
            {
            }

            v11 = v40;
            v9 = v41;
          }

          else
          {

            v11 = v40;
            v9 = v41;
            v12 = MEMORY[0x277D85000];
          }

          v13 = &selRef_initWithFrame_;
        }

        else
        {
        }
      }

      else
      {

        v12 = MEMORY[0x277D85000];
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = __CocoaSet.count.getter();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = __CocoaSet.count.getter();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    type metadata accessor for DOCBrowserContainerController();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v7);
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}