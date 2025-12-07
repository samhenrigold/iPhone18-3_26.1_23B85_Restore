unint64_t sub_1002249E0()
{
  result = qword_10034E590;
  if (!qword_10034E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E590);
  }

  return result;
}

unint64_t sub_100224A34()
{
  result = qword_10034E598;
  if (!qword_10034E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E598);
  }

  return result;
}

unint64_t sub_100224A88()
{
  result = qword_10034E5A0;
  if (!qword_10034E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5A0);
  }

  return result;
}

unint64_t sub_100224ADC()
{
  result = qword_10034E5A8;
  if (!qword_10034E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5A8);
  }

  return result;
}

unint64_t sub_100224B30()
{
  result = qword_10034E5F8;
  if (!qword_10034E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5F8);
  }

  return result;
}

unint64_t sub_100224B84()
{
  result = qword_10034E600;
  if (!qword_10034E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E600);
  }

  return result;
}

unint64_t sub_100224BD8()
{
  result = qword_10034E610;
  if (!qword_10034E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E610);
  }

  return result;
}

unint64_t sub_100224C2C()
{
  result = qword_10034E618;
  if (!qword_10034E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E618);
  }

  return result;
}

unint64_t sub_100224C80()
{
  result = qword_10034E620;
  if (!qword_10034E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E620);
  }

  return result;
}

unint64_t sub_100224CD4()
{
  result = qword_10034E628;
  if (!qword_10034E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E628);
  }

  return result;
}

unint64_t sub_100224D28()
{
  result = qword_10034E630;
  if (!qword_10034E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E630);
  }

  return result;
}

unint64_t sub_100224D7C()
{
  result = qword_10034E638;
  if (!qword_10034E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E638);
  }

  return result;
}

unint64_t sub_100224DD0()
{
  result = qword_10034E670;
  if (!qword_10034E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E670);
  }

  return result;
}

unint64_t sub_100224E24()
{
  result = qword_10034E678;
  if (!qword_10034E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E678);
  }

  return result;
}

unint64_t sub_100224E78()
{
  result = qword_10034E680;
  if (!qword_10034E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E680);
  }

  return result;
}

unint64_t sub_100224ECC()
{
  result = qword_10034E690;
  if (!qword_10034E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E690);
  }

  return result;
}

unint64_t sub_100224F20()
{
  result = qword_10034E698;
  if (!qword_10034E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E698);
  }

  return result;
}

unint64_t sub_100224F74()
{
  result = qword_10034E6A8;
  if (!qword_10034E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6A8);
  }

  return result;
}

unint64_t sub_100224FC8()
{
  result = qword_10034E6B8;
  if (!qword_10034E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6B8);
  }

  return result;
}

uint64_t sub_10022501C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819042147 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001002A6670 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100225184(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100035D04(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000EBC0(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  sub_10000903C(a1);
  return v11;
}

unint64_t sub_100225374()
{
  result = qword_10034E6D0;
  if (!qword_10034E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6D0);
  }

  return result;
}

unint64_t sub_1002253C8()
{
  result = qword_10034E6E8;
  if (!qword_10034E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6E8);
  }

  return result;
}

unint64_t sub_10022541C()
{
  result = qword_10034E700;
  if (!qword_10034E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E700);
  }

  return result;
}

unint64_t sub_100225470()
{
  result = qword_10034E730;
  if (!qword_10034E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E730);
  }

  return result;
}

unint64_t sub_1002254C4()
{
  result = qword_10034E738;
  if (!qword_10034E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E738);
  }

  return result;
}

unint64_t sub_100225518()
{
  result = qword_10034E740;
  if (!qword_10034E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E740);
  }

  return result;
}

unint64_t sub_10022556C()
{
  result = qword_10034E748;
  if (!qword_10034E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E748);
  }

  return result;
}

uint64_t sub_1002255E0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100225654();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100225654()
{
  result = qword_10034E7F8;
  if (!qword_10034E7F8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034E7F8);
  }

  return result;
}

unint64_t sub_1002257B8()
{
  result = qword_10034E828;
  if (!qword_10034E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E828);
  }

  return result;
}

unint64_t sub_100225810()
{
  result = qword_10034E830;
  if (!qword_10034E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E830);
  }

  return result;
}

unint64_t sub_100225868()
{
  result = qword_10034E838;
  if (!qword_10034E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E838);
  }

  return result;
}

unint64_t sub_1002258C0()
{
  result = qword_10034E840;
  if (!qword_10034E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E840);
  }

  return result;
}

unint64_t sub_100225918()
{
  result = qword_10034E848;
  if (!qword_10034E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E848);
  }

  return result;
}

unint64_t sub_100225970()
{
  result = qword_10034E850;
  if (!qword_10034E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E850);
  }

  return result;
}

unint64_t sub_1002259C8()
{
  result = qword_10034E858;
  if (!qword_10034E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E858);
  }

  return result;
}

unint64_t sub_100225A20()
{
  result = qword_10034E860;
  if (!qword_10034E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E860);
  }

  return result;
}

unint64_t sub_100225A78()
{
  result = qword_10034E868;
  if (!qword_10034E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E868);
  }

  return result;
}

unint64_t sub_100225AD0()
{
  result = qword_10034E870;
  if (!qword_10034E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E870);
  }

  return result;
}

unint64_t sub_100225B28()
{
  result = qword_10034E878;
  if (!qword_10034E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E878);
  }

  return result;
}

unint64_t sub_100225B80()
{
  result = qword_10034E880;
  if (!qword_10034E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E880);
  }

  return result;
}

unint64_t sub_100225BD8()
{
  result = qword_10034E888;
  if (!qword_10034E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E888);
  }

  return result;
}

unint64_t sub_100225C30()
{
  result = qword_10034E890;
  if (!qword_10034E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E890);
  }

  return result;
}

unint64_t sub_100225C88()
{
  result = qword_10034E898;
  if (!qword_10034E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E898);
  }

  return result;
}

unint64_t sub_100225CE0()
{
  result = qword_10034E8A0;
  if (!qword_10034E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8A0);
  }

  return result;
}

unint64_t sub_100225D38()
{
  result = qword_10034E8A8;
  if (!qword_10034E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8A8);
  }

  return result;
}

unint64_t sub_100225D90()
{
  result = qword_10034E8B0;
  if (!qword_10034E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8B0);
  }

  return result;
}

unint64_t sub_100225DE8()
{
  result = qword_10034E8B8;
  if (!qword_10034E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8B8);
  }

  return result;
}

unint64_t sub_100225E40()
{
  result = qword_10034E8C0;
  if (!qword_10034E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8C0);
  }

  return result;
}

unint64_t sub_100225E98()
{
  result = qword_10034E8C8;
  if (!qword_10034E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8C8);
  }

  return result;
}

unint64_t sub_100225EF0()
{
  result = qword_10034E8D0;
  if (!qword_10034E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8D0);
  }

  return result;
}

unint64_t sub_100225F48()
{
  result = qword_10034E8D8;
  if (!qword_10034E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8D8);
  }

  return result;
}

unint64_t sub_100225FA0()
{
  result = qword_10034E8E0;
  if (!qword_10034E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8E0);
  }

  return result;
}

unint64_t sub_100225FF8()
{
  result = qword_10034E8E8;
  if (!qword_10034E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8E8);
  }

  return result;
}

unint64_t sub_100226050()
{
  result = qword_10034E8F0;
  if (!qword_10034E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8F0);
  }

  return result;
}

unint64_t sub_1002260A8()
{
  result = qword_10034E8F8;
  if (!qword_10034E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8F8);
  }

  return result;
}

unint64_t sub_100226100()
{
  result = qword_10034E900;
  if (!qword_10034E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E900);
  }

  return result;
}

unint64_t sub_100226158()
{
  result = qword_10034E908;
  if (!qword_10034E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E908);
  }

  return result;
}

unint64_t sub_1002261B0()
{
  result = qword_10034E910;
  if (!qword_10034E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E910);
  }

  return result;
}

unint64_t sub_100226208()
{
  result = qword_10034E918;
  if (!qword_10034E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E918);
  }

  return result;
}

unint64_t sub_100226260()
{
  result = qword_10034E920;
  if (!qword_10034E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E920);
  }

  return result;
}

unint64_t sub_1002262B8()
{
  result = qword_10034E928;
  if (!qword_10034E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E928);
  }

  return result;
}

unint64_t sub_100226310()
{
  result = qword_10034E930;
  if (!qword_10034E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E930);
  }

  return result;
}

unint64_t sub_100226368()
{
  result = qword_10034E938;
  if (!qword_10034E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E938);
  }

  return result;
}

unint64_t sub_1002263C0()
{
  result = qword_10034E940;
  if (!qword_10034E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E940);
  }

  return result;
}

unint64_t sub_100226418()
{
  result = qword_10034E948;
  if (!qword_10034E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E948);
  }

  return result;
}

unint64_t sub_100226470()
{
  result = qword_10034E950;
  if (!qword_10034E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E950);
  }

  return result;
}

unint64_t sub_1002264C8()
{
  result = qword_10034E958;
  if (!qword_10034E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E958);
  }

  return result;
}

unint64_t sub_100226520()
{
  result = qword_10034E960;
  if (!qword_10034E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E960);
  }

  return result;
}

unint64_t sub_100226578()
{
  result = qword_10034E968;
  if (!qword_10034E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E968);
  }

  return result;
}

unint64_t sub_1002265D0()
{
  result = qword_10034E970;
  if (!qword_10034E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E970);
  }

  return result;
}

unint64_t sub_100226628()
{
  result = qword_10034E978;
  if (!qword_10034E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E978);
  }

  return result;
}

unint64_t sub_100226680()
{
  result = qword_10034E980;
  if (!qword_10034E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E980);
  }

  return result;
}

unint64_t sub_1002266D8()
{
  result = qword_10034E988;
  if (!qword_10034E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E988);
  }

  return result;
}

unint64_t sub_100226730()
{
  result = qword_10034E990;
  if (!qword_10034E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E990);
  }

  return result;
}

unint64_t sub_100226788()
{
  result = qword_10034E998;
  if (!qword_10034E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E998);
  }

  return result;
}

unint64_t sub_1002267E0()
{
  result = qword_10034E9A0;
  if (!qword_10034E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9A0);
  }

  return result;
}

unint64_t sub_100226838()
{
  result = qword_10034E9A8;
  if (!qword_10034E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9A8);
  }

  return result;
}

unint64_t sub_100226890()
{
  result = qword_10034E9B0;
  if (!qword_10034E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9B0);
  }

  return result;
}

unint64_t sub_1002268E8()
{
  result = qword_10034E9B8;
  if (!qword_10034E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9B8);
  }

  return result;
}

unint64_t sub_100226940()
{
  result = qword_10034E9C0;
  if (!qword_10034E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9C0);
  }

  return result;
}

unint64_t sub_100226998()
{
  result = qword_10034E9C8;
  if (!qword_10034E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9C8);
  }

  return result;
}

uint64_t sub_1002269EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100226B00()
{
  result = qword_10034E9F0;
  if (!qword_10034E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9F0);
  }

  return result;
}

unint64_t sub_100226B54()
{
  result = qword_10034E9F8;
  if (!qword_10034E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9F8);
  }

  return result;
}

unint64_t sub_100226BA8()
{
  result = qword_10034EA00;
  if (!qword_10034EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA00);
  }

  return result;
}

unint64_t sub_100226BFC()
{
  result = qword_10034EA08;
  if (!qword_10034EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA08);
  }

  return result;
}

unint64_t sub_100226C94()
{
  result = qword_10034EA38;
  if (!qword_10034EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA38);
  }

  return result;
}

unint64_t sub_100226CEC()
{
  result = qword_10034EA40;
  if (!qword_10034EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA40);
  }

  return result;
}

unint64_t sub_100226D44()
{
  result = qword_10034EA48;
  if (!qword_10034EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA48);
  }

  return result;
}

unint64_t sub_100226D9C()
{
  result = qword_10034EA50;
  if (!qword_10034EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA50);
  }

  return result;
}

unint64_t sub_100226DF4()
{
  result = qword_10034EA58;
  if (!qword_10034EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA58);
  }

  return result;
}

unint64_t sub_100226E4C()
{
  result = qword_10034EA60;
  if (!qword_10034EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA60);
  }

  return result;
}

unint64_t sub_100226EA4()
{
  result = qword_10034EA68;
  if (!qword_10034EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA68);
  }

  return result;
}

unint64_t sub_100226EFC()
{
  result = qword_10034EA70;
  if (!qword_10034EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA70);
  }

  return result;
}

unint64_t sub_100226F54()
{
  result = qword_10034EA78;
  if (!qword_10034EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA78);
  }

  return result;
}

unint64_t sub_100226FAC()
{
  result = qword_10034EA80;
  if (!qword_10034EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA80);
  }

  return result;
}

unint64_t sub_100227004()
{
  result = qword_10034EA88;
  if (!qword_10034EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA88);
  }

  return result;
}

uint64_t sub_10022707C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034EA90);
  sub_100003078(v0, qword_10034EA90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002270FC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    sub_100035D04(&qword_10034EBD0, qword_100291448);
    sub_100227B48();
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 48) = v1;
  }

  return v1;
}

void *sub_100227194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  sub_100035D04(&qword_10034EBD0, qword_100291448);
  swift_allocObject();
  v2[5] = PassthroughSubject.init()();
  v2[6] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034EA90);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t sub_1002272C4()
{
  v1 = v0;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034EA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1002273CC()
{
  sub_1002272C4();

  return swift_deallocClassInstance();
}

void sub_100227424(uint64_t a1)
{
  v2 = v1;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034EA90);
  sub_10007E790(a1, v21);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    sub_10000903C(v21);
    if (*(v2 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_10007E790(a1, v21);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = objc_allocWithZone(type metadata accessor for PCViewServiceHandle());
    v17 = sub_10009D944(0xD000000000000012, 0x80000001002A6730, v21, sub_10001C2E0, v15);
    sub_10009DD84();
    v18 = *(v2 + 16);
    *(v2 + 16) = v17;

    return;
  }

  v7 = swift_slowAlloc();
  v20[0] = swift_slowAlloc();
  *v7 = 136315394;
  *(v7 + 4) = sub_100017494(0x28746E6573657270, 0xEE00293A68746977, v20);
  *(v7 + 12) = 2080;
  sub_10007E790(v21, &v19);
  sub_100035D04(&qword_10034EBC8, &qword_100291440);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  sub_10000903C(v21);
  v11 = sub_100017494(v8, v10, v20);

  *(v7 + 14) = v11;
  _os_log_impl(&_mh_execute_header, v5, v6, "%s: context=%s", v7, 0x16u);
  swift_arrayDestroy();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_5:
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "### Present attempted while already active?", v14, 2u);
  }
}

double sub_100227814()
{
  v1 = v0;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034EA90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v15);
    *(v5 + 12) = 2080;
    v6 = *(v1 + 16);
    if (v6)
    {
      type metadata accessor for PCViewServiceHandle();
      v7 = v6;
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_100017494(v8, v10, v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.handle=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = v12;
    sub_10009DBD8();

    v12 = *(v1 + 16);
  }

  *(v1 + 16) = 0;

  swift_beginAccess();
  *(v1 + 56) = &_swiftEmptySetSingleton;

  return result;
}

unint64_t sub_100227A30()
{
  v1 = v0;
  _StringGuts.grow(_:)(29);

  v3 = *(v0 + 24);
  v2 = *(v1 + 32);

  sub_10000B584(8, v3, v2);

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000001ALL;
}

unint64_t sub_100227B48()
{
  result = qword_10034EBD8;
  if (!qword_10034EBD8)
  {
    sub_100035D4C(&qword_10034EBD0, qword_100291448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EBD8);
  }

  return result;
}

uint64_t sub_100227BC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034EBE0);
  sub_100003078(v0, qword_10034EBE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100227C44()
{
  type metadata accessor for ScreenOnMonitor();
  v0 = swift_allocObject();
  result = sub_100227C80();
  qword_10038B5D8 = v0;
  return result;
}

uint64_t sub_100227C80()
{
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v2 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 40) = v2;
  v3 = qword_1003391E8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];

  v5 = *(v0 + 40);
  v16 = sub_100228128;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_100314AA0;
  v6 = _Block_copy(&v12);
  v7 = v5;

  [v7 setScreenStateChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 40);
  v16 = sub_100228120;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_100314AC8;
  v9 = _Block_copy(&v12);

  v10 = v8;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);

  return v0;
}

uint64_t sub_100227E9C()
{
  [*(v0 + 40) invalidate];

  return swift_deallocClassInstance();
}

double sub_100227F10()
{
  v1 = v0;
  v2 = [*(v0 + 40) screenState];
  v3 = v2;
  v5 = v2 == 40 || v2 == 30;
  if (qword_100339260 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034EBE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = 0xE300000000000000;
    v12 = 6710895;
    if (v3 == 40)
    {
      v12 = 28271;
      v11 = 0xE200000000000000;
    }

    if (v3 == 30)
    {
      v13 = 28271;
    }

    else
    {
      v13 = v12;
    }

    if (v3 == 30)
    {
      v14 = 0xE200000000000000;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_100017494(v13, v14, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Screen state updated: %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  v17 = *(v1 + 16);
  if (v5 != *(v17 + 24))
  {
    if (v3 == 40 || v3 == 30)
    {
      v18 = mach_continuous_time();
      v19 = 0;
      v17 = *(v1 + 16);
    }

    else
    {
      v18 = 0;
      v19 = 1;
    }

    *(v1 + 24) = v18;
    *(v1 + 32) = v19;
    *(v17 + 24) = v5;

    sub_10005E50C();
    v21 = *(v17 + 24);
    CurrentValueSubject.send(_:)();
  }

  return result;
}

unint64_t sub_100228134()
{
  result = qword_10034ECE8;
  if (!qword_10034ECE8)
  {
    sub_100035D4C(&qword_10034ECF0, &qword_100291558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ECE8);
  }

  return result;
}

uint64_t sub_100228198()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      _StringGuts.grow(_:)(22);

      v5._countAndFlagsBits = v1;
      v5._object = v2;
      String.append(_:)(v5);
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0xD000000000000012;
    }

    else
    {
      v12 = *(v0 + 32) | *(v0 + 40) | *(v0 + 48);
      if (v4 | v2 | v1 | v3 | v12)
      {
        v13 = v4 | v2 | v3 | v12;
        if (v1 != 1 || v13)
        {
          if (v1 != 2 || v13)
          {
            if (v1 != 3 || v13)
            {
              if (v1 != 4 || v13)
              {
                return 0xD000000000000014;
              }

              else
              {
                return 0xD00000000000001DLL;
              }
            }

            else
            {
              return 0x65746E6573657270;
            }
          }

          else
          {
            return 0x69746E6573657270;
          }
        }

        else
        {
          return 0x646564616F6CLL;
        }
      }

      else
      {
        return 0x6574736575716572;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    strcpy(v16, "failed( error=");
    HIBYTE(v16[1]) = -18;
    sub_1002283FC();
    LocalizedError.errorDescription.getter();
    if (v8)
    {
      v9 = String.init<A>(describing:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v14 = v11;
    String.append(_:)(*&v9);

    v15._countAndFlagsBits = 10528;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    return v16[0];
  }
}

unint64_t sub_1002283FC()
{
  result = qword_10034ED18;
  if (!qword_10034ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED18);
  }

  return result;
}

uint64_t sub_100228450(void *a1)
{
  v2 = v1;
  v52 = sub_100035D04(&qword_10034EDB0, &qword_100291768);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - v4;
  v49 = sub_100035D04(&qword_10034EDB8, &qword_100291770);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v46 - v5;
  v6 = sub_100035D04(&qword_10034EDC0, &qword_100291778);
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = &v46 - v7;
  v55 = sub_100035D04(&qword_10034EDC8, &qword_100291780);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v8;
  v58 = sub_100035D04(&qword_10034EDD0, &qword_100291788);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v46 - v9;
  v10 = sub_100035D04(&qword_10034EDD8, &qword_100291790);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v46 - v11;
  v12 = sub_100035D04(&qword_10034EDE0, &qword_100291798);
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v59 = &v46 - v13;
  v14 = sub_100035D04(&qword_10034EDE8, &qword_1002917A0);
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v46 - v15;
  v81 = sub_100035D04(&qword_10034EDF0, &qword_1002917A8);
  v71 = *(v81 - 8);
  __chkstk_darwin(v81);
  v17 = &v46 - v16;
  sub_10000EBC0(a1, a1[3]);
  sub_10022A4D0();
  v72 = v17;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v2;
  v18 = v2[1];
  v21 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v23 = v2[5];
  v24 = v2[6];
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      LOBYTE(v73) = 5;
      sub_10022A5CC();
      v25 = v68;
      v26 = v81;
      v27 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v70;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v69 + 8))(v25, v28);
      return (*(v71 + 8))(v27, v26);
    }

    v32 = v22 | v23 | v24;
    if (v21 | v18 | v19 | v20 | v32)
    {
      v33 = v21 | v18 | v20 | v32;
      if (v19 != 1 || v33)
      {
        if (v19 != 2 || v33)
        {
          if (v19 != 3 || v33)
          {
            if (v19 != 4 || v33)
            {
              LOBYTE(v73) = 7;
              sub_10022A524();
              v45 = v50;
              v35 = v81;
              v36 = v72;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v40 = *(v51 + 8);
              v41 = v45;
              v42 = &v82;
            }

            else
            {
              LOBYTE(v73) = 6;
              sub_10022A578();
              v44 = v47;
              v35 = v81;
              v36 = v72;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v40 = *(v48 + 8);
              v41 = v44;
              v42 = &v80;
            }
          }

          else
          {
            LOBYTE(v73) = 4;
            sub_10022A620();
            v43 = v53;
            v35 = v81;
            v36 = v72;
            KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v40 = *(v54 + 8);
            v41 = v43;
            v42 = &v83;
          }
        }

        else
        {
          LOBYTE(v73) = 3;
          sub_10022A674();
          v39 = v56;
          v35 = v81;
          v36 = v72;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = *(v57 + 8);
          v41 = v39;
          v42 = &v84;
        }

        v40(v41, *(v42 - 32));
        return (*(v71 + 8))(v36, v35);
      }

      LOBYTE(v73) = 1;
      sub_10022A71C();
      v34 = v59;
      v35 = v81;
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v60;
      v37 = v61;
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_10022A770();
      v34 = v62;
      v35 = v81;
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v63;
      v37 = v64;
    }

    (*(v38 + 8))(v34, v37);
    return (*(v71 + 8))(v36, v35);
  }

  LOBYTE(v73) = 2;
  sub_10022A6C8();
  v30 = v65;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v73 = v19;
  v74 = v18;
  v75 = v21;
  v76 = v20;
  v77 = v22;
  v78 = v23;
  v79 = v24;
  sub_10010B950();
  v31 = v67;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v66 + 8))(v30, v31);
  return (*(v71 + 8))(v72, v81);
}

unint64_t sub_100228D54()
{
  v1 = *v0;
  v2 = 0x6574736575716572;
  v3 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x65746E6573657270;
  if (v1 != 4)
  {
    v4 = 0x657373696D736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x69746E6573657270;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100228E4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100229470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100228E74(uint64_t a1)
{
  v2 = sub_10022A4D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228EB0(uint64_t a1)
{
  v2 = sub_10022A4D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228EEC(uint64_t a1)
{
  v2 = sub_10022A578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228F28(uint64_t a1)
{
  v2 = sub_10022A578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228F64(uint64_t a1)
{
  v2 = sub_10022A524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228FA0(uint64_t a1)
{
  v2 = sub_10022A524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228FDC(uint64_t a1)
{
  v2 = sub_10022A5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229018(uint64_t a1)
{
  v2 = sub_10022A5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229054(uint64_t a1)
{
  v2 = sub_10022A6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229090(uint64_t a1)
{
  v2 = sub_10022A6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002290CC(uint64_t a1)
{
  v2 = sub_10022A71C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229108(uint64_t a1)
{
  v2 = sub_10022A71C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229144(uint64_t a1)
{
  v2 = sub_10022A620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229180(uint64_t a1)
{
  v2 = sub_10022A620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002291BC(uint64_t a1)
{
  v2 = sub_10022A674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002291F8(uint64_t a1)
{
  v2 = sub_10022A674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229234(uint64_t a1)
{
  v2 = sub_10022A770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229270(uint64_t a1)
{
  v2 = sub_10022A770();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1002292AC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100229720(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100229324(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v4 != 3 || v17)
        {
          if (v4 != 4 || v17)
          {
            if (v2 != 2 || v6 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v6 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100229470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001002A67C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A67A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100229720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_100035D04(&qword_10034ED20, &qword_100291718);
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v84 = &v62 - v4;
  v79 = sub_100035D04(&qword_10034ED28, &qword_100291720);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v62 - v5;
  v78 = sub_100035D04(&qword_10034ED30, &qword_100291728);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v87 = &v62 - v6;
  v74 = sub_100035D04(&qword_10034ED38, &qword_100291730);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = &v62 - v7;
  v70 = sub_100035D04(&qword_10034ED40, &qword_100291738);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v82 = &v62 - v8;
  v73 = sub_100035D04(&qword_10034ED48, &qword_100291740);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v85 = &v62 - v9;
  v69 = sub_100035D04(&qword_10034ED50, &qword_100291748);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v11 = &v62 - v10;
  v12 = sub_100035D04(&qword_10034ED58, &qword_100291750);
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_100035D04(&qword_10034ED60, &unk_100291758);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - v17;
  v19 = a1[3];
  v101 = a1;
  sub_10000EBC0(a1, v19);
  sub_10022A4D0();
  v20 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = v20;
  if (v20)
  {
    return sub_10000903C(v101);
  }

  v64 = v14;
  v63 = v12;
  v65 = v11;
  v23 = v85;
  v22 = v86;
  v24 = v87;
  v25 = v88;
  v89 = v16;
  v66 = v18;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v97 = v26;
  v98 = v26 + 32;
  v99 = 0;
  v100 = v27;
  v28 = sub_100218024();
  if (v28 == 8 || v99 != v100 >> 1)
  {
    v40 = v15;
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v43 = &type metadata for HomeAccessoryViewEvent;
    v44 = v66;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
    swift_willThrow();
    (*(v89 + 8))(v44, v40);
    swift_unknownObjectRelease();
    return sub_10000903C(v101);
  }

  if (v28 > 3u)
  {
    v37 = v66;
    if (v28 > 5u)
    {
      v48 = v15;
      v49 = v89;
      if (v28 == 6)
      {
        LOBYTE(v90) = 6;
        sub_10022A578();
        v50 = v83;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v62 = 0;
        (*(v77 + 8))(v50, v79);
        (*(v49 + 8))(v37, v48);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 2;
        v33 = 4;
      }

      else
      {
        LOBYTE(v90) = 7;
        sub_10022A524();
        v55 = v84;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v62 = 0;
        (*(v80 + 8))(v55, v81);
        (*(v49 + 8))(v37, v48);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 2;
        v33 = 5;
      }
    }

    else
    {
      v46 = v89;
      if (v28 == 4)
      {
        LOBYTE(v90) = 4;
        sub_10022A620();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v62 = 0;
        (*(v75 + 8))(v22, v74);
        (*(v46 + 8))(v37, v15);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 2;
        v33 = 3;
      }

      else
      {
        LOBYTE(v90) = 5;
        sub_10022A5CC();
        v38 = v24;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v15;
        v59 = v78;
        v21 = 0;
        v33 = KeyedDecodingContainer.decode(_:forKey:)();
        v34 = v60;
        v62 = 0;
        (*(v76 + 8))(v38, v59);
        v61 = *(v46 + 8);
        v35 = v46 + 8;
        v61(v37, v36);
        swift_unknownObjectRelease();
        v39 = 1;
      }
    }
  }

  else if (v28 > 1u)
  {
    if (v28 == 2)
    {
      LOBYTE(v90) = 2;
      sub_10022A6C8();
      v47 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v56 = v15;
      sub_10010B758();
      v57 = v73;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v58 = v89;
      v62 = 0;
      (*(v72 + 8))(v23, v57);
      (*(v58 + 8))(v47, v56);
      swift_unknownObjectRelease();
      v39 = 0;
      v33 = v90;
      v34 = v91;
      v21 = v92;
      v35 = v93;
      v36 = v94;
      v37 = v95;
      v38 = v96;
    }

    else
    {
      LOBYTE(v90) = 3;
      sub_10022A674();
      v53 = v82;
      v54 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = 0;
      (*(v71 + 8))(v53, v70);
      (*(v89 + 8))(v54, v15);
      swift_unknownObjectRelease();
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = 2;
      v39 = 2;
    }
  }

  else
  {
    v29 = v15;
    v30 = v89;
    if (v28)
    {
      LOBYTE(v90) = 1;
      sub_10022A71C();
      v51 = v65;
      v52 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = 0;
      (*(v68 + 8))(v51, v69);
      (*(v30 + 8))(v52, v29);
      swift_unknownObjectRelease();
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 2;
      v33 = 1;
    }

    else
    {
      LOBYTE(v90) = 0;
      sub_10022A770();
      v31 = v64;
      v32 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = 0;
      (*(v67 + 8))(v31, v63);
      (*(v30 + 8))(v32, v29);
      swift_unknownObjectRelease();
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 2;
    }
  }

  result = sub_10000903C(v101);
  *v25 = v33;
  *(v25 + 8) = v34;
  *(v25 + 16) = v21;
  *(v25 + 24) = v35;
  *(v25 + 32) = v36;
  *(v25 + 40) = v37;
  *(v25 + 48) = v38;
  *(v25 + 56) = v39;
  return result;
}

unint64_t sub_10022A4D0()
{
  result = qword_10034ED68;
  if (!qword_10034ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED68);
  }

  return result;
}

unint64_t sub_10022A524()
{
  result = qword_10034ED70;
  if (!qword_10034ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED70);
  }

  return result;
}

unint64_t sub_10022A578()
{
  result = qword_10034ED78;
  if (!qword_10034ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED78);
  }

  return result;
}

unint64_t sub_10022A5CC()
{
  result = qword_10034ED80;
  if (!qword_10034ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED80);
  }

  return result;
}

unint64_t sub_10022A620()
{
  result = qword_10034ED88;
  if (!qword_10034ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED88);
  }

  return result;
}

unint64_t sub_10022A674()
{
  result = qword_10034ED90;
  if (!qword_10034ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED90);
  }

  return result;
}

unint64_t sub_10022A6C8()
{
  result = qword_10034ED98;
  if (!qword_10034ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED98);
  }

  return result;
}

unint64_t sub_10022A71C()
{
  result = qword_10034EDA0;
  if (!qword_10034EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDA0);
  }

  return result;
}

unint64_t sub_10022A770()
{
  result = qword_10034EDA8;
  if (!qword_10034EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDA8);
  }

  return result;
}

unint64_t sub_10022A858()
{
  result = qword_10034EDF8;
  if (!qword_10034EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDF8);
  }

  return result;
}

unint64_t sub_10022A8B0()
{
  result = qword_10034EE00;
  if (!qword_10034EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE00);
  }

  return result;
}

unint64_t sub_10022A908()
{
  result = qword_10034EE08;
  if (!qword_10034EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE08);
  }

  return result;
}

unint64_t sub_10022A960()
{
  result = qword_10034EE10;
  if (!qword_10034EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE10);
  }

  return result;
}

unint64_t sub_10022A9B8()
{
  result = qword_10034EE18;
  if (!qword_10034EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE18);
  }

  return result;
}

unint64_t sub_10022AA10()
{
  result = qword_10034EE20;
  if (!qword_10034EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE20);
  }

  return result;
}

unint64_t sub_10022AA68()
{
  result = qword_10034EE28;
  if (!qword_10034EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE28);
  }

  return result;
}

unint64_t sub_10022AAC0()
{
  result = qword_10034EE30;
  if (!qword_10034EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE30);
  }

  return result;
}

unint64_t sub_10022AB18()
{
  result = qword_10034EE38;
  if (!qword_10034EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE38);
  }

  return result;
}

unint64_t sub_10022AB70()
{
  result = qword_10034EE40;
  if (!qword_10034EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE40);
  }

  return result;
}

unint64_t sub_10022ABC8()
{
  result = qword_10034EE48;
  if (!qword_10034EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE48);
  }

  return result;
}

unint64_t sub_10022AC20()
{
  result = qword_10034EE50;
  if (!qword_10034EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE50);
  }

  return result;
}

unint64_t sub_10022AC78()
{
  result = qword_10034EE58;
  if (!qword_10034EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE58);
  }

  return result;
}

unint64_t sub_10022ACD0()
{
  result = qword_10034EE60;
  if (!qword_10034EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE60);
  }

  return result;
}

unint64_t sub_10022AD28()
{
  result = qword_10034EE68;
  if (!qword_10034EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE68);
  }

  return result;
}

unint64_t sub_10022AD80()
{
  result = qword_10034EE70;
  if (!qword_10034EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE70);
  }

  return result;
}

unint64_t sub_10022ADD8()
{
  result = qword_10034EE78;
  if (!qword_10034EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE78);
  }

  return result;
}

unint64_t sub_10022AE30()
{
  result = qword_10034EE80;
  if (!qword_10034EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE80);
  }

  return result;
}

unint64_t sub_10022AE88()
{
  result = qword_10034EE88;
  if (!qword_10034EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE88);
  }

  return result;
}

unint64_t sub_10022AEE0()
{
  result = qword_10034EE90;
  if (!qword_10034EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE90);
  }

  return result;
}

unint64_t sub_10022AF38()
{
  result = qword_10034EE98[0];
  if (!qword_10034EE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034EE98);
  }

  return result;
}

uint64_t sub_10022AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v10 = type metadata accessor for OutputEventContext(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t OutputEventContext.description.getter(uint64_t a1)
{
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v2._countAndFlagsBits = 0x3D7475706E69202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_10022B0F4(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_10022B180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_10022B35C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_10022B650(uint64_t a1)
{
  result = sub_10022B678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10022B678()
{
  result = qword_10034EF20;
  if (!qword_10034EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF20);
  }

  return result;
}

uint64_t sub_10022B6DC()
{
  v1 = 0x7661776B636F6873;
  if (*v0 != 1)
  {
    v1 = 0x7373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_10022B734()
{
  v1 = 0x6465746E6968;
  v2 = 0x64656C74746573;
  if (*v0 != 2)
  {
    v2 = 0x657373696D736964;
  }

  if (*v0)
  {
    v1 = 0x7661776B636F6873;
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

unint64_t sub_10022B7B8(uint64_t a1)
{
  result = sub_10022B7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10022B7E0()
{
  result = qword_10034EF28;
  if (!qword_10034EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF28);
  }

  return result;
}

unint64_t sub_10022B838()
{
  result = qword_10034EF30;
  if (!qword_10034EF30)
  {
    sub_100035D4C(&qword_10034EF38, qword_1002921A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF30);
  }

  return result;
}

__n128 sub_10022B8A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10022B8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10022B8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10022B95C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034EF40, qword_1002922D8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v59 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v15 = swift_allocObject();
  *(v15 + 1) = xmmword_100278930;
  v76 = 2112829;
  v77 = 0xE300000000000000;
  String.append(_:)(v0[1]);
  v16._countAndFlagsBits = 4013344;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  v17 = v77;
  *(v15 + 4) = v76;
  *(v15 + 5) = v17;
  v76 = 540689481;
  v77 = 0xE400000000000000;
  String.append(_:)(*v0);
  v18 = v77;
  *(v15 + 6) = v76;
  *(v15 + 7) = v18;
  v76 = 0x203A656369766544;
  v77 = 0xE800000000000000;
  v20._countAndFlagsBits = sub_1001EE1E4(v19);
  String.append(_:)(v20);
  v21 = v12;

  v22 = v77;
  *(v15 + 8) = v76;
  *(v15 + 9) = v22;
  *(v15 + 10) = 0x3A73746E657645;
  *(v15 + 11) = 0xE700000000000000;
  v68 = v14;
  result = static Date.distantFuture.getter();
  v24 = 0;
  object = v0[3]._object;
  v25 = object[2];
  v71 = (v9 + 32);
  v61 = "Expected Behavior";
  v62 = v25;
  v66 = v8;
  v67 = (v9 + 8);
  v63 = v21;
  v64 = v7;
  v65 = v5;
  v26 = v25 == 0;
  if (v25)
  {
    goto LABEL_3;
  }

LABEL_2:
  v27 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  v24 = v25;
  while (1)
  {
    sub_10022C11C(v5, v7);
    v31 = sub_100035D04(&qword_10033E570, &unk_100274720);
    if ((*(*(v31 - 8) + 48))(v7, 1, v31) == 1)
    {
      v76 = v15;
      sub_100035D04(&qword_1003397D0, &qword_1002729A0);
      sub_10001CAF4();
      v58 = BidirectionalCollection<>.joined(separator:)();

      (*v67)(v68, v8);
      return v58;
    }

    v32 = &v7[*(v31 + 48)];
    v33 = *v32;
    v34 = v32[1];
    v69 = *v71;
    v70 = v15;
    v69(v21, v7, v8);
    v76 = v33;
    v77 = v34;
    v74 = 10;
    v75 = 0xE100000000000000;
    v72 = 592138;
    v73 = 0xE300000000000000;
    sub_10001369C();
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v37 = v36;

    v76 = 9;
    v77 = 0xE100000000000000;
    v38 = [objc_allocWithZone(NSDateFormatter) init];
    v39 = String._bridgeToObjectiveC()();
    [v38 setDateFormat:v39];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v41 = [v38 stringFromDate:isa];

    v42 = v1;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v1 = v42;
    v46._object = v45;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 8250;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    v48._countAndFlagsBits = v35;
    v48._object = v37;
    String.append(_:)(v48);

    v50 = v76;
    v49 = v77;
    if ((v42[3]._countAndFlagsBits & 1) == 0)
    {
      v51 = *&v42[2]._object;
      Date.timeIntervalSince(_:)();
      if (v52 < -v51)
      {
        v76 = 10;
        v77 = 0xE100000000000000;
        v53._countAndFlagsBits = v50;
        v53._object = v49;
        String.append(_:)(v53);

        v50 = v76;
        v49 = v77;
      }
    }

    v5 = v65;
    v8 = v66;
    v15 = v70;
    v55 = *(v70 + 2);
    v54 = *(v70 + 3);
    if (v55 >= v54 >> 1)
    {
      v15 = sub_100009088((v54 > 1), v55 + 1, 1, v70);
    }

    v56 = v68;
    (*v67)(v68, v8);
    *(v15 + 2) = v55 + 1;
    v57 = &v15[16 * v55];
    *(v57 + 4) = v50;
    *(v57 + 5) = v49;
    v21 = v63;
    result = (v69)(v56, v63, v8);
    v7 = v64;
    v25 = v62;
    v26 = v24 >= v62;
    if (v24 == v62)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v26)
    {
      break;
    }

    v28 = sub_100035D04(&qword_10033E570, &unk_100274720);
    v29 = *(v28 - 8);
    result = sub_10022C0AC(object + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v5);
    if (__OFADD__(v24++, 1))
    {
      goto LABEL_16;
    }

    (*(v29 + 56))(v5, 0, 1, v28);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10022C030()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B5E0);
  sub_100003078(v0, qword_10038B5E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10022C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022C11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034EF40, qword_1002922D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CardMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10022C2E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10022C2F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_10022C338(uint64_t a1)
{
  sub_10022C3E0(319);
  if (v1 <= 0x3F)
  {
    sub_10022C454(319, &qword_10034EFD0, &type metadata for XPCConnectionEvent);
    if (v2 <= 0x3F)
    {
      sub_10022C454(319, &unk_10034EFD8, &type metadata for NearbySharingInteractionViewEvent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10022C3E0(uint64_t a1)
{
  if (!qword_10034EFC8)
  {
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10034EFC8);
    }
  }
}

void sub_10022C454(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10022C4E0(uint64_t a1)
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_10022C58C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_10022C58C()
{
  result = qword_10034F088;
  if (!qword_10034F088)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034F088);
  }

  return result;
}

uint64_t sub_10022C5BC(char a1)
{
  if (a1 == 3)
  {
    return 0x726F737365636361;
  }

  if (a1 == 4)
  {
    return 1701602409;
  }

  _StringGuts.grow(_:)(25);

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x736F6C4365766F6DLL;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 == 1)
    {
      v4 = 0xEA00000000007265;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6F72746E69;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 10528;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0xD000000000000015;
}

uint64_t sub_10022C6E4(void *a1, int a2)
{
  v24 = a2;
  v23 = sub_100035D04(&qword_10034F100, &qword_1002924A0);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v17 - v3;
  v22 = sub_100035D04(&qword_10034F108, &qword_1002924A8);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v17 - v4;
  v6 = sub_100035D04(&qword_10034F110, &qword_1002924B0);
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100035D04(&qword_10034F118, &qword_1002924B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_1002317E8();
  v13 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13 == 4)
  {
    v28 = 2;
    sub_10023183C();
    v14 = v19;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v14, v23);
    return (*(v10 + 8))(v12, v9);
  }

  if (v13 == 3)
  {
    v25 = 0;
    sub_100231938();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }

  v27 = 1;
  sub_100231890();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v26 = v13;
  sub_10023198C();
  v16 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v20 + 8))(v5, v16);
  return (*(v10 + 8))(v12, v9);
}

void sub_10022CAD0(void *a1)
{
  v2 = sub_100035D04(&qword_10034F278, &qword_100292580);
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v72 = &v48 - v3;
  v70 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v70);
  v71 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10034F280, &qword_100292588);
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v48 - v6;
  v7 = sub_100035D04(&qword_10034F288, &qword_100292590);
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v48 - v8;
  v9 = sub_100035D04(&qword_10034F290, &qword_100292598);
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v62 = &v48 - v10;
  v60 = sub_100035D04(&qword_10034F298, &qword_1002925A0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v48 - v11;
  v57 = sub_100035D04(&qword_10034F2A0, &qword_1002925A8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v48 - v12;
  v54 = sub_100035D04(&qword_10034F2A8, &qword_1002925B0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v48 - v13;
  v52 = sub_100035D04(&qword_10034F2B0, &qword_1002925B8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = &v48 - v14;
  v49 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v49);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ViewServiceInput(0);
  __chkstk_darwin(v18);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100035D04(&qword_10034F2B8, &qword_1002925C0);
  v22 = *(v21 - 8);
  v76 = v21;
  v77 = v22;
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  sub_10000EBC0(a1, a1[3]);
  sub_100231E78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002321D4(v75, v20, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v28 = v76;
      if (EnumCaseMultiPayload == 4)
      {
        v29 = *v20;
        LOBYTE(v78) = 4;
        sub_100232030();
        v30 = v62;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v29;
        sub_100151898();
        v31 = v66;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v65 + 8))(v30, v31);
        (*(v77 + 8))(v24, v28);

        return;
      }

      LOBYTE(v78) = 6;
      sub_100231F88();
      v39 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v69;
      KeyedEncodingContainer.encode(_:forKey:)();
      v41 = v68;
      goto LABEL_14;
    }

    v28 = v76;
    if (EnumCaseMultiPayload == 6)
    {
      v35 = v71;
      sub_100231F20(v20, v71, type metadata accessor for NearbySharingInteractionDisplayContext);
      LOBYTE(v78) = 7;
      sub_100231ECC();
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10023223C(&qword_10034DB98, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_1002792F8);
      v37 = v74;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v73 + 8))(v36, v37);
      sub_100232284(v35, type metadata accessor for NearbySharingInteractionDisplayContext);
LABEL_15:
      (*(v77 + 8))(v24, v28);
      return;
    }

    LOBYTE(v78) = 5;
    sub_100231FDC();
    v47 = v61;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v63 + 8))(v47, v64);
    (*(v77 + 8))(v24, v28);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_100231F20(v20, v17, type metadata accessor for ActivityDisplayContext);
        LOBYTE(v78) = 0;
        sub_100232180();
        v26 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10023223C(&qword_10034BB00, type metadata accessor for ActivityDisplayContext, &unk_10027D2DC);
        v27 = v52;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v51 + 8))(v15, v27);
        sub_100232284(v17, type metadata accessor for ActivityDisplayContext);
        (*(v77 + 8))(v24, v26);
        return;
      }

      v38 = *v20;
      LOBYTE(v78) = 1;
      sub_10023212C();
      v39 = v50;
      v28 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v78) = v38;
      sub_10010BAF4();
      v40 = v54;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v41 = v53;
LABEL_14:
      (*(v41 + 8))(v39, v40);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v78) = 2;
      sub_1002320D8();
      v32 = v55;
      v33 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v57;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v56 + 8))(v32, v34);
      (*(v77 + 8))(v24, v33);
    }

    else
    {
      v42 = *v20;
      v43 = v20[1];
      LOBYTE(v78) = 3;
      sub_100232084();
      v44 = v58;
      v45 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v42;
      v79 = v43;
      sub_1001D54C8();
      v46 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v59 + 8))(v44, v46);
      (*(v77 + 8))(v24, v45);
      sub_10001DAC4(v42);
    }
  }
}

uint64_t sub_10022D6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v105 = sub_100035D04(&qword_10034F1E8, &qword_100292538);
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v118 = &v83 - v3;
  v117 = sub_100035D04(&qword_10034F1F0, &qword_100292540);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v83 - v4;
  v102 = sub_100035D04(&qword_10034F1F8, &qword_100292548);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v109 = &v83 - v5;
  v103 = sub_100035D04(&qword_10034F200, &qword_100292550);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v110 = &v83 - v6;
  v99 = sub_100035D04(&qword_10034F208, &qword_100292558);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v107 = &v83 - v7;
  v96 = sub_100035D04(&qword_10034F210, &qword_100292560);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v116 = &v83 - v8;
  v95 = sub_100035D04(&qword_10034F218, &qword_100292568);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v108 = &v83 - v9;
  v93 = sub_100035D04(&qword_10034F220, &qword_100292570);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v113 = &v83 - v10;
  v115 = sub_100035D04(&qword_10034F228, &qword_100292578);
  v120 = *(v115 - 8);
  __chkstk_darwin(v115);
  v12 = &v83 - v11;
  v112 = type metadata accessor for ViewServiceInput(0);
  v13 = __chkstk_darwin(v112);
  v91 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = (&v83 - v16);
  v17 = __chkstk_darwin(v15);
  v90 = (&v83 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v83 - v23);
  v25 = __chkstk_darwin(v22);
  v27 = &v83 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v83 - v29;
  __chkstk_darwin(v28);
  v32 = &v83 - v31;
  v33 = a1[3];
  v122 = a1;
  sub_10000EBC0(a1, v33);
  sub_100231E78();
  v114 = v12;
  v34 = v121;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v84 = v27;
    v85 = v24;
    v87 = v30;
    v86 = v21;
    v35 = v113;
    v121 = 0;
    v36 = v116;
    v37 = v117;
    v38 = v118;
    v88 = v32;
    v39 = v119;
    v40 = v114;
    v41 = v115;
    v42 = KeyedDecodingContainer.allKeys.getter();
    v43 = (2 * *(v42 + 16)) | 1;
    v124 = v42;
    v125 = v42 + 32;
    v126 = 0;
    v127 = v43;
    v44 = sub_100218024();
    if (v44 == 8 || v126 != v127 >> 1)
    {
      v50 = type metadata accessor for DecodingError();
      swift_allocError();
      v52 = v51;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v52 = v112;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.typeMismatch(_:), v50);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v44 <= 3u)
    {
      v45 = v121;
      if (v44 <= 1u)
      {
        if (!v44)
        {
          LOBYTE(v123) = 0;
          sub_100232180();
          v46 = v35;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v45)
          {
            type metadata accessor for ActivityDisplayContext(0);
            sub_10023223C(&qword_10034BAE0, type metadata accessor for ActivityDisplayContext, &unk_10027D304);
            v47 = v87;
            v48 = v93;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v92 + 8))(v46, v48);
            (*(v120 + 8))(v40, v41);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v49 = v47;
LABEL_35:
            v67 = v88;
            sub_100231F20(v49, v88, type metadata accessor for ViewServiceInput);
            v54 = v39;
            goto LABEL_37;
          }

          goto LABEL_10;
        }

        LOBYTE(v123) = 1;
        sub_10023212C();
        v62 = v108;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v45)
        {
          sub_10010BAA0();
          v63 = v95;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v94 + 8))(v62, v63);
          (*(v120 + 8))(v40, v41);
          swift_unknownObjectRelease();
          v79 = v84;
          *v84 = v123;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v49 = v79;
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (v44 == 2)
      {
        LOBYTE(v123) = 2;
        sub_1002320D8();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v45)
        {
          goto LABEL_10;
        }

        v59 = v96;
        v75 = KeyedDecodingContainer.decode(_:forKey:)();
        v77 = v76;
        (*(v97 + 8))(v36, v59);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v78 = v85;
        *v85 = v75;
        v78[1] = v77;
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v49 = v78;
        goto LABEL_35;
      }

      LOBYTE(v123) = 3;
      sub_100232084();
      v68 = v107;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v45)
      {
        sub_1001D5348();
        v69 = v99;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v98 + 8))(v68, v69);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v79 = v86;
        *v86 = v123;
        goto LABEL_33;
      }

LABEL_10:
      (*(v120 + 8))(v40, v41);
      swift_unknownObjectRelease();
      return sub_10000903C(v122);
    }

    if (v44 > 5u)
    {
      if (v44 != 6)
      {
        LOBYTE(v123) = 7;
        sub_100231ECC();
        v70 = v38;
        v71 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v71)
        {
          goto LABEL_10;
        }

        type metadata accessor for NearbySharingInteractionDisplayContext(0);
        sub_10023223C(&qword_10034DB88, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_100279320);
        v78 = v91;
        v72 = v105;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v106 + 8))(v70, v72);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v54 = v39;
      LOBYTE(v123) = 6;
      sub_100231F88();
      v60 = v111;
      v61 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v61)
      {
        goto LABEL_10;
      }

      KeyedDecodingContainer.decode(_:forKey:)();
      v73 = v120;
      v81 = v80;
      (*(v104 + 8))(v60, v37);
      (*(v73 + 8))(v40, v41);
      swift_unknownObjectRelease();
      v74 = v89;
      *v89 = v81;
    }

    else
    {
      v54 = v39;
      if (v44 != 4)
      {
        LOBYTE(v123) = 5;
        sub_100231FDC();
        v64 = v109;
        v65 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v120;
        if (!v65)
        {
          (*(v100 + 8))(v64, v102);
          (*(v66 + 8))(v40, v41);
          swift_unknownObjectRelease();
          v67 = v88;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_100231F20(v67, v54, type metadata accessor for ViewServiceInput);
          return sub_10000903C(v122);
        }

        goto LABEL_10;
      }

      LOBYTE(v123) = 4;
      sub_100232030();
      v55 = v110;
      v56 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v120;
      if (v56)
      {
        goto LABEL_10;
      }

      sub_1001517F0();
      v58 = v103;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v101 + 8))(v55, v58);
      (*(v57 + 8))(v40, v41);
      swift_unknownObjectRelease();
      v74 = v90;
      *v90 = v123;
    }

    swift_storeEnumTagMultiPayload();
    v82 = v74;
    v67 = v88;
    sub_100231F20(v82, v88, type metadata accessor for ViewServiceInput);
    goto LABEL_37;
  }

  return sub_10000903C(v122);
}

uint64_t sub_10022E7F4(void *a1)
{
  v68 = sub_100035D04(&qword_10034F1A0, &qword_100292508);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v57 - v2;
  v71 = sub_100035D04(&qword_10034F1A8, &qword_100292510);
  v62 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v57 - v3;
  v64 = sub_100035D04(&qword_10034F1B0, &qword_100292518);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - v4;
  v60 = sub_100035D04(&qword_10034F1B8, &qword_100292520);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - v5;
  v69 = sub_100035D04(&qword_10034F1C0, &qword_100292528);
  v57 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v57 - v6;
  v72 = type metadata accessor for Date();
  v73 = *(v72 - 8);
  v8 = __chkstk_darwin(v72);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100035D04(&qword_10034F1C8, &qword_100292530);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v19 = &v57 - v18;
  sub_10000EBC0(a1, a1[3]);
  sub_1002319E0();
  v78 = v19;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002321D4(v74, v17, type metadata accessor for ViewServiceOutput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v74 = v14;
    v24 = v7;
    v25 = v70;
    v26 = v69;
    v27 = v71;
    if (EnumCaseMultiPayload)
    {
      v47 = *v17;
      v48 = sub_100035D04(&qword_100343140, &unk_100278FE0);
      v49 = v73;
      v50 = v12;
      v51 = v72;
      (*(v73 + 32))(v12, &v17[*(v48 + 48)], v72);
      LOBYTE(v82) = 3;
      sub_100231B30();
      v53 = v77;
      v52 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v82) = v47;
      LOBYTE(v79) = 0;
      sub_100231DD0();
      v54 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v54)
      {
        (*(v62 + 8))(v25, v27);
        (*(v49 + 8))(v50, v51);
        return (*(v75 + 8))(v52, v53);
      }

      else
      {
        LOBYTE(v82) = 1;
        sub_10023223C(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v62 + 8))(v25, v27);
        (*(v49 + 8))(v50, v51);
        return (*(v75 + 8))(v78, v53);
      }
    }

    else
    {
      v28 = *(v17 + 1);
      v82 = *v17;
      v83 = v28;
      *v84 = *(v17 + 2);
      *&v84[9] = *(v17 + 41);
      v71 = *(v17 + 8);
      v29 = sub_100035D04(&qword_100343148, &qword_100292500);
      v30 = v73;
      v31 = v72;
      (*(v73 + 32))(v74, &v17[*(v29 + 64)], v72);
      LOBYTE(v79) = 0;
      sub_100231C80();
      v32 = v77;
      v33 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v82;
      v80 = v83;
      v81[0] = *v84;
      *(v81 + 9) = *&v84[9];
      v85 = 0;
      sub_100231E24();
      v34 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v34)
      {

        (*(v57 + 8))(v24, v26);
        (*(v30 + 8))(v74, v31);
        (*(v75 + 8))(v33, v32);
        return sub_100231D28(&v82);
      }

      else
      {
        sub_100231D28(&v82);
        LOBYTE(v79) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        LOBYTE(v79) = 2;
        sub_10023223C(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v55 = v74;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v56 = v78;
        (*(v57 + 8))(v24, v26);
        (*(v30 + 8))(v55, v31);
        return (*(v75 + 8))(v56, v77);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v17 + 1);
    v82 = *v17;
    v83 = v36;
    *v84 = *(v17 + 2);
    *&v84[9] = *(v17 + 41);
    v37 = sub_100035D04(&qword_100343138, &unk_1002924F0);
    v38 = v73;
    v39 = v65;
    v40 = v72;
    (*(v73 + 32))(v65, &v17[*(v37 + 48)], v72);
    LOBYTE(v79) = 4;
    sub_100231A34();
    v41 = v66;
    v42 = v77;
    v43 = v78;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v79 = v82;
    v80 = v83;
    v81[0] = *v84;
    *(v81 + 9) = *&v84[9];
    v85 = 0;
    sub_100231D7C();
    v44 = v68;
    v45 = v76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v45)
    {
      (*(v67 + 8))(v41, v44);
      (*(v38 + 8))(v39, v40);
      (*(v75 + 8))(v43, v42);
      return sub_100231ADC(&v82);
    }

    else
    {
      sub_100231ADC(&v82);
      LOBYTE(v79) = 1;
      sub_10023223C(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v67 + 8))(v41, v44);
      (*(v38 + 8))(v39, v40);
      return (*(v75 + 8))(v43, v42);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v82) = 1;
      sub_100231C2C();
      v21 = v58;
      v22 = v77;
      v23 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v59 + 8))(v21, v60);
    }

    else
    {
      LOBYTE(v82) = 2;
      sub_100231BD8();
      v46 = v61;
      v22 = v77;
      v23 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v46, v64);
    }

    return (*(v75 + 8))(v23, v22);
  }
}

uint64_t sub_10022F48C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v71 = sub_100035D04(&qword_10034F128, &qword_1002924C0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v61 - v3;
  v70 = sub_100035D04(&qword_10034F130, &qword_1002924C8);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v81 = &v61 - v4;
  v68 = sub_100035D04(&qword_10034F138, &qword_1002924D0);
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v80 = &v61 - v5;
  v67 = sub_100035D04(&qword_10034F140, &qword_1002924D8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v61 - v6;
  v69 = sub_100035D04(&qword_10034F148, &qword_1002924E0);
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = &v61 - v7;
  v82 = sub_100035D04(&qword_10034F150, &qword_1002924E8);
  v77 = *(v82 - 8);
  __chkstk_darwin(v82);
  v9 = &v61 - v8;
  v10 = type metadata accessor for ViewServiceOutput(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v61 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = a1[3];
  v83 = a1;
  sub_10000EBC0(a1, v22);
  sub_1002319E0();
  v23 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_10000903C(v83);
  }

  v25 = v79;
  v24 = v80;
  v61 = v16;
  v62 = v13;
  v26 = v78;
  v27 = v81;
  v64 = 0;
  v84 = v10;
  v63 = v21;
  v28 = v77;
  v29 = v82;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v86 = v30;
  v87 = v30 + 32;
  v88 = 0;
  v89 = v31;
  v32 = sub_100218020();
  v33 = v29;
  if (v32 == 5 || v88 != v89 >> 1)
  {
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    v43 = v29;
    *v42 = v84;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      LOBYTE(v85) = 2;
      sub_100231BD8();
      v49 = v64;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v49)
      {
        v64 = 0;
        (*(v65 + 8))(v24, v68);
        (*(v28 + 8))(v9, v29);
        swift_unknownObjectRelease();
        v60 = v63;
        swift_storeEnumTagMultiPayload();
LABEL_27:
        v54 = v83;
        v45 = v76;
        goto LABEL_28;
      }

LABEL_17:
      (*(v28 + 8))(v9, v29);
      goto LABEL_11;
    }

    if (v32 == 3)
    {
      LOBYTE(v85) = 3;
      sub_100231B30();
      v34 = v27;
      v35 = v29;
      v36 = v64;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v28;
      if (!v36)
      {
        LOBYTE(v85) = 0;
        sub_100231B84();
        v38 = v61;
        v39 = v70;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        sub_100035D04(&qword_100343140, &unk_100278FE0);
        type metadata accessor for Date();
        LOBYTE(v85) = 1;
        sub_10023223C(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v64 = 0;
        (*(v72 + 8))(v34, v39);
        (*(v37 + 8))(v9, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v38;
LABEL_26:
        v60 = v63;
        sub_100231F20(v56, v63, type metadata accessor for ViewServiceOutput);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    LOBYTE(v85) = 4;
    sub_100231A34();
    v43 = v29;
    v50 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v50)
    {
      LOBYTE(v85) = 0;
      sub_100231A88();
      v51 = v62;
      v52 = v71;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      sub_100035D04(&qword_100343138, &unk_1002924F0);
      type metadata accessor for Date();
      v90 = 1;
      sub_10023223C(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = 0;
      (*(v73 + 8))(v55, v52);
      (*(v28 + 8))(v9, v29);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v56 = v51;
      goto LABEL_26;
    }

LABEL_10:
    (*(v28 + 8))(v9, v43);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_10000903C(v83);
  }

  v45 = v76;
  if (v32)
  {
    LOBYTE(v85) = 1;
    sub_100231C2C();
    v53 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v53)
    {
      (*(v28 + 8))(v9, v33);
      goto LABEL_11;
    }

    v64 = 0;
    (*(v66 + 8))(v25, v67);
    (*(v28 + 8))(v9, v33);
    swift_unknownObjectRelease();
    v60 = v63;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    LOBYTE(v85) = 0;
    sub_100231C80();
    v43 = v33;
    v46 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v46)
    {
      goto LABEL_10;
    }

    LOBYTE(v85) = 0;
    sub_100231CD4();
    v47 = v19;
    v48 = v69;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = 1;
    v57 = KeyedDecodingContainer.decode(_:forKey:)();
    v81 = v9;
    v59 = v58;
    sub_100035D04(&qword_100343148, &qword_100292500);
    *(v19 + 8) = v57;
    *(v19 + 9) = v59;
    v80 = v59;
    type metadata accessor for Date();
    v90 = 2;
    sub_10023223C(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v64 = 0;
    (*(v74 + 8))(v26, v48);
    (*(v28 + 8))(v81, v82);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v60 = v63;
    sub_100231F20(v47, v63, type metadata accessor for ViewServiceOutput);
  }

  v54 = v83;
LABEL_28:
  sub_100231F20(v60, v45, type metadata accessor for ViewServiceOutput);
  return sub_10000903C(v54);
}

uint64_t sub_100230338(uint64_t a1)
{
  v2 = sub_100231938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230374(uint64_t a1)
{
  v2 = sub_100231938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002303B0()
{
  v1 = 0x6F69746163756465;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_100230410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002310F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100230438(uint64_t a1)
{
  v2 = sub_1002317E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230474(uint64_t a1)
{
  v2 = sub_1002317E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002304B0(uint64_t a1)
{
  v2 = sub_100231890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002304EC(uint64_t a1)
{
  v2 = sub_100231890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230528(uint64_t a1)
{
  v2 = sub_10023183C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230564(uint64_t a1)
{
  v2 = sub_10023183C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002305A0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10023121C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1002305F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_100230644(uint64_t a1)
{
  v2 = sub_100232180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230680(uint64_t a1)
{
  v2 = sub_100232180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002306BC(uint64_t a1)
{
  v2 = sub_10023212C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002306F8(uint64_t a1)
{
  v2 = sub_10023212C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100230734()
{
  v1 = *v0;
  v2 = 0x65646F4D64726163;
  v3 = 0x73736572676F7270;
  if (v1 != 6)
  {
    v3 = 0xD000000000000026;
  }

  v4 = 0x6E6F70736552726DLL;
  if (v1 != 4)
  {
    v4 = 1735289200;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7373696D736964;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100230838@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002335F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100230860(uint64_t a1)
{
  v2 = sub_100231E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023089C(uint64_t a1)
{
  v2 = sub_100231E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002308D8(uint64_t a1)
{
  v2 = sub_1002320D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230914(uint64_t a1)
{
  v2 = sub_1002320D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230950(uint64_t a1)
{
  v2 = sub_100232084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023098C(uint64_t a1)
{
  v2 = sub_100232084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002309C8(uint64_t a1)
{
  v2 = sub_100232030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230A04(uint64_t a1)
{
  v2 = sub_100232030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230A40(uint64_t a1)
{
  v2 = sub_100231ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230A7C(uint64_t a1)
{
  v2 = sub_100231ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230AB8(uint64_t a1)
{
  v2 = sub_100231FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230AF4(uint64_t a1)
{
  v2 = sub_100231FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230B30(uint64_t a1)
{
  v2 = sub_100231F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230B6C(uint64_t a1)
{
  v2 = sub_100231F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230BD8()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_100230C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100233898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100230C50(uint64_t a1)
{
  v2 = sub_100231C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230C8C(uint64_t a1)
{
  v2 = sub_100231C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230CC8()
{
  v1 = *v0;
  v2 = 0x6E65764564726163;
  v3 = 1735289200;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656873696E6966;
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

uint64_t sub_100230D64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002339AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100230D8C(uint64_t a1)
{
  v2 = sub_1002319E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230DC8(uint64_t a1)
{
  v2 = sub_1002319E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230E04(uint64_t a1)
{
  v2 = sub_100231C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230E40(uint64_t a1)
{
  v2 = sub_100231C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230E7C(uint64_t a1)
{
  v2 = sub_100231A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230EB8(uint64_t a1)
{
  v2 = sub_100231A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230EF4(uint64_t a1)
{
  v2 = sub_100231BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230F30(uint64_t a1)
{
  v2 = sub_100231BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100230F6C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100231048(uint64_t a1)
{
  v2 = sub_100231B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231084(uint64_t a1)
{
  v2 = sub_100231B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002310F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10023121C(void *a1)
{
  v33 = sub_100035D04(&qword_10034F0B8, &qword_100292478);
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v37 = &v31 - v2;
  v3 = sub_100035D04(&qword_10034F0C0, &qword_100292480);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = sub_100035D04(&qword_10034F0C8, &qword_100292488);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100035D04(&qword_10034F0D0, &unk_100292490);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v40 = a1;
  v15 = sub_10000EBC0(a1, v14);
  sub_1002317E8();
  v16 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v32 = v7;
    v39 = 0;
    v18 = v37;
    v17 = v38;
    v19 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v41 = v20;
    v42 = v20 + 32;
    v43 = 0;
    v44 = v21;
    v22 = sub_100218008();
    if (v22 == 3 || v43 != v44 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v27 = &type metadata for CardMode;
      v15 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        v45 = 1;
        sub_100231890();
        v15 = v13;
        v23 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          sub_1002318E4();
          v24 = v35;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v36 + 8))(v6, v24);
          (*(v11 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = v45;
          goto LABEL_10;
        }
      }

      else
      {
        v45 = 2;
        sub_10023183C();
        v15 = v13;
        v30 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v30)
        {
          (*(v17 + 8))(v18, v33);
          (*(v11 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = 4;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v45 = 0;
      sub_100231938();
      v15 = v13;
      v29 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v29)
      {
        (*(v34 + 8))(v9, v32);
        (*(v11 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = 3;
        goto LABEL_10;
      }
    }

    (*(v19 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000903C(v40);
  return v15;
}

unint64_t sub_1002317E8()
{
  result = qword_10034F0D8;
  if (!qword_10034F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0D8);
  }

  return result;
}

unint64_t sub_10023183C()
{
  result = qword_10034F0E0;
  if (!qword_10034F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0E0);
  }

  return result;
}

unint64_t sub_100231890()
{
  result = qword_10034F0E8;
  if (!qword_10034F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0E8);
  }

  return result;
}

unint64_t sub_1002318E4()
{
  result = qword_10034F0F0;
  if (!qword_10034F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0F0);
  }

  return result;
}

unint64_t sub_100231938()
{
  result = qword_10034F0F8;
  if (!qword_10034F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0F8);
  }

  return result;
}

unint64_t sub_10023198C()
{
  result = qword_10034F120;
  if (!qword_10034F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F120);
  }

  return result;
}

unint64_t sub_1002319E0()
{
  result = qword_10034F158;
  if (!qword_10034F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F158);
  }

  return result;
}

unint64_t sub_100231A34()
{
  result = qword_10034F160;
  if (!qword_10034F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F160);
  }

  return result;
}

unint64_t sub_100231A88()
{
  result = qword_10034F168;
  if (!qword_10034F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F168);
  }

  return result;
}

unint64_t sub_100231B30()
{
  result = qword_10034F170;
  if (!qword_10034F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F170);
  }

  return result;
}

unint64_t sub_100231B84()
{
  result = qword_10034F178;
  if (!qword_10034F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F178);
  }

  return result;
}

unint64_t sub_100231BD8()
{
  result = qword_10034F180;
  if (!qword_10034F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F180);
  }

  return result;
}

unint64_t sub_100231C2C()
{
  result = qword_10034F188;
  if (!qword_10034F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F188);
  }

  return result;
}

unint64_t sub_100231C80()
{
  result = qword_10034F190;
  if (!qword_10034F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F190);
  }

  return result;
}

unint64_t sub_100231CD4()
{
  result = qword_10034F198;
  if (!qword_10034F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F198);
  }

  return result;
}

unint64_t sub_100231D7C()
{
  result = qword_10034F1D0;
  if (!qword_10034F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1D0);
  }

  return result;
}

unint64_t sub_100231DD0()
{
  result = qword_10034F1D8;
  if (!qword_10034F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1D8);
  }

  return result;
}

unint64_t sub_100231E24()
{
  result = qword_10034F1E0;
  if (!qword_10034F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1E0);
  }

  return result;
}

unint64_t sub_100231E78()
{
  result = qword_10034F230;
  if (!qword_10034F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F230);
  }

  return result;
}

unint64_t sub_100231ECC()
{
  result = qword_10034F238;
  if (!qword_10034F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F238);
  }

  return result;
}

uint64_t sub_100231F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100231F88()
{
  result = qword_10034F240;
  if (!qword_10034F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F240);
  }

  return result;
}

unint64_t sub_100231FDC()
{
  result = qword_10034F248;
  if (!qword_10034F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F248);
  }

  return result;
}

unint64_t sub_100232030()
{
  result = qword_10034F250;
  if (!qword_10034F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F250);
  }

  return result;
}

unint64_t sub_100232084()
{
  result = qword_10034F258;
  if (!qword_10034F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F258);
  }

  return result;
}

unint64_t sub_1002320D8()
{
  result = qword_10034F260;
  if (!qword_10034F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F260);
  }

  return result;
}

unint64_t sub_10023212C()
{
  result = qword_10034F268;
  if (!qword_10034F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F268);
  }

  return result;
}

unint64_t sub_100232180()
{
  result = qword_10034F270;
  if (!qword_10034F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F270);
  }

  return result;
}

uint64_t sub_1002321D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023223C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100232284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100232418()
{
  result = qword_10034F2C0;
  if (!qword_10034F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2C0);
  }

  return result;
}

unint64_t sub_100232470()
{
  result = qword_10034F2C8;
  if (!qword_10034F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2C8);
  }

  return result;
}

unint64_t sub_1002324C8()
{
  result = qword_10034F2D0;
  if (!qword_10034F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2D0);
  }

  return result;
}

unint64_t sub_100232520()
{
  result = qword_10034F2D8;
  if (!qword_10034F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2D8);
  }

  return result;
}

unint64_t sub_100232578()
{
  result = qword_10034F2E0;
  if (!qword_10034F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2E0);
  }

  return result;
}

unint64_t sub_1002325D0()
{
  result = qword_10034F2E8;
  if (!qword_10034F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2E8);
  }

  return result;
}

unint64_t sub_100232628()
{
  result = qword_10034F2F0;
  if (!qword_10034F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2F0);
  }

  return result;
}

unint64_t sub_100232680()
{
  result = qword_10034F2F8;
  if (!qword_10034F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2F8);
  }

  return result;
}

unint64_t sub_1002326D8()
{
  result = qword_10034F300;
  if (!qword_10034F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F300);
  }

  return result;
}

unint64_t sub_100232730()
{
  result = qword_10034F308;
  if (!qword_10034F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F308);
  }

  return result;
}

unint64_t sub_100232788()
{
  result = qword_10034F310;
  if (!qword_10034F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F310);
  }

  return result;
}

unint64_t sub_1002327E0()
{
  result = qword_10034F318;
  if (!qword_10034F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F318);
  }

  return result;
}

unint64_t sub_100232838()
{
  result = qword_10034F320;
  if (!qword_10034F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F320);
  }

  return result;
}

unint64_t sub_100232890()
{
  result = qword_10034F328;
  if (!qword_10034F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F328);
  }

  return result;
}

unint64_t sub_1002328E8()
{
  result = qword_10034F330;
  if (!qword_10034F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F330);
  }

  return result;
}

unint64_t sub_100232940()
{
  result = qword_10034F338;
  if (!qword_10034F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F338);
  }

  return result;
}

unint64_t sub_100232998()
{
  result = qword_10034F340;
  if (!qword_10034F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F340);
  }

  return result;
}

unint64_t sub_1002329F0()
{
  result = qword_10034F348;
  if (!qword_10034F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F348);
  }

  return result;
}

unint64_t sub_100232A48()
{
  result = qword_10034F350;
  if (!qword_10034F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F350);
  }

  return result;
}

unint64_t sub_100232AA0()
{
  result = qword_10034F358;
  if (!qword_10034F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F358);
  }

  return result;
}

unint64_t sub_100232AF8()
{
  result = qword_10034F360;
  if (!qword_10034F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F360);
  }

  return result;
}

unint64_t sub_100232B50()
{
  result = qword_10034F368;
  if (!qword_10034F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F368);
  }

  return result;
}

unint64_t sub_100232BA8()
{
  result = qword_10034F370;
  if (!qword_10034F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F370);
  }

  return result;
}

unint64_t sub_100232C00()
{
  result = qword_10034F378;
  if (!qword_10034F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F378);
  }

  return result;
}

unint64_t sub_100232C58()
{
  result = qword_10034F380;
  if (!qword_10034F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F380);
  }

  return result;
}

unint64_t sub_100232CB0()
{
  result = qword_10034F388;
  if (!qword_10034F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F388);
  }

  return result;
}

unint64_t sub_100232D08()
{
  result = qword_10034F390;
  if (!qword_10034F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F390);
  }

  return result;
}

unint64_t sub_100232D60()
{
  result = qword_10034F398;
  if (!qword_10034F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F398);
  }

  return result;
}

unint64_t sub_100232DB8()
{
  result = qword_10034F3A0;
  if (!qword_10034F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3A0);
  }

  return result;
}

unint64_t sub_100232E10()
{
  result = qword_10034F3A8;
  if (!qword_10034F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3A8);
  }

  return result;
}

unint64_t sub_100232E68()
{
  result = qword_10034F3B0;
  if (!qword_10034F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3B0);
  }

  return result;
}

unint64_t sub_100232EC0()
{
  result = qword_10034F3B8;
  if (!qword_10034F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3B8);
  }

  return result;
}

unint64_t sub_100232F18()
{
  result = qword_10034F3C0;
  if (!qword_10034F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3C0);
  }

  return result;
}

unint64_t sub_100232F70()
{
  result = qword_10034F3C8;
  if (!qword_10034F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3C8);
  }

  return result;
}

unint64_t sub_100232FC8()
{
  result = qword_10034F3D0;
  if (!qword_10034F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3D0);
  }

  return result;
}

unint64_t sub_100233020()
{
  result = qword_10034F3D8;
  if (!qword_10034F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3D8);
  }

  return result;
}

unint64_t sub_100233078()
{
  result = qword_10034F3E0;
  if (!qword_10034F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3E0);
  }

  return result;
}

unint64_t sub_1002330D0()
{
  result = qword_10034F3E8;
  if (!qword_10034F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3E8);
  }

  return result;
}

unint64_t sub_100233128()
{
  result = qword_10034F3F0;
  if (!qword_10034F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3F0);
  }

  return result;
}

unint64_t sub_100233180()
{
  result = qword_10034F3F8;
  if (!qword_10034F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3F8);
  }

  return result;
}

unint64_t sub_1002331D8()
{
  result = qword_10034F400;
  if (!qword_10034F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F400);
  }

  return result;
}

unint64_t sub_100233230()
{
  result = qword_10034F408;
  if (!qword_10034F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F408);
  }

  return result;
}

unint64_t sub_100233288()
{
  result = qword_10034F410;
  if (!qword_10034F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F410);
  }

  return result;
}

unint64_t sub_1002332E0()
{
  result = qword_10034F418;
  if (!qword_10034F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F418);
  }

  return result;
}

unint64_t sub_100233338()
{
  result = qword_10034F420;
  if (!qword_10034F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F420);
  }

  return result;
}

unint64_t sub_100233390()
{
  result = qword_10034F428;
  if (!qword_10034F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F428);
  }

  return result;
}

unint64_t sub_1002333E8()
{
  result = qword_10034F430;
  if (!qword_10034F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F430);
  }

  return result;
}

unint64_t sub_100233440()
{
  result = qword_10034F438;
  if (!qword_10034F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F438);
  }

  return result;
}

unint64_t sub_100233498()
{
  result = qword_10034F440;
  if (!qword_10034F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F440);
  }

  return result;
}

unint64_t sub_1002334F0()
{
  result = qword_10034F448;
  if (!qword_10034F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F448);
  }

  return result;
}

unint64_t sub_100233548()
{
  result = qword_10034F450;
  if (!qword_10034F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F450);
  }

  return result;
}

unint64_t sub_1002335A0()
{
  result = qword_10034F458;
  if (!qword_10034F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F458);
  }

  return result;
}

uint64_t sub_1002335F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001002A6860 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D64726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002A6880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001002A68A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100233898(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002339AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65764564726163 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002A6820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001002A6840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100233B78(void *a1)
{
  v3 = sub_100035D04(&qword_10034F520, &qword_100293C40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000EBC0(a1, a1[3]);
  sub_100235420();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for NoticeContext(0);
  sub_100235474(&qword_10034F460, &unk_10028F8A0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PresentNoticeRequest(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100233D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for NoticeContext(0);
  __chkstk_darwin(v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034F508, &qword_100293C38);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for PresentNoticeRequest(0);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_100235420();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v12 = v11;
  v13 = v24;
  v28 = 0;
  sub_100235474(&qword_10034F518, &unk_10028F8C8);
  v14 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v12;
  sub_1001B3668(v26, v12);
  v27 = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v13;
  v18 = v16;
  v20 = v19;
  v21 = (v15 + *(v9 + 20));
  (*(v17 + 8))(v8, v14);
  *v21 = v18;
  v21[1] = v20;
  sub_1002354B8(v15, v23);
  sub_10000903C(a1);
  return sub_10011F5A0(v15, type metadata accessor for PresentNoticeRequest);
}

uint64_t sub_100234014()
{
  if (*v0)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

void sub_100234054(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100234138(uint64_t a1)
{
  v2 = sub_100235420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100234174(uint64_t a1)
{
  v2 = sub_100235420();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002341E0()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v15[0] = 0x747865746E6F63;
  v15[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for NoticeContext(0);
  sub_100235474(&qword_10034F460, &unk_10028F8A0);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  if (v1)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v4;
    *(inited + 80) = v6;
    v4 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
    v7 = (v2 + *(type metadata accessor for PresentNoticeRequest(0) + 20));
    v8 = v7[1];
    if (v8)
    {
      v9 = *v7;

      AnyHashable.init<A>(_:)();
      v14 = &type metadata for String;
      *&v13 = v9;
      *(&v13 + 1) = v8;
      sub_1000516B4(&v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D368(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v15);
    }
  }

  return v4;
}

uint64_t sub_10023443C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034F538, &qword_100293C50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_10023551C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = v3[3];
    v18[0] = v3[2];
    v18[1] = v9;
    v11 = v3[2];
    v10 = v3[3];
    v19[0] = v3[4];
    *(v19 + 9) = *(v3 + 73);
    v15 = v11;
    v16 = v10;
    v17[0] = v3[4];
    *(v17 + 9) = *(v3 + 73);
    v20 = 2;
    sub_1001835CC(v18, v13);
    sub_100234AF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13[0] = v15;
    v13[1] = v16;
    v14[0] = v17[0];
    *(v14 + 9) = *(v17 + 9);
    sub_100183628(v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100234660()
{
  v1 = 0x496E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49747865746E6F63;
  }
}

uint64_t sub_1002346B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100234B48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002346E0(uint64_t a1)
{
  v2 = sub_10023551C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023471C(uint64_t a1)
{
  v2 = sub_10023551C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100234758@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100234C6C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_1002347C4()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *&v15[0] = 0x746E657665;
  *(&v15[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v4 = v0[3];
  v15[0] = v0[2];
  v15[1] = v4;
  v16[0] = v0[4];
  *(v16 + 9) = *(v0 + 73);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100234AF4();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (v1)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    v5 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
    v17 = v2[1];
    v8 = *(&v17 + 1);
    if (*(&v17 + 1))
    {
      v9 = v17;
      sub_1000E8E50(&v17, v15);
      AnyHashable.init<A>(_:)();
      v14 = &type metadata for String;
      v13 = __PAIR128__(v8, v9);
      sub_1000516B4(&v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D368(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v15);
    }
  }

  return v5;
}

uint64_t sub_1002349F0()
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v1 = sub_10024D824(inited);
  swift_setDeallocating();
  result = sub_1000FC194(inited + 32);
  qword_10038B5F8 = v1;
  return result;
}

uint64_t type metadata accessor for PresentNoticeRequest(uint64_t a1)
{
  result = qword_10034F4D0;
  if (!qword_10034F4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100234AF4()
{
  result = qword_10034F468;
  if (!qword_10034F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F468);
  }

  return result;
}

uint64_t sub_100234B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void sub_100234C6C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v4 = sub_100035D04(&qword_10034F528, &qword_100293C48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_10000EBC0(a1, a1[3]);
  sub_10023551C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000903C(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v23[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    LOBYTE(v23[0]) = 1;
    *&v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v17 + 1) = v12;
    v28 = 2;
    sub_10023524C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v7, v4);
    v32 = v29;
    v33 = v30;
    v34[0] = v31[0];
    *(v34 + 9) = *(v31 + 9);
    *&v18 = v9;
    *(&v18 + 1) = v11;
    v13 = v17;
    v19 = v17;
    v20 = v29;
    v21 = v30;
    v22[0] = v31[0];
    *(v22 + 9) = *(v31 + 9);
    sub_10011F66C(&v18, v23);
    sub_10000903C(a1);
    v23[0] = v9;
    v23[1] = v11;
    v24 = v13;
    v25 = v32;
    v26 = v33;
    *v27 = v34[0];
    *&v27[9] = *(v34 + 9);
    sub_10011F6C8(v23);
    v14 = v21;
    v15 = v35;
    v35[2] = v20;
    v15[3] = v14;
    v15[4] = v22[0];
    *(v15 + 73) = *(v22 + 9);
    v16 = v19;
    *v15 = v18;
    v15[1] = v16;
  }
}

void sub_100234F40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = 0x49747865746E6F63;
  v28 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_1000851E8(v29);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_10001766C(*(a1 + 56) + 32 * v4, v26);
  sub_1000516C4(v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = 0;
    v6 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_12;
  }

  v7 = v27;
  v6 = v28;
  v27 = 0x746E657665;
  v28 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v8 = sub_1000851E8(v29), (v9 & 1) == 0))
  {

LABEL_10:
    sub_1000516C4(v29);
    goto LABEL_11;
  }

  sub_10001766C(*(a1 + 56) + 32 * v8, v26);
  sub_1000516C4(v29);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v11 = v27;
  v10 = v28;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10023524C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v22 = v10;

  v24 = v29[1];
  v25 = v29[0];
  v23 = v29[2];
  v17 = v30;
  v18 = v31;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v19 = sub_1000851E8(v26), (v20 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v19, &v27);
    sub_100010708(v11, v22);
    sub_1000516C4(v26);
    v21 = swift_dynamicCast();
    v12 = 0x496E6F6973736573;
    v13 = 0xE900000000000044;
    if (!v21)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_100010708(v11, v22);
    sub_1000516C4(v26);
    v12 = 0;
    v13 = 0;
  }

  v15 = v24;
  v14 = v25;
  v16 = v23;
LABEL_12:
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
}

unint64_t sub_10023524C()
{
  result = qword_10034F470;
  if (!qword_10034F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F470);
  }

  return result;
}

void sub_1002352C8(uint64_t a1)
{
  type metadata accessor for NoticeContext(319);
  if (v1 <= 0x3F)
  {
    sub_10012C2F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10023534C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100235370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1002353B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100235420()
{
  result = qword_10034F510;
  if (!qword_10034F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F510);
  }

  return result;
}

uint64_t sub_100235474(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NoticeContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002354B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentNoticeRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10023551C()
{
  result = qword_10034F530;
  if (!qword_10034F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F530);
  }

  return result;
}

unint64_t sub_100235594()
{
  result = qword_10034F540;
  if (!qword_10034F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F540);
  }

  return result;
}

unint64_t sub_1002355EC()
{
  result = qword_10034F548;
  if (!qword_10034F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F548);
  }

  return result;
}

unint64_t sub_100235644()
{
  result = qword_10034F550;
  if (!qword_10034F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F550);
  }

  return result;
}

unint64_t sub_10023569C()
{
  result = qword_10034F558;
  if (!qword_10034F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F558);
  }

  return result;
}

unint64_t sub_1002356F4()
{
  result = qword_10034F560;
  if (!qword_10034F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F560);
  }

  return result;
}

unint64_t sub_10023574C()
{
  result = qword_10034F568[0];
  if (!qword_10034F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034F568);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LEDEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LEDEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100235908()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6D6F6F6C62;
  }

  if (v1 == 3)
  {
    return 1886352499;
  }

  BYTE8(v4) = 0;
  v3._countAndFlagsBits = 0x2D776F6C67;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  *&v4 = v1 & 1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v4 + 1);
}

BOOL sub_1002359B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 0x6F69746163756465;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v3)
  {
    v7 = 0x746C7561666564;
  }

  else
  {
    v7 = 0x6F69746163756465;
  }

  if (v3)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE90000000000006ELL;
  }

  if (v5 != v7 || v6 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }

  return 1;
}

unint64_t sub_100235AB4(void *a1)
{
  swift_getFunctionTypeMetadata1();
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Array();
        if (v5 <= 0x3F)
        {
          result = sub_100043FCC();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

double MultiEdge.init(_:trigger:end:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v26 = a5;
  v27 = a8;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 2) = v26;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = v20;
  *(v19 + 6) = a10;
  (*(v14 + 32))(&v19[v17], v16, a6);
  v21 = &v19[v18];
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  MultiEdge.init(startNodes:end:)(v30, sub_100236D20, v19, v31);
  (*(v14 + 8))(a2, a6);
  v23 = v31[1];
  *a9 = v31[0];
  a9[1] = v23;
  result = *&v32;
  a9[2] = v32;
  return result;
}

double MultiEdge.init(_:triggers:end:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  sub_100059CAC(a5, a5);
  v17 = *(a5 - 8);
  swift_allocObject();
  v18 = static Array._adoptStorage(_:count:)();
  (*(v17 + 16))(v19, a1, a5);
  v20 = sub_100042610(v18, a5);
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a10;
  v21[7] = a2;
  v21[8] = a3;
  v21[9] = a4;
  MultiEdge.init(startNodes:end:)(v20, sub_1002370B0, v21, v26);
  (*(v17 + 8))(a1, a5);
  v22 = v26[1];
  *a9 = v26[0];
  a9[1] = v22;
  result = *&v27;
  a9[2] = v27;
  return result;
}

double MultiEdge.init(_:to:triggers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100059CAC(a4, a4);
  v17 = *(a4 - 8);
  swift_allocObject();
  v18 = static Array._adoptStorage(_:count:)();
  (*(v17 + 16))(v19, a1, a4);
  v20 = sub_100042610(v18, a4);
  v21 = sub_1002370E4(v20, a3, a4, a5, a6, a7, a8, v26);
  v22 = *(v17 + 8);
  v22(a2, a4, v21);
  (v22)(a1, a4);
  v23 = v26[1];
  *a9 = v26[0];
  a9[1] = v23;
  result = *&v27;
  a9[2] = v27;
  return result;
}

{
  v12 = sub_1002370E4(a1, a3, a4, a5, a6, a7, a8, v15);
  (*(*(a4 - 8) + 8))(a2, a4, v12);
  v13 = v15[1];
  *a9 = v15[0];
  a9[1] = v13;
  result = *&v16;
  a9[2] = v16;
  return result;
}

uint64_t MultiEdge.end.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void MultiEdge.end.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

double MultiEdge.init(_:to:trigger:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100059CAC(a5, a5);
  v17 = *(a5 - 8);
  swift_allocObject();
  v18 = static Array._adoptStorage(_:count:)();
  (*(v17 + 16))(v19, a3, a5);
  v20 = sub_100042610(v18, a5);
  v21 = sub_1002370E4(a1, v20, a4, a5, a6, a7, a8, v25);
  (*(v17 + 8))(a3, a5, v21);
  (*(*(a4 - 8) + 8))(a2, a4);
  v22 = v25[1];
  *a9 = v25[0];
  a9[1] = v22;
  result = *&v26;
  a9[2] = v26;
  return result;
}

uint64_t sub_100236424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a9;
  v29 = a8;
  v27 = a1;
  v15 = *(a4 - 8);
  __chkstk_darwin(a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v18;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    (*(v15 + 16))(v17, a3, a4);
    v20 = v28;
    v19 = v29;
    End.init(_:)(v17, a4, a5, a6, a7, v29, v28);
    v30 = a4;
    v31 = a5;
    v32 = a6;
    v33 = a7;
    v34 = v19;
  }

  else
  {
    v30 = a2;
    swift_getWitnessTable();
    if ((Sequence<>.contains(_:)() & 1) == 0)
    {
      v30 = a4;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v34 = v29;
      v24 = type metadata accessor for End(0, &v30);
      v25 = 1;
      v20 = v28;
      return (*(*(v24 - 8) + 56))(v20, v25, 1);
    }

    (*(v15 + 16))(v17, a3, a4);
    v20 = v28;
    v21 = a6;
    v22 = a6;
    v23 = v29;
    End.init(_:)(v17, a4, a5, v22, a7, v29, v28);
    v30 = a4;
    v31 = a5;
    v32 = v21;
    v33 = a7;
    v34 = v23;
  }

  v24 = type metadata accessor for End(0, &v30);
  v25 = 0;
  return (*(*(v24 - 8) + 56))(v20, v25, 1);
}

uint64_t MultiEdge.init(startNodes:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a6@<X8>)
{
  swift_getFunctionTypeMetadata1();
  v10 = static Array._allocateUninitialized(_:)();
  swift_getFunctionTypeMetadata1();
  v11 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  result = static Array._allocateUninitialized(_:)();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = v10;
  a6[4] = v11;
  a6[5] = result;
  return result;
}

double MultiEdge.init(_:to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a2;
  v18[8] = a3;
  MultiEdge.init(startNodes:end:)(a1, sub_100237258, v18, v21);
  v19 = v21[1];
  *a9 = v21[0];
  a9[1] = v19;
  result = *&v22;
  a9[2] = v22;
  return result;
}

uint64_t sub_100236828@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v36 = a8;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = *(a3 - 8);
  v17 = __chkstk_darwin(v13);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  a2(a1);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v37 = a3;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v22 = type metadata accessor for End(0, &v37);
    v23 = 1;
    v24 = v36;
  }

  else
  {
    (*(v16 + 32))(v21, v15, a3);
    (*(v16 + 16))(v19, v21, a3);
    v25 = v36;
    v26 = v19;
    v28 = v32;
    v27 = v33;
    v30 = v34;
    v29 = v35;
    End.init(_:)(v26, a3, v32, v33, v34, v35, v36);
    (*(v16 + 8))(v21, a3);
    v37 = a3;
    v38 = v28;
    v39 = v27;
    v40 = v30;
    v41 = v29;
    v22 = type metadata accessor for End(0, &v37);
    v23 = 0;
    v24 = v25;
  }

  return (*(*(v22 - 8) + 56))(v24, v23, 1);
}

uint64_t sub_100236AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v19[0] = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return a3(a1);
  }

  v19[0] = a2;
  swift_getWitnessTable();
  if (Sequence<>.contains(_:)())
  {
    return a3(a1);
  }

  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a9;
  v17 = type metadata accessor for End(0, v19);
  return (*(*(v17 - 8) + 56))(a8, 1, 1, v17);
}

uint64_t sub_100236C38@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return a3(a1);
  }

  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a9;
  v17 = type metadata accessor for End(0, v18);
  return (*(*(v17 - 8) + 56))(a8, 1, 1, v17);
}

uint64_t MultiEdge.asEdges()(void *a1)
{
  v17 = *v1;
  v18 = v17;
  v2 = a1[3];
  v12 = a1[2];
  v13 = v2;
  v3 = a1[5];
  v14 = a1[4];
  v15 = v3;
  v4 = a1[6];
  v5 = type metadata accessor for Array();

  v16[0] = v12;
  v16[1] = v2;
  v16[2] = v14;
  v16[3] = v3;
  v16[4] = v4;
  v6 = type metadata accessor for Edge2(0, v16);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_10007F168(sub_10023726C, &v11, v5, v6, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
  (*(*(v5 - 8) + 8))(&v18, v5);
  return v9;
}

void sub_100236ED8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __chkstk_darwin(a1);
  v16 = &v28[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a2[1];
  v18 = a2[2];

  Edge2.init(start:end:)(v16, v19, v18, a3, a4, a5, a6, a7, a8);
  v20 = a2[3];
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v21 = type metadata accessor for Edge2(0, v28);
  v22 = v21[16];

  *(a8 + v22) = v20;
  v23 = a2[4];
  v24 = v21[17];

  *(a8 + v24) = v23;
  v25 = a2[5];
  v26 = v21[18];

  *(a8 + v26) = v25;
}

double sub_1002370E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  v21 = a7;
  v22 = a1;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a6;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v14 + 32))(&v18[v17], v16, a3);
  MultiEdge.init(startNodes:end:)(v22, sub_1002373B8, v18, v23);
  v19 = v23[1];
  *a8 = v23[0];
  a8[1] = v19;
  result = *&v24;
  a8[2] = v24;
  return result;
}

uint64_t sub_100237294(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002372D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10023730C(uint64_t *a1, int a2)
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

uint64_t sub_100237354(uint64_t result, int a2, int a3)
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

uint64_t _s14descr1002FF079V23HandoffEnabledHeartbeatVwet(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1002374D8(uint64_t a1)
{
  result = sub_100237500();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100237500()
{
  result = qword_10034F770;
  if (!qword_10034F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F770);
  }

  return result;
}

uint64_t sub_100237554()
{
  v1 = 0x546D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x657373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

unint64_t sub_1002375C0(uint64_t a1)
{
  result = sub_1002375E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002375E8()
{
  result = qword_10034F778;
  if (!qword_10034F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F778);
  }

  return result;
}

uint64_t sub_10023763C(uint64_t *a1, uint64_t *a2)
{
  v3 = qword_100347AC8;
  if (*(v2 + qword_100347AC8))
  {
    v4 = *(v2 + qword_100347AC8);
  }

  else
  {
    v5 = v2;
    sub_100035D04(a1, a2);
    swift_allocObject();
    v4 = PassthroughSubject.init()();
    *(v5 + v3) = v4;
  }

  return v4;
}

uint64_t sub_1002376DC(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v5 = qword_100347AD0;
  if (*(v3 + qword_100347AD0))
  {
    v6 = *(v3 + qword_100347AD0);
  }

  else
  {
    sub_10023763C(a1, a2);
    sub_100035D04(a1, a2);
    sub_10000E244(a3, a1, a2, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();

    *(v3 + v5) = v6;
  }

  return v6;
}

id sub_1002377E4(uint64_t a1, unint64_t a2, const char **a3)
{
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  v12 = *(v7 + qword_100347AB0);
  v13 = *a3;

  return [v12 v13];
}

uint64_t sub_100237910()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034F780);
  sub_100003078(v0, qword_10034F780);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100237990()
{
  v1 = v0;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034F780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_unownedRelease();

  return v1;
}

uint64_t sub_100237A90()
{
  sub_100237990();

  return swift_deallocClassInstance();
}

id sub_100237AE8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034F898, &qword_1002942E8);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v23 = v22 - v7;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v8 = sub_100003078(v2, qword_10034F780);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, v26);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_10000903C(v12);
  }

  v22[1] = *(v1 + 24);
  v13 = sub_1002376DC(&qword_10034F8C0, &qword_100294300, &qword_10034F8C8);
  v14 = static os_log_type_t.info.getter();
  v26[0] = v13;
  (*(v3 + 16))(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v2);
  v15 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v16 = v15 + v4;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0x6B6E696C2077654ELL;
  *(v17 + 5) = 0xEA0000000000203ALL;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0xE000000000000000;
  (*(v3 + 32))(&v17[v15], v5, v2);
  v17[v16] = v14;
  sub_100035D04(&qword_10034F8A0, &unk_1002942F0);
  sub_100035D04(&qword_10034B518, &qword_100289688);
  sub_10000E244(&qword_10034F8A8, &qword_10034F8A0, &unk_1002942F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v18 = v23;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034F8B0, &qword_10034F898, &qword_1002942E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v25;
  v20 = Publisher.eraseToAnyPublisher()();

  (*(v24 + 8))(v18, v19);
  v26[0] = v20;

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return sub_1002377E4(0x29287472617473, 0xE700000000000000, &selRef_resume);
}

double sub_100237FA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_unownedRetainStrong();
  type metadata accessor for ProxControlDemoBridgeServer();
  swift_allocObject();

  v4 = sub_10009D168(v3, v2);

  sub_1002384E0(&qword_10034F8B8, 255, type metadata accessor for ProxControlDemoBridgeServer, &unk_1002747AC);
  v5 = Identifiable<>.id.getter();
  sub_10004A124(v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v4[6];
  v9 = v4[7];
  v4[6] = sub_100238528;
  v4[7] = v7;

  sub_10002689C(v8, v9);

  return result;
}

double sub_100238104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10004B0C0(a2);
  }

  return result;
}

double sub_10023818C()
{
  v1 = v0;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034F780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_1002377E4(0x2928706F7473, 0xE600000000000000, &selRef_invalidate);
  swift_beginAccess();
  *(v1 + 40) = &_swiftEmptySetSingleton;

  return result;
}

uint64_t sub_10023831C(uint64_t a1, uint64_t a2)
{
  if (a1 == 7761509 && a2 == 0xE300000000000000)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100238370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1002383C4(uint64_t a1, uint64_t a2)
{
  result = sub_1002384E0(&qword_10034F890, a2, type metadata accessor for ProxControlDemoLinkServerManager, &unk_1002942A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023841C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CE1A0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1002384E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100238530(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(sub_100035D04(&qword_100346DD0, &qword_100294310));
  v1[3] = sub_10013DF08(0xD00000000000002ELL, 0x80000001002A6950);
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10034F8E0, &unk_100294350);
  swift_allocObject();
  v6 = sub_10006D5A4(KeyPath, 0);

  v2[4] = v6;
  v2[5] = &_swiftEmptySetSingleton;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034F780);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  v2[2] = a1;
  swift_unownedRetain();
  return v2;
}

double sub_1002386BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100238710()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034F8E8);
  sub_100003078(v0, qword_10034F8E8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100238790()
{
  type metadata accessor for SetupAssistantMonitor();
  v0 = swift_allocObject();
  result = sub_100238804();
  qword_10038B600 = v0;
  return result;
}

uint64_t sub_1002387CC()
{
  result = BYSetupAssistantFinishedDarwinNotification;
  if (BYSetupAssistantFinishedDarwinNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    qword_10034F900 = result;
    *algn_10034F908 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_100238804()
{
  v1 = v0;
  v2 = *v0;
  sub_100035D04(&qword_100339900, &unk_1002703D0);
  swift_allocObject();
  v0[2] = sub_10002AA3C(1, 0, 0, 0, 0xD00000000000001DLL, 0x80000001002A69C0);
  *(v0 + 6) = -1;
  if (qword_100339298 != -1)
  {
    swift_once();
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v3 = qword_10038B5B8;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  aBlock[4] = sub_100239124;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002386BC;
  aBlock[3] = &unk_100316090;
  v6 = _Block_copy(aBlock);

  v7 = String.utf8CString.getter();
  swift_beginAccess();
  notify_register_dispatch((v7 + 32), v0 + 6, v3, v6);
  swift_endAccess();

  _Block_release(v6);
  v8 = BYSetupAssistantNeedsToRun();

  sub_100005000(v8 ^ 1);

  if (qword_100339288 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10034F8E8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;

    CurrentValueSubject.value.getter();
    v13 = v15;
    if (v15 == 2)
    {
      CurrentValueSubject.value.getter();

      v13 = aBlock[0];
    }

    else
    {
    }

    *(v12 + 4) = v13 & 1;

    _os_log_impl(&_mh_execute_header, v10, v11, "Init: isSetUp=%{BOOL}d", v12, 8u);
  }

  else
  {
  }

  return v1;
}

double sub_100238B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_10023912C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003160E0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_100239134(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

double sub_100238E6C(uint64_t a1)
{
  if (qword_100339288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034F8E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7[0] = v5;
    *v4 = 136315138;
    if (qword_100339298 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_100017494(qword_10034F900, *algn_10034F908, v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setup completed! %s fired", v4, 0xCu);
    sub_10000903C(v5);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100005000(1);
  }

  return result;
}

uint64_t sub_10023901C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100239078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1002390CC(uint64_t a1, uint64_t a2)
{
  result = sub_100239134(qword_10034F9F0, a2, type metadata accessor for SetupAssistantMonitor, &unk_1002943A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100239134(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002391B8()
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for HandoffTargetStatus(0);
  sub_1002394A0();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  if (v0)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v2;
    *(inited + 80) = v4;
    v2 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
  }

  return v2;
}

unint64_t sub_100239320(int a1, uint64_t a2, char a3)
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10015DD44();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (v3)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    v5 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
  }

  return v5;
}

unint64_t sub_1002394A0()
{
  result = qword_1003480F8;
  if (!qword_1003480F8)
  {
    type metadata accessor for HandoffTargetStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003480F8);
  }

  return result;
}

BOOL sub_10023951C()
{
  sub_1000104F8();
  v1 = v0;
  sub_100008574();
  v3 = sub_1000089FC(v2, v1);

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t sub_100239584(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100239624(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = v14 - v4;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v6._countAndFlagsBits = 0x64616F6C7961703CLL;
  v6._object = 0xE90000000000003DLL;
  String.append(_:)(v6);
  (*(v3 + 16))(v5, v1 + *(*v1 + 88), v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v3 + 8))(v5, v2);
  v7._object = 0x80000001002A6B80;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);

  v8 = Dictionary.description.getter();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14[0];
}

uint64_t sub_1002397F8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_100239884()
{
  sub_1002397F8();

  return swift_deallocClassInstance();
}

uint64_t sub_100239918()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v12 = 0x6E6F69737365733CLL;
  v13 = 0xEB000000003D4449;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7473656D6974202CLL;
  v8._object = 0xEC0000003D706D61;
  String.append(_:)(v8);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCO17proximitycontrold33HandoffRemoteLeaderSessionRequest7Started_timestamp, v1);
  sub_10015CC9C();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  (*(v2 + 8))(v4, v1);
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v12;
}

uint64_t sub_100239AF8(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_100239BB8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100239C14()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0x6E6F69737365733CLL;
}

uint64_t sub_100239C9C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v5._countAndFlagsBits = 0x6E6F69737365733CLL;
  v5._object = 0xEB000000003D4449;
  String.append(_:)(v5);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x61745364656C202CLL;
  v9._object = 0xEB000000003D6574;
  String.append(_:)(v9);
  v14[15] = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x7473656D6974202CLL;
  v10._object = 0xEC0000003D706D61;
  String.append(_:)(v10);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCO17proximitycontrold33HandoffRemoteLeaderSessionRequest6Update_timestamp, v1);
  sub_10015CC9C();
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  (*(v2 + 8))(v4, v1);
  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v15;
}

uint64_t sub_100239EA0(uint64_t *a1)
{

  v3 = *a1;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100239F6C(uint64_t a1)
{
  result = type metadata accessor for Date();
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

unint64_t sub_10023A034()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  LOBYTE(v1) = *(v1 + 32);
  sub_100159F0C(v2, v3, v1);
  v4 = sub_1001F7300(v2, v3, v1);
  v6 = v5;
  sub_10000F024(v2, v3, v1);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000011;
}

uint64_t sub_10023A110()
{
  sub_10000F024(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t End.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v10 = type metadata accessor for End(0, v15);
  v11 = v10[15];
  swift_getFunctionTypeMetadata1();
  *(a7 + v11) = static Array._allocateUninitialized(_:)();
  v12 = v10[16];
  swift_getFunctionTypeMetadata1();
  *(a7 + v12) = static Array._allocateUninitialized(_:)();
  v13 = v10[17];
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  *(a7 + v13) = static Array._allocateUninitialized(_:)();
  return (*(*(a2 - 8) + 32))(a7, a1, a2);
}

void End.actions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);

  *(v2 + v4) = a1;
}

uint64_t sub_10023A344(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      result = type metadata accessor for Array();
      if (v4 <= 0x3F)
      {
        type metadata accessor for Array();
        swift_getFunctionTypeMetadata1();
        result = type metadata accessor for Array();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10023A460(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_10023A5AC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata accessor for RemoteFollowerMessage(uint64_t a1)
{
  result = qword_10034FF48;
  if (!qword_10034FF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023A7F0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10023A874(void *a1, uint64_t a2, int a3)
{
  v28 = a3;
  v27 = a2;
  v4 = sub_100035D04(&qword_10034FFF8, &qword_1002947F0);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v21 - v5;
  v6 = sub_100035D04(&qword_100350000, &qword_1002947F8);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_100035D04(&qword_100350008, &qword_100294800);
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_100035D04(&qword_100350010, &qword_100294808);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_10023C16C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28)
  {
    if (v28 == 1)
    {
      v36 = 2;
      sub_10023C1C0();
      v16 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = BYTE1(v27);
      v35 = v27;
      v34 = 0;
      sub_1001D0EC0();
      v18 = v26;
      v19 = v29;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v19)
      {
        v33 = v17;
        v32 = 1;
        sub_10023C364();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      }

      (*(v25 + 8))(v16, v18);
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      v31 = 1;
      sub_10023C2BC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v22 + 8))(v8, v23);
      return (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    v30 = 0;
    sub_10023C310();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10023ACEC()
{
  v1 = 0x6465646E65;
  if (*v0 != 1)
  {
    v1 = 0x74757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657472617473;
  }
}