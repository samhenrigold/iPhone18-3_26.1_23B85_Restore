uint64_t _s7CoreIDV31IdentityDocumentElementCategoryV6groups03forD4Type9namespace10identifierShyACGAA21ISO18013KnownDocTypesO_S2StFZ_0(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  ISO18013KnownNamespaces.init(rawValue:)(v10);
  v11 = v49;
  if (v49 != 5)
  {
    if (v9)
    {
      v23 = MEMORY[0x277D84FA0];
      if (v9 == 1)
      {
        v24 = v49 >= 2u;
        if (v49 > 2u)
        {
          if (v49 == 3)
          {
            v25 = sub_21CCDFE60(a4, a5);
            goto LABEL_33;
          }

LABEL_25:
          if (!*(v23 + 16))
          {
            goto LABEL_34;
          }

          goto LABEL_59;
        }
      }

      else
      {
        v24 = v49 >= 2u;
        if (v49 > 2u)
        {
          if (v49 != 3)
          {

            v26._countAndFlagsBits = a4;
            v26._object = a5;
            ISO23220_PhotoID_1_ElementIdentifier.init(rawValue:)(v26);
          }

          goto LABEL_25;
        }
      }

      if (!v24)
      {
        goto LABEL_25;
      }

      v25 = sub_21CCDFC7C(a4, a5);
    }

    else
    {
      if (v49 - 2 < 3)
      {
        v23 = MEMORY[0x277D84FA0];
        if (!*(MEMORY[0x277D84FA0] + 16))
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }

      if (v49)
      {
        v25 = sub_21CCDFB9C(a4, a5);
      }

      else
      {
        v25 = sub_21CCDF970(a4, a5);
      }
    }

LABEL_33:
    v23 = v25;
    if (!*(v25 + 16))
    {
LABEL_34:
      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v27 = sub_21CD839F4();
      __swift_project_value_buffer(v27, qword_280F78E40);

      v28 = sub_21CD839D4();
      v29 = sub_21CD83E24();

      if (os_log_type_enabled(v28, v29))
      {
        v48 = v29;
        v30 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v30 = 136315650;
        v31 = "org.iso.18013.5.1.mDL";
        v32 = 0xD000000000000016;
        if (v9 != 1)
        {
          v32 = 0xD000000000000017;
          v31 = "org.iso.23220.1.jp.mnc";
        }

        if (v9)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0xD000000000000015;
        }

        if (v9)
        {
          v34 = v31;
        }

        else
        {
          v34 = "";
        }

        v35 = sub_21CCC02FC(v33, v34 | 0x8000000000000000, &v49);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        v36 = 0xEF312E3032323332;
        v37 = 0x2E6F73692E67726FLL;
        v38 = 0x800000021CD9C650;
        v39 = 0xD000000000000012;
        if (v11 != 3)
        {
          v39 = 0xD000000000000017;
          v38 = 0x800000021CD9C5E0;
        }

        if (v11 != 2)
        {
          v37 = v39;
          v36 = v38;
        }

        v40 = 0x800000021CD9C600;
        v41 = 0xD000000000000011;
        if (v11)
        {
          v41 = 0xD000000000000017;
          v40 = 0x800000021CD9C620;
        }

        if (v11 <= 1)
        {
          v42 = v41;
        }

        else
        {
          v42 = v37;
        }

        if (v11 <= 1)
        {
          v43 = v40;
        }

        else
        {
          v43 = v36;
        }

        v44 = sub_21CCC02FC(v42, v43, &v49);

        *(v30 + 14) = v44;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_21CCC02FC(a4, a5, &v49);
        _os_log_impl(&dword_21CC90000, v28, v48, "Invalid document type/element combination:%s:%s:%s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CF18580](v47, -1, -1);
        MEMORY[0x21CF18580](v30, -1, -1);
      }
    }

LABEL_59:
    v45 = sub_21CCDEE90(sub_21CCDFF48, 0, v23);

    v46 = sub_21CCF0240(v45);

    return v46;
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v12 = sub_21CD839F4();
  __swift_project_value_buffer(v12, qword_280F78E40);

  v13 = sub_21CD839D4();
  v14 = sub_21CD83E24();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v49 = v16;
    *v15 = 136315650;
    v17 = "org.iso.18013.5.1.mDL";
    v18 = 0xD000000000000016;
    if (v9 != 1)
    {
      v18 = 0xD000000000000017;
      v17 = "org.iso.23220.1.jp.mnc";
    }

    if (v9)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0xD000000000000015;
    }

    if (v9)
    {
      v20 = v17;
    }

    else
    {
      v20 = "";
    }

    v21 = sub_21CCC02FC(v19, v20 | 0x8000000000000000, &v49);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_21CCC02FC(a2, a3, &v49);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_21CCC02FC(a4, a5, &v49);
    _os_log_impl(&dword_21CC90000, v13, v14, "Invalid document type/element combination:%s:%s:%s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF18580](v16, -1, -1);
    MEMORY[0x21CF18580](v15, -1, -1);
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21CCE5564()
{
  result = qword_27CE19780;
  if (!qword_27CE19780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19780);
  }

  return result;
}

unint64_t sub_21CCE55B8()
{
  result = qword_27CE19788;
  if (!qword_27CE19788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19788);
  }

  return result;
}

unint64_t sub_21CCE560C()
{
  result = qword_27CE19790;
  if (!qword_27CE19790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19790);
  }

  return result;
}

unint64_t sub_21CCE5660()
{
  result = qword_27CE19798;
  if (!qword_27CE19798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19798);
  }

  return result;
}

unint64_t sub_21CCE56B4()
{
  result = qword_27CE197A0;
  if (!qword_27CE197A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197A0);
  }

  return result;
}

unint64_t sub_21CCE5708()
{
  result = qword_27CE197A8;
  if (!qword_27CE197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197A8);
  }

  return result;
}

unint64_t sub_21CCE575C()
{
  result = qword_27CE197B0;
  if (!qword_27CE197B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197B0);
  }

  return result;
}

unint64_t sub_21CCE57B0()
{
  result = qword_27CE197B8;
  if (!qword_27CE197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197B8);
  }

  return result;
}

unint64_t sub_21CCE5804()
{
  result = qword_27CE197C0;
  if (!qword_27CE197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197C0);
  }

  return result;
}

unint64_t sub_21CCE5858()
{
  result = qword_27CE197C8;
  if (!qword_27CE197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197C8);
  }

  return result;
}

unint64_t sub_21CCE58AC()
{
  result = qword_27CE197D0;
  if (!qword_27CE197D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197D0);
  }

  return result;
}

unint64_t sub_21CCE5900()
{
  result = qword_27CE197D8;
  if (!qword_27CE197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197D8);
  }

  return result;
}

unint64_t sub_21CCE5954()
{
  result = qword_27CE197E0;
  if (!qword_27CE197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197E0);
  }

  return result;
}

unint64_t sub_21CCE59A8()
{
  result = qword_27CE197E8;
  if (!qword_27CE197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197E8);
  }

  return result;
}

unint64_t sub_21CCE59FC()
{
  result = qword_27CE197F0;
  if (!qword_27CE197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197F0);
  }

  return result;
}

unint64_t sub_21CCE5A50()
{
  result = qword_27CE197F8;
  if (!qword_27CE197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE197F8);
  }

  return result;
}

unint64_t sub_21CCE5AA4()
{
  result = qword_27CE19800;
  if (!qword_27CE19800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19800);
  }

  return result;
}

unint64_t sub_21CCE5AF8()
{
  result = qword_27CE19808;
  if (!qword_27CE19808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19808);
  }

  return result;
}

unint64_t sub_21CCE5B4C()
{
  result = qword_27CE19810;
  if (!qword_27CE19810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19810);
  }

  return result;
}

unint64_t sub_21CCE5BA0()
{
  result = qword_27CE19818;
  if (!qword_27CE19818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19818);
  }

  return result;
}

unint64_t sub_21CCE5BF4()
{
  result = qword_27CE19820;
  if (!qword_27CE19820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19820);
  }

  return result;
}

unint64_t sub_21CCE5C48()
{
  result = qword_27CE19828;
  if (!qword_27CE19828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19828);
  }

  return result;
}

unint64_t sub_21CCE5C9C()
{
  result = qword_27CE19830;
  if (!qword_27CE19830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19830);
  }

  return result;
}

unint64_t sub_21CCE5CF0()
{
  result = qword_27CE19838;
  if (!qword_27CE19838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19838);
  }

  return result;
}

unint64_t sub_21CCE5D44()
{
  result = qword_27CE19840;
  if (!qword_27CE19840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19840);
  }

  return result;
}

unint64_t sub_21CCE5D98()
{
  result = qword_27CE19848;
  if (!qword_27CE19848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19848);
  }

  return result;
}

unint64_t sub_21CCE5DEC()
{
  result = qword_27CE19928;
  if (!qword_27CE19928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19928);
  }

  return result;
}

unint64_t sub_21CCE5E40()
{
  result = qword_27CE19930;
  if (!qword_27CE19930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19930);
  }

  return result;
}

unint64_t sub_21CCE5E94()
{
  result = qword_27CE19940;
  if (!qword_27CE19940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19940);
  }

  return result;
}

unint64_t sub_21CCE5EEC()
{
  result = qword_27CE19948;
  if (!qword_27CE19948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19948);
  }

  return result;
}

unint64_t sub_21CCE5F44()
{
  result = qword_27CE19950;
  if (!qword_27CE19950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19950);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IdentityDocumentElementCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentElementCategory.CategoryType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityDocumentElementCategory.CategoryType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CCE62D8()
{
  result = qword_27CE19958;
  if (!qword_27CE19958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19958);
  }

  return result;
}

unint64_t sub_21CCE6330()
{
  result = qword_27CE19960;
  if (!qword_27CE19960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19960);
  }

  return result;
}

unint64_t sub_21CCE6388()
{
  result = qword_27CE19968;
  if (!qword_27CE19968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19968);
  }

  return result;
}

unint64_t sub_21CCE63E0()
{
  result = qword_27CE19970;
  if (!qword_27CE19970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19970);
  }

  return result;
}

unint64_t sub_21CCE6438()
{
  result = qword_27CE19978;
  if (!qword_27CE19978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19978);
  }

  return result;
}

unint64_t sub_21CCE6490()
{
  result = qword_27CE19980;
  if (!qword_27CE19980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19980);
  }

  return result;
}

unint64_t sub_21CCE64E8()
{
  result = qword_27CE19988;
  if (!qword_27CE19988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19988);
  }

  return result;
}

unint64_t sub_21CCE6540()
{
  result = qword_27CE19990;
  if (!qword_27CE19990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19990);
  }

  return result;
}

unint64_t sub_21CCE6598()
{
  result = qword_27CE19998;
  if (!qword_27CE19998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19998);
  }

  return result;
}

unint64_t sub_21CCE65F0()
{
  result = qword_27CE199A0;
  if (!qword_27CE199A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199A0);
  }

  return result;
}

unint64_t sub_21CCE6648()
{
  result = qword_27CE199A8;
  if (!qword_27CE199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199A8);
  }

  return result;
}

unint64_t sub_21CCE66A0()
{
  result = qword_27CE199B0;
  if (!qword_27CE199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199B0);
  }

  return result;
}

unint64_t sub_21CCE66F8()
{
  result = qword_27CE199B8;
  if (!qword_27CE199B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199B8);
  }

  return result;
}

unint64_t sub_21CCE6750()
{
  result = qword_27CE199C0;
  if (!qword_27CE199C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199C0);
  }

  return result;
}

unint64_t sub_21CCE67A8()
{
  result = qword_27CE199C8;
  if (!qword_27CE199C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199C8);
  }

  return result;
}

unint64_t sub_21CCE6800()
{
  result = qword_27CE199D0;
  if (!qword_27CE199D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199D0);
  }

  return result;
}

unint64_t sub_21CCE6858()
{
  result = qword_27CE199D8;
  if (!qword_27CE199D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199D8);
  }

  return result;
}

unint64_t sub_21CCE68B0()
{
  result = qword_27CE199E0;
  if (!qword_27CE199E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199E0);
  }

  return result;
}

unint64_t sub_21CCE6908()
{
  result = qword_27CE199E8;
  if (!qword_27CE199E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199E8);
  }

  return result;
}

unint64_t sub_21CCE6960()
{
  result = qword_27CE199F0;
  if (!qword_27CE199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199F0);
  }

  return result;
}

unint64_t sub_21CCE69B8()
{
  result = qword_27CE199F8;
  if (!qword_27CE199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE199F8);
  }

  return result;
}

unint64_t sub_21CCE6A10()
{
  result = qword_27CE19A00;
  if (!qword_27CE19A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A00);
  }

  return result;
}

unint64_t sub_21CCE6A68()
{
  result = qword_27CE19A08;
  if (!qword_27CE19A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A08);
  }

  return result;
}

unint64_t sub_21CCE6AC0()
{
  result = qword_27CE19A10;
  if (!qword_27CE19A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A10);
  }

  return result;
}

unint64_t sub_21CCE6B18()
{
  result = qword_27CE19A18;
  if (!qword_27CE19A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A18);
  }

  return result;
}

unint64_t sub_21CCE6B70()
{
  result = qword_27CE19A20;
  if (!qword_27CE19A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A20);
  }

  return result;
}

unint64_t sub_21CCE6BC8()
{
  result = qword_27CE19A28;
  if (!qword_27CE19A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A28);
  }

  return result;
}

unint64_t sub_21CCE6C20()
{
  result = qword_27CE19A30;
  if (!qword_27CE19A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A30);
  }

  return result;
}

unint64_t sub_21CCE6C78()
{
  result = qword_27CE19A38;
  if (!qword_27CE19A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A38);
  }

  return result;
}

unint64_t sub_21CCE6CD0()
{
  result = qword_27CE19A40;
  if (!qword_27CE19A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A40);
  }

  return result;
}

unint64_t sub_21CCE6D28()
{
  result = qword_27CE19A48;
  if (!qword_27CE19A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A48);
  }

  return result;
}

unint64_t sub_21CCE6D80()
{
  result = qword_27CE19A50;
  if (!qword_27CE19A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A50);
  }

  return result;
}

unint64_t sub_21CCE6DD8()
{
  result = qword_27CE19A58;
  if (!qword_27CE19A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A58);
  }

  return result;
}

unint64_t sub_21CCE6E30()
{
  result = qword_27CE19A60;
  if (!qword_27CE19A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A60);
  }

  return result;
}

unint64_t sub_21CCE6E88()
{
  result = qword_27CE19A68;
  if (!qword_27CE19A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A68);
  }

  return result;
}

unint64_t sub_21CCE6EE0()
{
  result = qword_27CE19A70;
  if (!qword_27CE19A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A70);
  }

  return result;
}

unint64_t sub_21CCE6F38()
{
  result = qword_27CE19A78;
  if (!qword_27CE19A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A78);
  }

  return result;
}

unint64_t sub_21CCE6F90()
{
  result = qword_27CE19A80;
  if (!qword_27CE19A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A80);
  }

  return result;
}

unint64_t sub_21CCE6FE8()
{
  result = qword_27CE19A88;
  if (!qword_27CE19A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A88);
  }

  return result;
}

unint64_t sub_21CCE7040()
{
  result = qword_27CE19A90;
  if (!qword_27CE19A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A90);
  }

  return result;
}

unint64_t sub_21CCE7098()
{
  result = qword_27CE19A98;
  if (!qword_27CE19A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19A98);
  }

  return result;
}

unint64_t sub_21CCE70F0()
{
  result = qword_27CE19AA0;
  if (!qword_27CE19AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AA0);
  }

  return result;
}

unint64_t sub_21CCE7148()
{
  result = qword_27CE19AA8;
  if (!qword_27CE19AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AA8);
  }

  return result;
}

unint64_t sub_21CCE71A0()
{
  result = qword_27CE19AB0;
  if (!qword_27CE19AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AB0);
  }

  return result;
}

unint64_t sub_21CCE71F8()
{
  result = qword_27CE19AB8;
  if (!qword_27CE19AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AB8);
  }

  return result;
}

unint64_t sub_21CCE7250()
{
  result = qword_27CE19AC0;
  if (!qword_27CE19AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AC0);
  }

  return result;
}

unint64_t sub_21CCE72A8()
{
  result = qword_27CE19AC8;
  if (!qword_27CE19AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AC8);
  }

  return result;
}

unint64_t sub_21CCE7300()
{
  result = qword_27CE19AD0;
  if (!qword_27CE19AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AD0);
  }

  return result;
}

unint64_t sub_21CCE7358()
{
  result = qword_27CE19AD8;
  if (!qword_27CE19AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AD8);
  }

  return result;
}

unint64_t sub_21CCE73B0()
{
  result = qword_27CE19AE0;
  if (!qword_27CE19AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AE0);
  }

  return result;
}

unint64_t sub_21CCE7408()
{
  result = qword_27CE19AE8;
  if (!qword_27CE19AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AE8);
  }

  return result;
}

unint64_t sub_21CCE7460()
{
  result = qword_27CE19AF0;
  if (!qword_27CE19AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AF0);
  }

  return result;
}

unint64_t sub_21CCE74B8()
{
  result = qword_27CE19AF8;
  if (!qword_27CE19AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19AF8);
  }

  return result;
}

unint64_t sub_21CCE7510()
{
  result = qword_27CE19B00;
  if (!qword_27CE19B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B00);
  }

  return result;
}

unint64_t sub_21CCE7568()
{
  result = qword_27CE19B08;
  if (!qword_27CE19B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B08);
  }

  return result;
}

unint64_t sub_21CCE75C0()
{
  result = qword_27CE19B10;
  if (!qword_27CE19B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B10);
  }

  return result;
}

unint64_t sub_21CCE7618()
{
  result = qword_27CE19B18;
  if (!qword_27CE19B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B18);
  }

  return result;
}

uint64_t sub_21CCE766C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165596874726962 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61654C7441656761 && a2 == 0xEA00000000007473 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_21CD841A4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA60 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9DA00 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_21CD841A4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CD9DA40 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9D9E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9EB80 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA80 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x536E617265746576 && a2 == 0xED00007375746174)
  {

    return 24;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_21CCE7E34(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_21CCE7E40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21CCF13F0();
  result = MEMORY[0x21CF17850](v2, &type metadata for MobileDocumentElement, v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_21CCEB070(v13, *v12, *(v12 + 8)))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 48) + ((v10 << 10) | (16 * v11));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCE7F44(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentType(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_21CCF1444(&qword_27CE19CB0, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  result = MEMORY[0x21CF17850](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_21CCF14F4(v8, type metadata accessor for MobileDocumentType))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_21CCF148C(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for MobileDocumentType);
    sub_21CCF1554(v10, v5, type metadata accessor for MobileDocumentType);
    sub_21CCEB424(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void IdentityDocumentElementCategoryGroups.retainedElementRetentionIntent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t IdentityDocumentElementCategoryGroups.init(documentType:documentElements:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_21CD84024();

  v122 = v5;
  if (v5 >= 3)
  {

LABEL_61:
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a3 + 72;
    v118 = MEMORY[0x277D84F90];
    v119 = a3;
    v112 = a3 + 72;
    v115 = *(a3 + 16);
    while (2)
    {
      v10 = (v9 + 48 * v8);
      v11 = v7 - v8;
      while (1)
      {
        if (v8 >= *(a3 + 16))
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v12 = *(v10 - 5);
        v13 = *(v10 - 4);
        v15 = *(v10 - 3);
        v14 = *(v10 - 2);
        v16 = *(v10 - 1);
        v17 = *v10;
        LOBYTE(v124) = v122;

        v18 = *(_s7CoreIDV31IdentityDocumentElementCategoryV6groups03forD4Type9namespace10identifierShyACGAA21ISO18013KnownDocTypesO_S2StFZ_0(&v124, v12, v13, v15, v14) + 16);

        if (v18)
        {
          break;
        }

        v10 += 48;
        ++v8;
        --v11;
        a3 = v119;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      v19 = v118;
      result = swift_isUniquelyReferenced_nonNull_native();
      v125 = v118;
      if ((result & 1) == 0)
      {
        result = sub_21CCEA748(0, v118[2] + 1, 1);
        v19 = v125;
      }

      v20 = v16;
      v21 = v17;
      v23 = v19[2];
      v22 = v19[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        result = sub_21CCEA748((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v19 = v125;
      }

      ++v8;
      v19[2] = v24;
      v118 = v19;
      v25 = &v19[6 * v23];
      v25[4] = v12;
      v25[5] = v13;
      v25[6] = v15;
      v25[7] = v14;
      v25[8] = v20;
      *(v25 + 72) = v21;
      a3 = v119;
      v9 = v112;
      v7 = v115;
      if (v11 != 1)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

LABEL_17:

  result = v118;
  v26 = v118[2];
  if (!v26)
  {

    goto LABEL_61;
  }

  v27 = 0;
  v28 = v118 - 2;
  v29 = MEMORY[0x277D84F90];
LABEL_19:
  v30 = &v28[6 * v27];
  while (v26 != v27)
  {
    if (v27 >= *(result + 16))
    {
      goto LABEL_96;
    }

    ++v27;
    v31 = v30 + 6;
    v32 = *(v30 + 88);
    v30 += 6;
    if ((v32 & 1) == 0)
    {
      v34 = *v31;
      v33 = v31[1];
      v35 = v31[2];
      v36 = v31[3];
      v37 = v31[4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21CCEA748(0, v29[2] + 1, 1);
        v29 = v125;
      }

      v40 = v29[2];
      v39 = v29[3];
      result = v118;
      if (v40 >= v39 >> 1)
      {
        sub_21CCEA748((v39 > 1), v40 + 1, 1);
        result = v118;
        v29 = v125;
      }

      v29[2] = v40 + 1;
      v41 = &v29[6 * v40];
      v41[4] = v34;
      v41[5] = v33;
      v41[6] = v35;
      v41[7] = v36;
      v41[8] = v37;
      *(v41 + 72) = 0;
      v28 = v118 - 2;
      goto LABEL_19;
    }
  }

  v116 = v29;
  v42 = 0;
  v43 = MEMORY[0x277D84F90];
LABEL_29:
  v44 = &v28[6 * v42];
  while (v26 != v42)
  {
    if (v42 >= *(result + 16))
    {
      goto LABEL_97;
    }

    ++v42;
    v45 = v44 + 6;
    v46 = *(v44 + 88) == 1 && v44[10] == 0;
    v44 += 6;
    if (v46)
    {
      v48 = *v45;
      v47 = v45[1];
      v49 = v45[2];
      v50 = v45[3];

      v51 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v43;
      if ((v51 & 1) == 0)
      {
        sub_21CCEA748(0, v43[2] + 1, 1);
        v43 = v125;
      }

      v53 = v43[2];
      v52 = v43[3];
      result = v118;
      if (v53 >= v52 >> 1)
      {
        sub_21CCEA748((v52 > 1), v53 + 1, 1);
        result = v118;
        v43 = v125;
      }

      v43[2] = v53 + 1;
      v54 = &v43[6 * v53];
      v54[4] = v48;
      v54[5] = v47;
      v54[6] = v49;
      v54[7] = v50;
      v54[8] = 0;
      *(v54 + 72) = 1;
      v28 = v118 - 2;
      goto LABEL_29;
    }
  }

  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
LABEL_43:
  v58 = &v28[6 * v55];
  while (v26 != v55)
  {
    if (v55 >= *(result + 16))
    {
      goto LABEL_98;
    }

    ++v55;
    v59 = v58 + 6;
    v60 = *(v58 + 88) != 1 || v58[10] == 0;
    v58 += 6;
    if (!v60)
    {
      v61 = v59[1];
      v113 = *v59;
      v62 = v59[2];
      v63 = v59[3];

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v57;
      if ((v64 & 1) == 0)
      {
        sub_21CCEA748(0, v57[2] + 1, 1);
        v56 = MEMORY[0x277D84F90];
        v57 = v125;
      }

      v66 = v57[2];
      v65 = v57[3];
      result = v118;
      if (v66 >= v65 >> 1)
      {
        sub_21CCEA748((v65 > 1), v66 + 1, 1);
        v56 = MEMORY[0x277D84F90];
        result = v118;
        v57 = v125;
      }

      v57[2] = v66 + 1;
      v67 = &v57[6 * v66];
      v67[4] = v113;
      v67[5] = v61;
      v67[6] = v62;
      v67[7] = v63;
      v67[8] = 1;
      *(v67 + 72) = 1;
      v28 = v118 - 2;
      goto LABEL_43;
    }
  }

  v125 = v56;
  v68 = *(v116 + 16);
  if (v68)
  {
    v69 = 0;
    v70 = (v116 + 56);
    while (v69 < *(v116 + 16))
    {
      ++v69;
      v72 = *(v70 - 1);
      v71 = *v70;
      v74 = *(v70 - 3);
      v73 = *(v70 - 2);
      LOBYTE(v124) = v122;

      v75 = _s7CoreIDV31IdentityDocumentElementCategoryV6groups03forD4Type9namespace10identifierShyACGAA21ISO18013KnownDocTypesO_S2StFZ_0(&v124, v74, v73, v72, v71);

      result = sub_21CCEF5A0(v75);
      v70 += 6;
      if (v68 == v69)
      {
        v76 = v125;
        v56 = MEMORY[0x277D84F90];
        goto LABEL_63;
      }
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v76 = v56;
LABEL_63:
  v77 = sub_21CCF0FE0(v76, sub_21CCF15BC, &type metadata for IdentityDocumentElementCategory, sub_21CCEABE8);

  v125 = v56;
  v78 = v43[2];
  v120 = v77;
  if (v78)
  {
    v79 = 0;
    v80 = (v43 + 7);
    while (v79 < v43[2])
    {
      ++v79;
      v82 = *(v80 - 1);
      v81 = *v80;
      v84 = *(v80 - 3);
      v83 = *(v80 - 2);
      LOBYTE(v124) = v122;

      v85 = _s7CoreIDV31IdentityDocumentElementCategoryV6groups03forD4Type9namespace10identifierShyACGAA21ISO18013KnownDocTypesO_S2StFZ_0(&v124, v84, v83, v82, v81);

      result = sub_21CCEF5A0(v85);
      v80 += 6;
      if (v78 == v79)
      {
        v86 = v125;
        v77 = v120;
        v87 = MEMORY[0x277D84F90];
        goto LABEL_69;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    return result;
  }

  v86 = v56;
  v87 = v56;
LABEL_69:

  v88 = sub_21CCF0FE0(v86, sub_21CCF15BC, &type metadata for IdentityDocumentElementCategory, sub_21CCEABE8);

  v125 = v88;
  v124 = v87;
  v89 = v57[2];
  if (v89)
  {
    v90 = 0;
    v91 = (v57 + 7);
    while (v90 < v57[2])
    {
      ++v90;
      v93 = *(v91 - 1);
      v92 = *v91;
      v95 = *(v91 - 3);
      v94 = *(v91 - 2);
      LOBYTE(v123) = v122;

      v96 = _s7CoreIDV31IdentityDocumentElementCategoryV6groups03forD4Type9namespace10identifierShyACGAA21ISO18013KnownDocTypesO_S2StFZ_0(&v123, v95, v94, v93, v92);

      result = sub_21CCEF5A0(v96);
      v91 += 6;
      if (v89 == v90)
      {
        v97 = v124;
        goto LABEL_75;
      }
    }

    goto LABEL_101;
  }

  v97 = v87;
LABEL_75:

  v98 = sub_21CCF0FE0(v97, sub_21CCF15BC, &type metadata for IdentityDocumentElementCategory, sub_21CCEABE8);

  v124 = v98;
  sub_21CCEF918(v77);
  v114 = v125;
  sub_21CCEF918(v125);
  sub_21CCEF918(v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B30, &qword_21CD8C390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B38, &qword_21CD8C398);
  *(swift_allocObject() + 16) = xmmword_21CD88490;
  swift_getKeyPath();
  sub_21CD83514();
  swift_getKeyPath();
  sub_21CD83514();
  v123 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B40, &qword_21CD8C400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B48, &qword_21CD8C408);
  sub_21CCA6B04(&qword_27CE19B50, &qword_27CE19B40, &qword_21CD8C400, MEMORY[0x277D83B68]);
  sub_21CCA6B04(&qword_27CE19B58, &qword_27CE19B48, &qword_21CD8C408, MEMORY[0x277D83970]);
  sub_21CCA6B04(&qword_27CE19B60, &qword_27CE19B38, &qword_21CD8C398, MEMORY[0x277CC8C98]);
  v111 = sub_21CD83C34();

  v123 = v114;
  v121 = sub_21CD83C34();

  v123 = v124;
  v99 = sub_21CD83C34();

  result = v116;
  v100 = *(v116 + 16);
  if (v100)
  {
    v101 = 0;
    v102 = -1;
LABEL_77:
    v103 = (v116 + 72 + 48 * v101);
    while (v68 != v101)
    {
      if (v101 >= v100)
      {
        goto LABEL_102;
      }

      v104 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_103;
      }

      v105 = *v103;
      v103 += 48;
      ++v101;
      if ((v105 & 1) == 0)
      {
        v106 = *(v103 - 7);
        if (v106 <= v102)
        {
          v107 = v102;
        }

        else
        {
          v107 = *(v103 - 7);
        }

        if (v106)
        {
          v108 = v102 == 0;
        }

        else
        {
          v108 = 1;
        }

        if (v108)
        {
          v102 = 0;
        }

        else
        {
          v102 = v107;
        }

        v101 = v104;
        goto LABEL_77;
      }
    }

    v109 = v102 < 1;
    v110 = v102 & ~(v102 >> 63);
  }

  else
  {

    v110 = 0;
    v109 = 1;
  }

  *a4 = v118;
  *(a4 + 8) = v111;
  *(a4 + 16) = v121;
  *(a4 + 24) = v99;
  *(a4 + 32) = v122;
  *(a4 + 40) = v110;
  *(a4 + 48) = v109;
  return result;
}

uint64_t sub_21CCE8CE8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = qword_21CD8CAB0[*result];
  }

  else
  {
    *a2 = 4;
  }

  return result;
}

unint64_t sub_21CCE8D1C()
{
  v1 = *v0;
  v2 = 0x746E656D75636F64;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (v1 != 1)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21CCE8DE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CCF11F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCE8E1C(uint64_t a1)
{
  v2 = sub_21CCF0274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE8E58(uint64_t a1)
{
  v2 = sub_21CCF0274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentElementCategoryGroups.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B68, &qword_21CD8C410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v24 = *(v1 + 32);
  v11 = v1[5];
  v18 = v10;
  v19 = v11;
  v17 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF0274();

  sub_21CD842B4();
  v22 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B78, &qword_21CD8C418);
  sub_21CCF0490(&qword_27CE19B80, sub_21CCF02C8, MEMORY[0x277D83948]);
  sub_21CD84164();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = v5;
    v15 = v19;
    v14 = v20;

    v22 = v21;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B90, &qword_21CD8C420);
    sub_21CCF031C(&qword_27CE19B98, sub_21CCF0394, MEMORY[0x277D83948]);
    sub_21CD84164();
    v22 = v14;
    v25 = 2;
    sub_21CD84164();
    v22 = v18;
    v25 = 3;
    sub_21CD84164();
    LOBYTE(v22) = v24;
    v25 = 4;
    sub_21CCF03E8();
    sub_21CD84164();
    v22 = v15;
    v23 = v17;
    v25 = 5;
    sub_21CCF043C();
    sub_21CD84164();
    return (*(v13 + 8))(v7, v4);
  }
}

uint64_t IdentityDocumentElementCategoryGroups.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_21CCD09B0(a1, *v1);
  MEMORY[0x21CF17CC0](*(v2 + 16));
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 40);
    do
    {
      v9 = *(v8 - 1);
      if (*v8)
      {
        v9 = qword_21CD8CC08[v9];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
      }

      MEMORY[0x21CF17CC0](v9);
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x21CF17CC0](*(v4 + 16));
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = (v4 + 40);
    do
    {
      v12 = *(v11 - 1);
      if (*v11)
      {
        v12 = qword_21CD8CC08[v12];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
      }

      MEMORY[0x21CF17CC0](v12);
      v11 += 16;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x21CF17CC0](*(v3 + 16));
  v13 = *(v3 + 16);
  if (v13)
  {
    v14 = (v3 + 40);
    do
    {
      v15 = *(v14 - 1);
      if (*v14)
      {
        v15 = qword_21CD8CC08[v15];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
      }

      MEMORY[0x21CF17CC0](v15);
      v14 += 16;
      --v13;
    }

    while (v13);
  }

  sub_21CD83B74();

  if (v6)
  {
    v5 = 0;
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
  }

  return MEMORY[0x21CF17CC0](v5);
}

uint64_t IdentityDocumentElementCategoryGroups.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_21CD84264();
  IdentityDocumentElementCategoryGroups.hash(into:)(v6);
  return sub_21CD84294();
}

uint64_t IdentityDocumentElementCategoryGroups.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19BB8, &qword_21CD8C428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF0274();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B78, &qword_21CD8C418);
  v25 = 0;
  sub_21CCF0490(&qword_27CE19BC0, sub_21CCF0508, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v22 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B90, &qword_21CD8C420);
  v25 = 1;
  sub_21CCF031C(&qword_27CE19BD0, sub_21CCF055C, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v21 = v23;
  v25 = 2;
  sub_21CD840C4();
  v19 = 0;
  v20 = v23;
  v25 = 3;
  sub_21CD840C4();
  v18 = v23;
  v25 = 4;
  sub_21CCF05B0();
  sub_21CD840C4();
  v9 = v22;
  v10 = v23;
  v25 = 5;
  sub_21CCF0604();
  sub_21CD840C4();
  (*(v6 + 8))(v8, v5);
  v12 = v23;
  v13 = v24;
  v15 = v20;
  v14 = v21;
  *a2 = v9;
  *(a2 + 8) = v14;
  v16 = v18;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCE98EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_21CD84264();
  IdentityDocumentElementCategoryGroups.hash(into:)(v6);
  return sub_21CD84294();
}

uint64_t sub_21CCE9954()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_21CD84264();
  IdentityDocumentElementCategoryGroups.hash(into:)(v6);
  return sub_21CD84294();
}

BOOL static IdentityDocumentElementCategoryGroups.RetentionIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CCE99F4()
{
  if (*v0)
  {
    return 0x6574696E6966;
  }

  else
  {
    return 0x696E696665646E69;
  }
}

uint64_t sub_21CCE9A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696E696665646E69 && a2 == 0xEA00000000006574;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696E6966 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CCE9B10(uint64_t a1)
{
  v2 = sub_21CCF0658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE9B4C(uint64_t a1)
{
  v2 = sub_21CCF0658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE9B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCE9C20(uint64_t a1)
{
  v2 = sub_21CCF06AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE9C5C(uint64_t a1)
{
  v2 = sub_21CCF06AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE9C98(uint64_t a1)
{
  v2 = sub_21CCF0700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE9CD4(uint64_t a1)
{
  v2 = sub_21CCF0700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentElementCategoryGroups.RetentionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19BF0, &qword_21CD8C430);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19BF8, &qword_21CD8C438);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19C00, &qword_21CD8C440);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v16[1] = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF0658();
  sub_21CD842B4();
  if (v12 == 1)
  {
    v22 = 0;
    sub_21CCF0700();
    sub_21CD840E4();
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    v23 = 1;
    sub_21CCF06AC();
    v14 = v19;
    sub_21CD840E4();
    v15 = v21;
    sub_21CD84154();
    (*(v20 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t IdentityDocumentElementCategoryGroups.RetentionIntent.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x21CF17CC0](1);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t IdentityDocumentElementCategoryGroups.RetentionIntent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x21CF17CC0](1);
    v3 = v1;
  }

  MEMORY[0x21CF17CC0](v3);
  return sub_21CD84294();
}

uint64_t IdentityDocumentElementCategoryGroups.RetentionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19C20, &qword_21CD8C448);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19C28, &qword_21CD8C450);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19C30, &unk_21CD8C458);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_21CCF0658();
  v13 = v36;
  sub_21CD842A4();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  v31 = v5;
  v36 = v9;
  v14 = v35;
  v15 = sub_21CD840D4();
  v16 = (2 * *(v15 + 16)) | 1;
  v38 = v15;
  v39 = v15 + 32;
  v40 = 0;
  v41 = v16;
  v17 = sub_21CCD18DC();
  v18 = v8;
  if (v17 == 2 || v40 != v41 >> 1)
  {
    v22 = sub_21CD83FA4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v24 = &type metadata for IdentityDocumentElementCategoryGroups.RetentionIntent;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v36 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  v19 = v17;
  if (v17)
  {
    v42 = 1;
    sub_21CCF06AC();
    v20 = v4;
    sub_21CD84034();
    v21 = v36;
    v27 = v14;
    v28 = v32;
    v29 = sub_21CD840B4();
    (*(v34 + 8))(v20, v28);
    (*(v21 + 8))(v11, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
    sub_21CCF0700();
    sub_21CD84034();
    v26 = v36;
    v27 = v14;
    (*(v33 + 8))(v7, v31);
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v29 = 0;
  }

  *v27 = v29;
  *(v27 + 8) = (v19 & 1) == 0;
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_21CCEA5E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x21CF17CC0](1);
    v3 = v1;
  }

  MEMORY[0x21CF17CC0](v3);
  return sub_21CD84294();
}

uint64_t sub_21CCEA644()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x21CF17CC0](1);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t sub_21CCEA68C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
  }

  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

BOOL sub_21CCEA6EC(uint64_t a1, uint64_t a2)
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

char *sub_21CCEA728(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CCEA7F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CCEA748(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CCEA8F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21CCEA768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CCEAA0C(a1, a2, a3, *v3, &qword_27CE19CD0, &qword_21CD8CA90, MEMORY[0x277CC5D80]);
  *v3 = result;
  return result;
}

void *sub_21CCEA7AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CCEAA0C(a1, a2, a3, *v3, &qword_27CE19CD8, &qword_21CD8CA98, type metadata accessor for ExtensionIdentity);
  *v3 = result;
  return result;
}

char *sub_21CCEA7F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19378, &unk_21CD89410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_21CCEA8F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CF0, &qword_21CD8CAA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CCEAA0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21CCEABE8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_21CD84264();
  IdentityDocumentElementCategory.CategoryType.hash(into:)();
  v8 = sub_21CD84294();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14 == 1)
      {
        break;
      }

      if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_57;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v15 = a2 == 1;
    switch(v13)
    {
      case 1uLL:
        goto LABEL_23;
      case 2uLL:
        v15 = a2 == 2;
LABEL_23:
        if (!v15)
        {
          goto LABEL_4;
        }

        goto LABEL_28;
      case 3uLL:
        if (a2 != 3)
        {
          goto LABEL_4;
        }

LABEL_28:
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = v13;
        break;
      case 4uLL:
        if ((a3 & (a2 == 4)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 4;
        break;
      case 5uLL:
        if ((a3 & (a2 == 5)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 5;
        break;
      case 6uLL:
        if ((a3 & (a2 == 6)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 6;
        break;
      case 7uLL:
        if ((a3 & (a2 == 7)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 7;
        break;
      case 8uLL:
        if ((a3 & (a2 == 8)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 8;
        break;
      case 9uLL:
        if ((a3 & (a2 == 9)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 9;
        break;
      case 0xAuLL:
        if ((a3 & (a2 == 10)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 10;
        break;
      case 0xBuLL:
        if ((a3 & (a2 == 11)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 11;
        break;
      case 0xCuLL:
        if ((a3 & (a2 == 12)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 12;
        break;
      case 0xDuLL:
        if ((a3 & (a2 == 13)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 13;
        break;
      case 0xEuLL:
        if ((a3 & (a2 == 14)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 14;
        break;
      case 0xFuLL:
        if ((a3 & (a2 == 15)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 15;
        break;
      case 0x10uLL:
        if ((a3 & (a2 == 16)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 16;
        break;
      case 0x11uLL:
        if ((a3 & (a2 == 17)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 17;
        break;
      case 0x12uLL:
        if ((a3 & (a2 == 18)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 18;
        break;
      case 0x13uLL:
        if ((a3 & (a2 == 19)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 19;
        break;
      case 0x14uLL:
        if ((a3 & (a2 == 20)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 20;
        break;
      case 0x15uLL:
        if ((a3 & (a2 == 21)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 21;
        break;
      case 0x16uLL:
        if ((a3 & (a2 == 22)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 22;
        break;
      case 0x17uLL:
        if ((a3 & (a2 > 0x16)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 23;
        break;
      default:
        if ((a3 & (a2 == 0)) == 0)
        {
          goto LABEL_4;
        }

        a2 = 0;
        result = 0;
        break;
    }
  }

  else
  {
LABEL_56:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21CCED08C(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    LOBYTE(v14) = a3;
  }

LABEL_57:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_21CCEB070(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  v8 = sub_21CD84294();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14 == 1)
      {
        break;
      }

      if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_47;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v15 = a2 == 1;
    switch(v13)
    {
      case 1uLL:
        goto LABEL_23;
      case 2uLL:
        v15 = a2 == 2;
LABEL_23:
        if (v15)
        {
          goto LABEL_24;
        }

        goto LABEL_4;
      case 3uLL:
        if (a2 != 3)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      case 4uLL:
        if (a2 != 4)
        {
          goto LABEL_4;
        }

LABEL_24:
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = v13;
        break;
      case 5uLL:
        if ((a3 & (a2 == 5)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 5;
        break;
      case 6uLL:
        if ((a3 & (a2 == 6)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 6;
        break;
      case 7uLL:
        if ((a3 & (a2 == 7)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 7;
        break;
      case 8uLL:
        if ((a3 & (a2 == 8)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 8;
        break;
      case 9uLL:
        if ((a3 & (a2 == 9)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 9;
        break;
      case 0xAuLL:
        if ((a3 & (a2 == 10)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 10;
        break;
      case 0xBuLL:
        if ((a3 & (a2 == 11)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 11;
        break;
      case 0xCuLL:
        if ((a3 & (a2 == 12)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 12;
        break;
      case 0xDuLL:
        if ((a3 & (a2 == 13)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 13;
        break;
      case 0xEuLL:
        if ((a3 & (a2 == 14)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 14;
        break;
      case 0xFuLL:
        if ((a3 & (a2 == 15)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 15;
        break;
      case 0x10uLL:
        if ((a3 & (a2 == 16)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 16;
        break;
      case 0x11uLL:
        if ((a3 & (a2 == 17)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 17;
        break;
      case 0x12uLL:
        if ((a3 & (a2 > 0x11)) == 0)
        {
          goto LABEL_4;
        }

        result = 0;
        a2 = 18;
        break;
      default:
        if ((a3 & (a2 == 0)) == 0)
        {
          goto LABEL_4;
        }

        a2 = 0;
        result = 0;
        break;
    }
  }

  else
  {
LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21CCED450(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    LOBYTE(v14) = a3;
  }

LABEL_47:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_21CCEB424(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v55);
  v5 = &v43 - v4;
  v6 = type metadata accessor for MobileDocumentType(0);
  v53 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v43 - v10;
  v11 = sub_21CD837F4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for MobileDocumentType.Identifier(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v51 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v44 = v2;
  v22 = *v2;
  sub_21CD84264();
  v56 = a2;
  v23 = a2;
  v24 = v12;
  sub_21CCF148C(v23, v21, type metadata accessor for MobileDocumentType.Identifier);
  v25 = *(v12 + 48);
  v26 = v25(v21, 2, v11);
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = 2;
    }

    MEMORY[0x21CF17CC0](v27);
  }

  else
  {
    (*(v24 + 32))(v16, v21, v11);
    MEMORY[0x21CF17CC0](1);
    sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v24 + 8))(v16, v11);
  }

  v28 = sub_21CD84294();
  v29 = -1 << *(v22 + 32);
  v30 = v28 & ~v29;
  v54 = v22 + 56;
  if (((*(v22 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_20:
    v38 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v56;
    v41 = v43;
    sub_21CCF148C(v56, v43, type metadata accessor for MobileDocumentType);
    v57 = *v38;
    sub_21CCED788(v41, v30, isUniquelyReferenced_nonNull_native);
    *v38 = v57;
    sub_21CCF1554(v40, v45, type metadata accessor for MobileDocumentType);
    return 1;
  }

  v52 = ~v29;
  v53 = *(v53 + 72);
  v50 = (v24 + 8);
  v46 = (v24 + 32);
  v47 = v22;
  while (1)
  {
    v31 = v53 * v30;
    sub_21CCF148C(*(v22 + 48) + v53 * v30, v9, type metadata accessor for MobileDocumentType);
    v32 = *(v55 + 48);
    sub_21CCF148C(v9, v5, type metadata accessor for MobileDocumentType.Identifier);
    sub_21CCF148C(v56, &v5[v32], type metadata accessor for MobileDocumentType.Identifier);
    v33 = v25(v5, 2, v11);
    if (v33)
    {
      if (v33 == 1)
      {
        sub_21CCF14F4(v9, type metadata accessor for MobileDocumentType);
        if (v25(&v5[v32], 2, v11) == 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_21CCF14F4(v9, type metadata accessor for MobileDocumentType);
        if (v25(&v5[v32], 2, v11) == 2)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_10;
    }

    v34 = v51;
    sub_21CCF148C(v5, v51, type metadata accessor for MobileDocumentType.Identifier);
    if (!v25(&v5[v32], 2, v11))
    {
      break;
    }

    sub_21CCF14F4(v9, type metadata accessor for MobileDocumentType);
    (*v50)(v34, v11);
LABEL_10:
    sub_21CCAC1DC(v5);
LABEL_11:
    v30 = (v30 + 1) & v52;
    if (((*(v54 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v35 = v48;
  (*v46)(v48, &v5[v32], v11);
  v49 = MEMORY[0x21CF17230](v51, v35);
  v36 = *v50;
  v37 = v35;
  v22 = v47;
  (*v50)(v37, v11);
  sub_21CCF14F4(v9, type metadata accessor for MobileDocumentType);
  v36(v51, v11);
  if ((v49 & 1) == 0)
  {
    sub_21CCF14F4(v5, type metadata accessor for MobileDocumentType.Identifier);
    goto LABEL_11;
  }

LABEL_21:
  sub_21CCF14F4(v5, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCF14F4(v56, type metadata accessor for MobileDocumentType);
  sub_21CCF148C(*(v22 + 48) + v31, v45, type metadata accessor for MobileDocumentType);
  return 0;
}

uint64_t sub_21CCEBB0C(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v55);
  v5 = &v41 - v4;
  v50 = type metadata accessor for MobileDocumentRequest(0);
  v52 = *(v50 - 8);
  v6 = MEMORY[0x28223BE20](v50);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v41 - v9;
  v10 = sub_21CD837F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for MobileDocumentType.Identifier(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v42 = v2;
  v22 = *v2;
  sub_21CD84264();
  v56 = a2;
  sub_21CCF148C(a2, v21, type metadata accessor for MobileDocumentType.Identifier);
  v47 = v11;
  v54 = *(v11 + 48);
  v23 = v54(v21, 2, v10);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    MEMORY[0x21CF17CC0](v24);
  }

  else
  {
    v25 = v47;
    (*(v47 + 32))(v15, v21, v10);
    MEMORY[0x21CF17CC0](1);
    sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v25 + 8))(v15, v10);
  }

  v49 = *(v56 + *(v50 + 20));
  sub_21CCD5008(v57, v49);
  v26 = sub_21CD84294();
  v27 = -1 << *(v22 + 32);
  v28 = v26 & ~v27;
  v53 = v22 + 56;
  if ((*(v22 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
  {
    v51 = ~v27;
    v52 = *(v52 + 72);
    v48 = (v47 + 8);
    v44 = (v47 + 32);
    v45 = v22;
    do
    {
      v29 = v52 * v28;
      sub_21CCF148C(*(v22 + 48) + v52 * v28, v8, type metadata accessor for MobileDocumentRequest);
      v30 = *(v55 + 48);
      sub_21CCF148C(v8, v5, type metadata accessor for MobileDocumentType.Identifier);
      sub_21CCF148C(v56, &v5[v30], type metadata accessor for MobileDocumentType.Identifier);
      v31 = v54;
      v32 = v54(v5, 2, v10);
      if (v32)
      {
        if (v32 == 1)
        {
          if (v31(&v5[v30], 2, v10) != 1)
          {
            goto LABEL_18;
          }
        }

        else if (v31(&v5[v30], 2, v10) != 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_21CCF148C(v5, v19, type metadata accessor for MobileDocumentType.Identifier);
        if (v31(&v5[v30], 2, v10))
        {
          (*v48)(v19, v10);
LABEL_18:
          sub_21CCAC1DC(v5);
          goto LABEL_10;
        }

        v33 = v46;
        (*v44)(v46, &v5[v30], v10);
        LODWORD(v47) = MEMORY[0x21CF17230](v19, v33);
        v34 = *v48;
        v35 = v33;
        v22 = v45;
        (*v48)(v35, v10);
        v34(v19, v10);
        if ((v47 & 1) == 0)
        {
          sub_21CCF14F4(v5, type metadata accessor for MobileDocumentType.Identifier);
          goto LABEL_10;
        }
      }

      sub_21CCF14F4(v5, type metadata accessor for MobileDocumentType.Identifier);
      if (sub_21CCFBBFC(*&v8[*(v50 + 20)], v49))
      {
        sub_21CCF14F4(v8, type metadata accessor for MobileDocumentRequest);
        sub_21CCF14F4(v56, type metadata accessor for MobileDocumentRequest);
        sub_21CCF148C(*(v22 + 48) + v29, v43, type metadata accessor for MobileDocumentRequest);
        return 0;
      }

LABEL_10:
      sub_21CCF14F4(v8, type metadata accessor for MobileDocumentRequest);
      v28 = (v28 + 1) & v51;
    }

    while (((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
  }

  v36 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v56;
  v39 = v41;
  sub_21CCF148C(v56, v41, type metadata accessor for MobileDocumentRequest);
  v57[0] = *v36;
  sub_21CCEDE44(v39, v28, isUniquelyReferenced_nonNull_native);
  *v36 = v57[0];
  sub_21CCF1554(v38, v43, type metadata accessor for MobileDocumentRequest);
  return 1;
}

uint64_t sub_21CCEC204(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CE0, &qword_21CD8CAA0);
  result = sub_21CD83F44();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_21CD84264();
      if (v20)
      {
        v21 = qword_21CD8CC08[v19];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
        v21 = v19;
      }

      MEMORY[0x21CF17CC0](v21);
      result = sub_21CD84294();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21CCEC488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CA8, &unk_21CD8CA70);
  result = sub_21CD83F44();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_21CD84264();
      if (v20)
      {
        v21 = qword_21CD8CB70[v19];
      }

      else
      {
        MEMORY[0x21CF17CC0](5);
        v21 = v19;
      }

      MEMORY[0x21CF17CC0](v21);
      result = sub_21CD84294();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21CCEC70C(uint64_t a1)
{
  v2 = v1;
  v49 = sub_21CD837F4();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CB8, &qword_21CD8CA80);
  result = sub_21CD83F44();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v48 = (v3 + 48);
    v43 = (v3 + 8);
    v44 = (v3 + 32);
    v20 = result + 56;
    v45 = v9;
    v46 = v11;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v50 = *(v9 + 72);
      v26 = v51;
      sub_21CCF1554(v25 + v50 * (v22 | (v14 << 6)), v51, type metadata accessor for MobileDocumentType);
      sub_21CD84264();
      sub_21CCF148C(v26, v7, type metadata accessor for MobileDocumentType.Identifier);
      v27 = (*v48)(v7, 2, v49);
      if (v27)
      {
        if (v27 == 1)
        {
          v28 = 0;
        }

        else
        {
          v28 = 2;
        }

        MEMORY[0x21CF17CC0](v28);
      }

      else
      {
        v29 = v7;
        v30 = v47;
        v31 = v49;
        (*v44)(v47, v29, v49);
        MEMORY[0x21CF17CC0](1);
        sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
        sub_21CD83A64();
        v32 = v30;
        v7 = v29;
        v33 = v31;
        v9 = v45;
        v11 = v46;
        (*v43)(v32, v33);
      }

      result = sub_21CD84294();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21CCF1554(v51, *(v13 + 48) + v21 * v50, type metadata accessor for MobileDocumentType);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v41 = 1 << *(v11 + 32);
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    v2 = v42;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_21CCECBEC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MobileDocumentRequest(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CC8, &qword_21CD8CA88);
  result = sub_21CD83F44();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_21CCECDF4(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_21CCF1554(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for MobileDocumentRequest);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_21CCECDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCF148C(a1, v10, type metadata accessor for MobileDocumentType.Identifier);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x21CF17CC0](v12);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  v13 = type metadata accessor for MobileDocumentRequest(0);
  sub_21CCD5008(v17, *(a1 + *(v13 + 20)));
  sub_21CD84294();
  v14 = sub_21CD83F14();
  *(a2 + 56 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
  result = sub_21CCF1554(a1, *(a2 + 48) + *(*(v13 - 8) + 72) * v14, type metadata accessor for MobileDocumentRequest);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_21CCED08C(unint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_63;
  }

  if (a4)
  {
    sub_21CCEC204(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21CCEE528(&qword_27CE19CE0, &qword_21CD8CAA0);
      a3 = v9;
      goto LABEL_63;
    }

    sub_21CCEEA84(v7 + 1);
  }

  v10 = *v4;
  sub_21CD84264();
  IdentityDocumentElementCategory.CategoryType.hash(into:)();
  result = sub_21CD84294();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    result = a2 & (v6 == 18);
    while (1)
    {
      v13 = *(v10 + 48) + 16 * a3;
      v14 = *v13;
      if (*(v13 + 8) == 1)
      {
        v15 = v6 == 1;
        switch(v14)
        {
          case 1:
            goto LABEL_30;
          case 2:
            v15 = v6 == 2;
LABEL_30:
            if (v15)
            {
              goto LABEL_35;
            }

            goto LABEL_11;
          case 3:
            if (v6 != 3)
            {
              goto LABEL_11;
            }

LABEL_35:
            if (a2)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 4:
            if ((a2 & (v6 == 4)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 5:
            if ((a2 & (v6 == 5)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 6:
            if ((a2 & (v6 == 6)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 7:
            if ((a2 & (v6 == 7)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 8:
            if ((a2 & (v6 == 8)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 9:
            if ((a2 & (v6 == 9)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 10:
            if ((a2 & (v6 == 10)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 11:
            if ((a2 & (v6 == 11)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 12:
            if ((a2 & (v6 == 12)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 13:
            if ((a2 & (v6 == 13)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 14:
            if ((a2 & (v6 == 14)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 15:
            if ((a2 & (v6 == 15)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 16:
            if ((a2 & (v6 == 16)) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_62;
          case 17:
            if ((a2 & (v6 == 17)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 18:
            if ((a2 & (v6 == 18)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 19:
            if ((a2 & (v6 == 19)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 20:
            if ((a2 & (v6 == 20)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 21:
            if ((a2 & (v6 == 21)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 22:
            if ((a2 & (v6 == 22)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          case 23:
            if ((a2 & (v6 > 0x16)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
          default:
            if ((a2 & (v6 == 0)) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_11;
        }
      }

      if ((a2 & 1) == 0 && v14 == v6)
      {
        break;
      }

LABEL_11:
      a3 = (a3 + 1) & v12;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

LABEL_62:
    result = sub_21CD841E4();
    __break(1u);
  }

LABEL_63:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = v6;
  *(v17 + 8) = a2 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_21CCED450(unint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_53;
  }

  if (a4)
  {
    sub_21CCEC488(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21CCEE528(&qword_27CE19CA8, &unk_21CD8CA70);
      a3 = v9;
      goto LABEL_53;
    }

    sub_21CCEECD8(v7 + 1);
  }

  v10 = *v4;
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  result = sub_21CD84294();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    result = a2 & (v6 == 13);
    while (1)
    {
      v13 = *(v10 + 48) + 16 * a3;
      v14 = *v13;
      if (*(v13 + 8) == 1)
      {
        v15 = v6 == 1;
        switch(v14)
        {
          case 1:
            goto LABEL_30;
          case 2:
            v15 = v6 == 2;
LABEL_30:
            if (v15)
            {
              goto LABEL_31;
            }

            goto LABEL_11;
          case 3:
            if (v6 != 3)
            {
              goto LABEL_11;
            }

            goto LABEL_31;
          case 4:
            if (v6 != 4)
            {
              goto LABEL_11;
            }

LABEL_31:
            if (a2)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 5:
            if ((a2 & (v6 == 5)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 6:
            if ((a2 & (v6 == 6)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 7:
            if ((a2 & (v6 == 7)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 8:
            if ((a2 & (v6 == 8)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 9:
            if ((a2 & (v6 == 9)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 10:
            if ((a2 & (v6 == 10)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 11:
            if ((a2 & (v6 == 11)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 12:
            if ((a2 & (v6 == 12)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 13:
            if ((a2 & (v6 == 13)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 14:
            if ((a2 & (v6 == 14)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 15:
            if ((a2 & (v6 == 15)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 16:
            if ((a2 & (v6 == 16)) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_52;
          case 17:
            if ((a2 & (v6 == 17)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          case 18:
            if ((a2 & (v6 > 0x11)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
          default:
            if ((a2 & (v6 == 0)) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_11;
        }
      }

      if ((a2 & 1) == 0 && v14 == v6)
      {
        break;
      }

LABEL_11:
      a3 = (a3 + 1) & v12;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    result = sub_21CD841E4();
    __break(1u);
  }

LABEL_53:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = v6;
  *(v17 + 8) = a2 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_21CCED788(uint64_t a1, unint64_t a2, char a3)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v53);
  v7 = &v41 - v6;
  v42 = type metadata accessor for MobileDocumentType(0);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CD837F4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for MobileDocumentType.Identifier(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v49 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v46 = v8;
  v47 = v3;
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21CCEC70C(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_21CCEE66C();
        goto LABEL_27;
      }

      sub_21CCEEF2C(v22 + 1);
    }

    v52 = *v3;
    sub_21CD84264();
    sub_21CCF148C(v54, v21, type metadata accessor for MobileDocumentType.Identifier);
    v44 = v12;
    v24 = *(v12 + 48);
    v25 = v24(v21, 2, v11);
    if (v25)
    {
      if (v25 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 2;
      }

      MEMORY[0x21CF17CC0](v26);
    }

    else
    {
      (*(v44 + 32))(v16, v21, v11);
      MEMORY[0x21CF17CC0](1);
      sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
      sub_21CD83A64();
      (*(v44 + 8))(v16, v11);
    }

    v27 = sub_21CD84294();
    v28 = -1 << *(v52 + 32);
    a2 = v27 & ~v28;
    v51 = v52 + 56;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v50 = ~v28;
      v29 = *(v8 + 72);
      v48 = (v44 + 8);
      v43 = (v44 + 32);
      v30 = v49;
      while (1)
      {
        sub_21CCF148C(*(v52 + 48) + v29 * a2, v10, type metadata accessor for MobileDocumentType);
        v31 = *(v53 + 48);
        sub_21CCF148C(v10, v7, type metadata accessor for MobileDocumentType.Identifier);
        sub_21CCF148C(v54, &v7[v31], type metadata accessor for MobileDocumentType.Identifier);
        v32 = v24(v7, 2, v11);
        if (v32)
        {
          break;
        }

        sub_21CCF148C(v7, v30, type metadata accessor for MobileDocumentType.Identifier);
        if (v24(&v7[v31], 2, v11))
        {
          sub_21CCF14F4(v10, type metadata accessor for MobileDocumentType);
          (*v48)(v30, v11);
LABEL_17:
          sub_21CCAC1DC(v7);
          goto LABEL_18;
        }

        v33 = v45;
        (*v43)(v45, &v7[v31], v11);
        LODWORD(v44) = MEMORY[0x21CF17230](v49, v33);
        v34 = *v48;
        v35 = v33;
        v30 = v49;
        (*v48)(v35, v11);
        sub_21CCF14F4(v10, type metadata accessor for MobileDocumentType);
        v34(v30, v11);
        if (v44)
        {
          goto LABEL_30;
        }

        sub_21CCF14F4(v7, type metadata accessor for MobileDocumentType.Identifier);
LABEL_18:
        a2 = (a2 + 1) & v50;
        if (((*(v51 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v32 == 1)
      {
        sub_21CCF14F4(v10, type metadata accessor for MobileDocumentType);
        if (v24(&v7[v31], 2, v11) == 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21CCF14F4(v10, type metadata accessor for MobileDocumentType);
        if (v24(&v7[v31], 2, v11) == 2)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_27:
  v36 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21CCF1554(v54, *(v36 + 48) + *(v46 + 72) * a2, type metadata accessor for MobileDocumentType);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
LABEL_30:
    sub_21CCF14F4(v7, type metadata accessor for MobileDocumentType.Identifier);
    result = sub_21CD841E4();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

uint64_t sub_21CCEDE44(uint64_t a1, unint64_t a2, char a3)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v53);
  v7 = &v41 - v6;
  v49 = type metadata accessor for MobileDocumentRequest(0);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CD837F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for MobileDocumentType.Identifier(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v45 = v3;
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21CCECBEC(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_21CCEE878();
        goto LABEL_28;
      }

      sub_21CCEF3D4(v22 + 1);
    }

    v43 = *v3;
    sub_21CD84264();
    sub_21CCF148C(v54, v21, type metadata accessor for MobileDocumentType.Identifier);
    v42 = v11;
    v24 = *(v11 + 48);
    v25 = v24(v21, 2, v10);
    if (v25)
    {
      if (v25 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 2;
      }

      MEMORY[0x21CF17CC0](v26);
    }

    else
    {
      (*(v42 + 32))(v15, v21, v10);
      MEMORY[0x21CF17CC0](1);
      sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
      sub_21CD83A64();
      (*(v42 + 8))(v15, v10);
    }

    v48 = *(v54 + *(v49 + 20));
    sub_21CCD5008(v55, v48);
    v27 = sub_21CD84294();
    v28 = -1 << *(v43 + 32);
    a2 = v27 & ~v28;
    v52 = v43 + 56;
    if ((*(v43 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v51 = ~v28;
      v50 = *(v46 + 72);
      v47 = (v42 + 8);
      v41 = (v42 + 32);
      v29 = v43;
      while (1)
      {
        sub_21CCF148C(*(v29 + 48) + v50 * a2, v9, type metadata accessor for MobileDocumentRequest);
        v30 = *(v53 + 48);
        sub_21CCF148C(v9, v7, type metadata accessor for MobileDocumentType.Identifier);
        sub_21CCF148C(v54, &v7[v30], type metadata accessor for MobileDocumentType.Identifier);
        v31 = v24(v7, 2, v10);
        if (v31)
        {
          break;
        }

        sub_21CCF148C(v7, v19, type metadata accessor for MobileDocumentType.Identifier);
        if (v24(&v7[v30], 2, v10))
        {
          (*v47)(v19, v10);
LABEL_25:
          sub_21CCAC1DC(v7);
          goto LABEL_17;
        }

        v32 = v19;
        v33 = v44;
        (*v41)(v44, &v7[v30], v10);
        LODWORD(v42) = MEMORY[0x21CF17230](v32, v33);
        v34 = *v47;
        v35 = v33;
        v19 = v32;
        v29 = v43;
        (*v47)(v35, v10);
        v34(v19, v10);
        if (v42)
        {
LABEL_16:
          sub_21CCF14F4(v7, type metadata accessor for MobileDocumentType.Identifier);
          if (sub_21CCFBBFC(*&v9[*(v49 + 20)], v48))
          {
            goto LABEL_31;
          }

          goto LABEL_17;
        }

        sub_21CCF14F4(v7, type metadata accessor for MobileDocumentType.Identifier);
LABEL_17:
        sub_21CCF14F4(v9, type metadata accessor for MobileDocumentRequest);
        a2 = (a2 + 1) & v51;
        if (((*(v52 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v31 == 1)
      {
        if (v24(&v7[v30], 2, v10) == 1)
        {
          goto LABEL_16;
        }
      }

      else if (v24(&v7[v30], 2, v10) == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

LABEL_28:
  v36 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21CCF1554(v54, *(v36 + 48) + *(v46 + 72) * a2, type metadata accessor for MobileDocumentRequest);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
LABEL_31:
    sub_21CCF14F4(v9, type metadata accessor for MobileDocumentRequest);
    result = sub_21CD841E4();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

void *sub_21CCEE528(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21CD83F34();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(v22 + 8) = v20)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = 16 * v16;
      v20 = *(v4 + 48) + v19;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v6 + 48) + v19;
      *v22 = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_21CCEE66C()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentType(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CB8, &qword_21CD8CA80);
  v6 = *v0;
  v7 = sub_21CD83F34();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CCF148C(*(v6 + 48) + v21, v5, type metadata accessor for MobileDocumentType);
        result = sub_21CCF1554(v5, *(v8 + 48) + v21, type metadata accessor for MobileDocumentType);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_21CCEE878()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentRequest(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CC8, &qword_21CD8CA88);
  v6 = *v0;
  v7 = sub_21CD83F34();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CCF148C(*(v6 + 48) + v21, v5, type metadata accessor for MobileDocumentRequest);
        result = sub_21CCF1554(v5, *(v8 + 48) + v21, type metadata accessor for MobileDocumentRequest);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_21CCEEA84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CE0, &qword_21CD8CAA0);
  result = sub_21CD83F44();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_21CD84264();
      if (v19)
      {
        v20 = qword_21CD8CC08[v18];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
        v20 = v18;
      }

      MEMORY[0x21CF17CC0](v20);
      result = sub_21CD84294();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CCEECD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CA8, &unk_21CD8CA70);
  result = sub_21CD83F44();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_21CD84264();
      if (v19)
      {
        v20 = qword_21CD8CB70[v18];
      }

      else
      {
        MEMORY[0x21CF17CC0](5);
        v20 = v18;
      }

      MEMORY[0x21CF17CC0](v20);
      result = sub_21CD84294();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CCEEF2C(uint64_t a1)
{
  v2 = v1;
  v50 = sub_21CD837F4();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CB8, &qword_21CD8CA80);
  result = sub_21CD83F44();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v48 = v11;
    v49 = (v3 + 48);
    v43 = (v3 + 8);
    v44 = (v3 + 32);
    v20 = result + 56;
    v45 = v9;
    v46 = v7;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v26 = *(v9 + 72);
      v27 = v51;
      sub_21CCF148C(v25 + v26 * (v22 | (v14 << 6)), v51, type metadata accessor for MobileDocumentType);
      sub_21CD84264();
      sub_21CCF148C(v27, v7, type metadata accessor for MobileDocumentType.Identifier);
      v28 = (*v49)(v7, 2, v50);
      if (v28)
      {
        if (v28 == 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = 2;
        }

        MEMORY[0x21CF17CC0](v29);
      }

      else
      {
        v30 = v47;
        v31 = v7;
        v32 = v50;
        (*v44)(v47, v31, v50);
        MEMORY[0x21CF17CC0](1);
        sub_21CCF1444(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
        sub_21CD83A64();
        v33 = v30;
        v34 = v32;
        v9 = v45;
        v7 = v46;
        (*v43)(v33, v34);
      }

      result = sub_21CD84294();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21CCF1554(v51, *(v13 + 48) + v21 * v26, type metadata accessor for MobileDocumentType);
      ++*(v13 + 16);
      v11 = v48;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v42;
        goto LABEL_32;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_21CCEF3D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MobileDocumentRequest(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CC8, &qword_21CD8CA88);
  result = sub_21CD83F44();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_21CCECDF4(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_21CCF148C(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for MobileDocumentRequest);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

void *sub_21CCEF5A0(int64_t a1)
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

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_21CCCF2BC(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_21CCEFFA8(v42, &v3[16 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          goto LABEL_14;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v18;
  }

  if (result == v11)
  {
LABEL_17:
    v6 = *(v3 + 2);
    result = v42[0];
    v13 = v42[1];
    v14 = v42[2];
    v15 = v43;
    v19 = v44;
    if (!v44)
    {
      goto LABEL_20;
    }

    v20 = v43;
LABEL_23:
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = result[6] + ((v20 << 10) | (16 * v21));
    v24 = *v23;
    v41 = *(v23 + 8);
    v25 = (v14 + 64) >> 6;
    while (1)
    {
      v26 = *(v3 + 3);
      v27 = v26 >> 1;
      if ((v26 >> 1) < v6 + 1)
      {
        v38 = v22;
        v39 = v25;
        v40 = result;
        v33 = v13;
        v34 = v14;
        v35 = v3;
        v36 = v24;
        v37 = sub_21CCCF2BC((v26 > 1), v6 + 1, 1, v35);
        v24 = v36;
        v22 = v38;
        v25 = v39;
        v14 = v34;
        v13 = v33;
        v3 = v37;
        result = v40;
        v27 = *(v3 + 3) >> 1;
      }

      if (v6 < v27)
      {
        break;
      }

LABEL_24:
      *(v3 + 2) = v6;
    }

    while (1)
    {
      v28 = &v3[16 * v6 + 32];
      *v28 = v24;
      *(v28 + 8) = v41 & 1;
      ++v6;
      if (!v22)
      {
        break;
      }

      v29 = v20;
LABEL_35:
      v31 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v32 = result[6] + ((v29 << 10) | (16 * v31));
      v24 = *v32;
      v41 = *(v32 + 8);
      if (v6 >= v27)
      {
        goto LABEL_24;
      }
    }

    v30 = v20;
    while (1)
    {
      v29 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        *(v3 + 2) = v6;
        goto LABEL_14;
      }

      v22 = *(v13 + 8 * v29);
      ++v30;
      if (v22)
      {
        v20 = v29;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  result = v42[0];
LABEL_14:
  result = sub_21CCF1610(result);
  *v1 = v3;
  return result;
}

uint64_t sub_21CCEF82C(uint64_t result)
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

  result = sub_21CCCF4D4(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

void *sub_21CCEF918(void *result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 7;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & result[7];
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v2[6] + ((v9 << 10) | (16 * v10));
        result = sub_21CCEFA28(*v11, *(v11 + 8), &v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v3[v9];
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21CCEFA28@<X0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_21CD84264();
  IdentityDocumentElementCategory.CategoryType.hash(into:)();
  result = sub_21CD84294();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    result = a2 & (a1 == 0);
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      if (*(v12 + 8) == 1)
      {
        v14 = a1 == 1;
        switch(v13)
        {
          case 1:
            goto LABEL_23;
          case 2:
            v14 = a1 == 2;
LABEL_23:
            if (!v14)
            {
              goto LABEL_4;
            }

            goto LABEL_28;
          case 3:
            if (a1 != 3)
            {
              goto LABEL_4;
            }

LABEL_28:
            if (a2)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 4:
            if ((a2 & (a1 == 4)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 5:
            if ((a2 & (a1 == 5)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 6:
            if ((a2 & (a1 == 6)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 7:
            if ((a2 & (a1 == 7)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 8:
            if ((a2 & (a1 == 8)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 9:
            if ((a2 & (a1 == 9)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 10:
            if ((a2 & (a1 == 10)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 11:
            if ((a2 & (a1 == 11)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 12:
            if ((a2 & (a1 == 12)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 13:
            if ((a2 & (a1 == 13)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 14:
            if ((a2 & (a1 == 14)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 15:
            if ((a2 & (a1 == 15)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 16:
            if ((a2 & (a1 == 16)) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_55;
          case 17:
            if ((a2 & (a1 == 17)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 18:
            if ((a2 & (a1 == 18)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 19:
            if ((a2 & (a1 == 19)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 20:
            if ((a2 & (a1 == 20)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 21:
            if ((a2 & (a1 == 21)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 22:
            if ((a2 & (a1 == 22)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          case 23:
            if ((a2 & (a1 > 0x16)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
          default:
            if ((a2 & (a1 == 0)) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_4;
        }
      }

      if ((a2 & 1) == 0 && v13 == a1)
      {
        break;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v20 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21CCEE528(&qword_27CE19CE0, &qword_21CD8CAA0);
      v16 = v20;
    }

    v17 = *(v16 + 48) + 16 * v10;
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *a3 = v18;
    *(a3 + 8) = v17;
    result = sub_21CCEFDC4(v10);
    v19 = 0;
    *v3 = v20;
  }

  else
  {
LABEL_58:
    *a3 = 0;
    *(a3 + 8) = 0;
    v19 = 1;
  }

  *(a3 + 9) = v19;
  return result;
}

unint64_t sub_21CCEFDC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21CD83F04();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_21CD84264();
        if (v13)
        {
          v12 = qword_21CD8CC08[v12];
        }

        else
        {
          MEMORY[0x21CF17CC0](4);
        }

        MEMORY[0x21CF17CC0](v12);
        v14 = sub_21CD84294() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v14)
        {
LABEL_14:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_21CCEFFA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s7CoreIDV37IdentityDocumentElementCategoryGroupsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v23 = *(a2 + 40);
  v24 = *(a1 + 40);
  v11 = *(a2 + 48);
  if ((sub_21CCCCFB0(*a1, *a2) & 1) == 0 || (sub_21CCCD0D4(v2, v7) & 1) == 0 || (sub_21CCCD0D4(v4, v9) & 1) == 0 || (sub_21CCCD0D4(v3, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = "";
  v13 = "org.iso.18013.5.1.mDL";
  v14 = 0xD000000000000017;
  if (v5 == 1)
  {
    v15 = 0xD000000000000016;
  }

  else
  {
    v15 = 0xD000000000000017;
  }

  if (v5 == 1)
  {
    v16 = "org.iso.18013.5.1.mDL";
  }

  else
  {
    v16 = "org.iso.23220.1.jp.mnc";
  }

  if (v5)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xD000000000000015;
  }

  if (v5)
  {
    v18 = v16;
  }

  else
  {
    v18 = "";
  }

  if (v10 == 1)
  {
    v14 = 0xD000000000000016;
  }

  else
  {
    v13 = "org.iso.23220.1.jp.mnc";
  }

  if (v10)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0xD000000000000015;
  }

  if (v10)
  {
    v12 = v13;
  }

  if (v17 == v19 && (v18 | 0x8000000000000000) == (v12 | 0x8000000000000000))
  {
  }

  else
  {
    v20 = sub_21CD841A4();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v11)
    {
      return 1;
    }
  }

  else
  {
    if (v24 == v23)
    {
      v22 = v11;
    }

    else
    {
      v22 = 1;
    }

    if (v22 != 1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_21CCF0274()
{
  result = qword_27CE19B70;
  if (!qword_27CE19B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B70);
  }

  return result;
}

unint64_t sub_21CCF02C8()
{
  result = qword_27CE19B88;
  if (!qword_27CE19B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19B88);
  }

  return result;
}

uint64_t sub_21CCF031C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19B90, &qword_21CD8C420);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCF0394()
{
  result = qword_27CE19BA0;
  if (!qword_27CE19BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BA0);
  }

  return result;
}

unint64_t sub_21CCF03E8()
{
  result = qword_27CE19BA8;
  if (!qword_27CE19BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BA8);
  }

  return result;
}

unint64_t sub_21CCF043C()
{
  result = qword_27CE19BB0;
  if (!qword_27CE19BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BB0);
  }

  return result;
}

uint64_t sub_21CCF0490(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19B78, &qword_21CD8C418);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCF0508()
{
  result = qword_27CE19BC8;
  if (!qword_27CE19BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BC8);
  }

  return result;
}

unint64_t sub_21CCF055C()
{
  result = qword_27CE19BD8;
  if (!qword_27CE19BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BD8);
  }

  return result;
}

unint64_t sub_21CCF05B0()
{
  result = qword_27CE19BE0;
  if (!qword_27CE19BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BE0);
  }

  return result;
}

unint64_t sub_21CCF0604()
{
  result = qword_27CE19BE8;
  if (!qword_27CE19BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19BE8);
  }

  return result;
}

unint64_t sub_21CCF0658()
{
  result = qword_27CE19C08;
  if (!qword_27CE19C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C08);
  }

  return result;
}

unint64_t sub_21CCF06AC()
{
  result = qword_27CE19C10;
  if (!qword_27CE19C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C10);
  }

  return result;
}

unint64_t sub_21CCF0700()
{
  result = qword_27CE19C18;
  if (!qword_27CE19C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C18);
  }

  return result;
}

unint64_t sub_21CCF0758()
{
  result = qword_27CE19C38;
  if (!qword_27CE19C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C38);
  }

  return result;
}

unint64_t sub_21CCF07B0()
{
  result = qword_27CE19C40;
  if (!qword_27CE19C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C40);
  }

  return result;
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

uint64_t sub_21CCF0820(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_21CCF0868(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IdentityDocumentElementCategoryGroups.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityDocumentElementCategoryGroups.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CCF0A5C()
{
  result = qword_27CE19C48;
  if (!qword_27CE19C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C48);
  }

  return result;
}

unint64_t sub_21CCF0AB4()
{
  result = qword_27CE19C50;
  if (!qword_27CE19C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C50);
  }

  return result;
}

unint64_t sub_21CCF0B0C()
{
  result = qword_27CE19C58;
  if (!qword_27CE19C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C58);
  }

  return result;
}

unint64_t sub_21CCF0B64()
{
  result = qword_27CE19C60;
  if (!qword_27CE19C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C60);
  }

  return result;
}

unint64_t sub_21CCF0BBC()
{
  result = qword_27CE19C68;
  if (!qword_27CE19C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C68);
  }

  return result;
}

unint64_t sub_21CCF0C14()
{
  result = qword_27CE19C70;
  if (!qword_27CE19C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C70);
  }

  return result;
}

unint64_t sub_21CCF0C6C()
{
  result = qword_27CE19C78;
  if (!qword_27CE19C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C78);
  }

  return result;
}

unint64_t sub_21CCF0CC4()
{
  result = qword_27CE19C80;
  if (!qword_27CE19C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C80);
  }

  return result;
}

unint64_t sub_21CCF0D1C()
{
  result = qword_27CE19C88;
  if (!qword_27CE19C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C88);
  }

  return result;
}

unint64_t sub_21CCF0D74()
{
  result = qword_27CE19C90;
  if (!qword_27CE19C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C90);
  }

  return result;
}

unint64_t sub_21CCF0DCC()
{
  result = qword_27CE19C98;
  if (!qword_27CE19C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19C98);
  }

  return result;
}

uint64_t sub_21CCF0E20(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CCF1444(&qword_27CE19CB0, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  result = MEMORY[0x21CF17850](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21CCF148C(v12, v6, type metadata accessor for MobileDocumentType);
      sub_21CCEB424(v8, v6);
      sub_21CCF14F4(v8, type metadata accessor for MobileDocumentType);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21CCF0FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x21CF17850](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      a4(v13, v11, v12);
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_21CCF1064(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRequest(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CCF1444(&qword_27CE19CC0, type metadata accessor for MobileDocumentRequest, &protocol conformance descriptor for MobileDocumentRequest);
  result = MEMORY[0x21CF17850](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21CCF148C(v12, v6, type metadata accessor for MobileDocumentRequest);
      sub_21CCEBB0C(v8, v6);
      sub_21CCF14F4(v8, type metadata accessor for MobileDocumentRequest);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21CCF11F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000021CD9F070 == a2;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9F090 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021CD9F0B0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021CD9F0D0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021CD9F0F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_21CCF13F0()
{
  result = qword_27CE19CA0;
  if (!qword_27CE19CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19CA0);
  }

  return result;
}

uint64_t sub_21CCF1444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CCF148C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCF14F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CCF1554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CCF15BC()
{
  result = qword_27CE19CE8;
  if (!qword_27CE19CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19CE8);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentConfiguration.relyingParty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_21CCF1690(v8, v7);
}

__n128 IdentityDocumentPresentmentConfiguration.init(eligibleCredentials:relyingParty:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *a2;
  *(a3 + 24) = a2[1];
  result = a2[2];
  v5 = a2[3];
  *(a3 + 40) = result;
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a2 + 8);
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_21CCF16F0()
{
  if (*v0)
  {
    return 0x50676E69796C6572;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_21CCF1738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000021CD9F160 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x50676E69796C6572 && a2 == 0xEC00000079747261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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
  return result;
}

uint64_t sub_21CCF1824(uint64_t a1)
{
  v2 = sub_21CCF1B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF1860(uint64_t a1)
{
  v2 = sub_21CCF1B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19CF8, &qword_21CD8CCD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 7);
  v21 = *(v1 + 5);
  v22 = v10;
  v23 = v1[9];
  v19 = *(v1 + 1);
  v20 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF1B24();

  sub_21CD842B4();
  *&v14 = v8;
  LOBYTE(v12[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D08, &qword_21CD8CCD8);
  sub_21CCF1F2C(&qword_27CE19D10, sub_21CCF1B78, MEMORY[0x277D83948]);
  sub_21CD84164();

  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v14 = v19;
    v15 = v20;
    v24 = 1;
    sub_21CCF1690(&v19, v12);
    sub_21CCF1BCC();
    sub_21CD84164();
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[1] = v15;
    v12[0] = v14;
    sub_21CCF1C20(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21CCF1B24()
{
  result = qword_27CE19D00;
  if (!qword_27CE19D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D00);
  }

  return result;
}

unint64_t sub_21CCF1B78()
{
  result = qword_27CE19D18;
  if (!qword_27CE19D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D18);
  }

  return result;
}

unint64_t sub_21CCF1BCC()
{
  result = qword_27CE19D20;
  if (!qword_27CE19D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D20);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D28, &qword_21CD8CCE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF1B24();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D08, &qword_21CD8CCD8);
  LOBYTE(v16[0]) = 0;
  sub_21CCF1F2C(&qword_27CE19D30, sub_21CCF1FA4, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v10 = v17;
  v23 = 1;
  sub_21CCF1FF8();
  sub_21CD840C4();
  (*(v8 + 8))(v7, v4);
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = v24;
  v30 = v25;
  *&v16[0] = v10;
  *(v16 + 8) = v24;
  *(&v16[2] + 8) = v26;
  *(&v16[1] + 8) = v25;
  *(&v16[3] + 8) = v27;
  *(&v16[4] + 1) = v28;
  v11 = v16[0];
  v12 = v16[1];
  v13 = v16[4];
  v9[3] = v16[3];
  v9[4] = v13;
  v14 = v16[2];
  v9[1] = v12;
  v9[2] = v14;
  *v9 = v11;
  sub_21CCF204C(v16, &v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v10;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v18 = v29;
  return sub_21CCF2084(&v17);
}

uint64_t sub_21CCF1F2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19D08, &qword_21CD8CCD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCF1FA4()
{
  result = qword_27CE19D38;
  if (!qword_27CE19D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D38);
  }

  return result;
}

unint64_t sub_21CCF1FF8()
{
  result = qword_27CE19D40;
  if (!qword_27CE19D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D40);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.elementCategoryGroups.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.localizedPassName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.passIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

__n128 IdentityDocumentPresentmentConfiguration.Credential.init(credentialIdentifier:elementCategoryGroups:localizedPassName:passIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 48);
  *a8 = a1;
  *(a8 + 8) = a2;
  result = *a3;
  v12 = *(a3 + 16);
  *(a8 + 16) = *a3;
  *(a8 + 32) = v12;
  *(a8 + 48) = v8;
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

unint64_t sub_21CCF224C()
{
  v1 = 0x6E65644973736170;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000015;
  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21CCF22D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CCF6890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCF2300(uint64_t a1)
{
  v2 = sub_21CCF261C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF233C(uint64_t a1)
{
  v2 = sub_21CCF261C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D48, &qword_21CD8CCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v8;
  v9 = *(v1 + 40);
  v22 = *(v1 + 32);
  v23 = v9;
  v31 = *(v1 + 48);
  v19 = *(v1 + 56);
  v18 = *(v1 + 64);
  v10 = *(v1 + 72);
  v17[3] = *(v1 + 80);
  v17[4] = v10;
  v11 = *(v1 + 96);
  v17[1] = *(v1 + 88);
  v17[2] = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_0(v13, v12);
  sub_21CCF261C();
  sub_21CD842B4();
  LOBYTE(v24) = 0;
  sub_21CD84134();
  if (!v2)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = v31;
    v29 = v19;
    v30 = v18;
    v32 = 1;
    sub_21CCF2670();

    sub_21CD84164();

    LOBYTE(v24) = 2;
    sub_21CD84134();
    LOBYTE(v24) = 3;
    sub_21CD840F4();
  }

  return (*(v5 + 8))(v7, v15);
}

unint64_t sub_21CCF261C()
{
  result = qword_27CE19D50;
  if (!qword_27CE19D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D50);
  }

  return result;
}

unint64_t sub_21CCF2670()
{
  result = qword_27CE19D58;
  if (!qword_27CE19D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D58);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentConfiguration.Credential.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D60, &qword_21CD8CCF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF261C();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v41) = 0;
  v9 = sub_21CD84094();
  v33 = v10;
  LOBYTE(v34) = 1;
  sub_21CCF2B34();
  sub_21CD840C4();
  v32 = v41;
  v29 = v42;
  v31 = v43;
  v30 = v44;
  v27 = v45;
  v26 = v46;
  v54 = v47;
  LOBYTE(v41) = 2;
  v25 = sub_21CD84094();
  v28 = v11;
  v55 = 3;
  v12 = sub_21CD84054();
  v14 = v13;
  v15 = v12;
  (*(v6 + 8))(v8, v5);
  *&v34 = v9;
  *(&v34 + 1) = v33;
  *&v35 = v32;
  v16 = v29;
  *(&v35 + 1) = v29;
  *&v36 = v31;
  *(&v36 + 1) = v30;
  LOBYTE(v37) = v27;
  *(&v37 + 1) = v26;
  v24 = v54;
  LOBYTE(v38) = v54;
  v17 = v25;
  v18 = v28;
  *(&v38 + 1) = v25;
  *&v39 = v28;
  *(&v39 + 1) = v15;
  v40 = v14;
  *(a2 + 96) = v14;
  v19 = v35;
  *a2 = v34;
  *(a2 + 16) = v19;
  v20 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v20;
  v21 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v21;
  sub_21CCF2B88(&v34, &v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v41 = v9;
  v42 = v33;
  v43 = v32;
  v44 = v16;
  v45 = v31;
  v46 = v30;
  v47 = v27;
  v48 = v26;
  v49 = v24;
  v50 = v17;
  v51 = v18;
  v52 = v15;
  v53 = v14;
  return sub_21CCF2BC0(&v41);
}

unint64_t sub_21CCF2B34()
{
  result = qword_27CE19D68;
  if (!qword_27CE19D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D68);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.localizedName.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.name.getter()
{
  v1 = *v0;

  return v1;
}

void IdentityDocumentPresentmentConfiguration.RelyingParty.relyingPartyType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_21CCF2CB0(v2, v3, v4, v5, v6);
}

void sub_21CCF2CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5 != 2)
    {
      return;
    }
  }
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.usageDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t static IdentityDocumentPresentmentConfiguration.RelyingParty.firstPartyService(nameOverride:usageDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21CD83834();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_21CD83654();
  v20 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_21CD83664();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2;
  if (!a2)
  {
    v17 = v20;
    sub_21CD83A94();
    if (qword_27CE18BB0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, qword_27CE1C518);
    (*(v17 + 16))(v13, v18, v11);
    sub_21CD83824();
    sub_21CD83684();
    a1 = sub_21CD83B44();
  }

  *a5 = a1;
  *(a5 + 8) = v16;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
}

uint64_t static IdentityDocumentPresentmentConfiguration.RelyingParty.application(applicationIdentifier:localizedName:usageDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 1;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
}

uint64_t static IdentityDocumentPresentmentConfiguration.RelyingParty.web(brandIdentifier:displayOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = 2;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
}

CoreIDV::IdentityDocumentPresentmentConfiguration::RelyingParty::RelyingPartyType::WebConfiguration __swiftcall IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.init(brandIdentifier:displayOrigin:)(Swift::String_optional brandIdentifier, Swift::String displayOrigin)
{
  *v2 = brandIdentifier;
  v2[1].value = displayOrigin;
  result.displayOrigin = displayOrigin;
  result.brandIdentifier = brandIdentifier;
  return result;
}

uint64_t sub_21CCF30AC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CCF3108@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CCF6A04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCF3130(uint64_t a1)
{
  v2 = sub_21CCF5278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF316C(uint64_t a1)
{
  v2 = sub_21CCF5278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D70, &qword_21CD8CCF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v7;
  v8 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v8;
  v23 = *(v1 + 48);
  v9 = *(v1 + 56);
  v12[0] = *(v1 + 64);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5278();
  sub_21CD842B4();
  LOBYTE(v18) = 0;
  v10 = v17;
  sub_21CD840F4();
  if (!v10)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v23;
    v24 = 1;
    sub_21CCF2CB0(v16, v15, v14, v13, v23);
    sub_21CCF52CC();
    sub_21CD84164();
    sub_21CCF5320(v18, v19, v20, v21, v22);
    LOBYTE(v18) = 2;
    sub_21CD840F4();
  }

  return (*(v4 + 8))(v6, v3);
}

void IdentityDocumentPresentmentConfiguration.RelyingParty.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D88, &qword_21CD8CD00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5278();
  sub_21CD842A4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    v9 = sub_21CD84054();
    v24 = v10;
    LOBYTE(v25) = 1;
    sub_21CCF5378();
    sub_21CD840C4();
    v21 = v30;
    v22 = v32;
    v23 = v31;
    v20 = v33;
    v39 = v34;
    v40 = 2;
    v11 = sub_21CD84054();
    v13 = v12;
    v14 = v11;
    (*(v6 + 8))(v8, v5);
    v15 = v24;
    *&v25 = v9;
    *(&v25 + 1) = v24;
    v16 = v21;
    *&v26 = v21;
    *(&v26 + 1) = v23;
    v17 = v20;
    *&v27 = v22;
    *(&v27 + 1) = v20;
    LOBYTE(v28) = v39;
    *(&v28 + 1) = v14;
    v29 = v13;
    *(a2 + 64) = v13;
    v18 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v18;
    v19 = v26;
    *a2 = v25;
    *(a2 + 16) = v19;
    sub_21CCF1690(&v25, &v30);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v30 = v9;
    v31 = v15;
    v32 = v16;
    v33 = v23;
    v34 = v22;
    v35 = v17;
    v36 = v39;
    v37 = v14;
    v38 = v13;
    sub_21CCF1C20(&v30);
  }
}

uint64_t sub_21CCF36E0(uint64_t a1)
{
  v2 = sub_21CCF54C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF371C(uint64_t a1)
{
  v2 = sub_21CCF54C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF3758()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 6448503;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21CCF37B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CCF6B2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCF37E0(uint64_t a1)
{
  v2 = sub_21CCF53CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF381C(uint64_t a1)
{
  v2 = sub_21CCF53CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF3858(uint64_t a1)
{
  v2 = sub_21CCF5570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF3894(uint64_t a1)
{
  v2 = sub_21CCF5570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF38D0(uint64_t a1)
{
  v2 = sub_21CCF5420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF390C(uint64_t a1)
{
  v2 = sub_21CCF5420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19D98, &qword_21CD8CD08);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DA0, &qword_21CD8CD10);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DA8, &qword_21CD8CD18);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DB0, &qword_21CD8CD20);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = v1[1];
  v31 = *v1;
  v32 = v14;
  v15 = v1[2];
  v23 = v1[3];
  v24 = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF53CC();
  sub_21CD842B4();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v35) = 1;
      sub_21CCF54C8();
      v17 = v34;
      sub_21CD840E4();
      v35 = v31;
      v36 = v32;
      sub_21CCF551C();
      v18 = v27;
      sub_21CD84164();
      v19 = *(v26 + 8);
      v20 = v7;
    }

    else
    {
      LOBYTE(v35) = 2;
      sub_21CCF5420();
      v21 = v28;
      v17 = v34;
      sub_21CD840E4();
      v35 = v31;
      v36 = v32;
      v37 = v24;
      v38 = v23;
      sub_21CCF5474();
      v18 = v30;
      sub_21CD84164();
      v19 = *(v29 + 8);
      v20 = v21;
    }

    v19(v20, v18);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_21CCF5570();
    v17 = v34;
    sub_21CD840E4();
    sub_21CCF55C4();
    sub_21CD84164();
    (*(v25 + 8))(v10, v8);
  }

  return (*(v33 + 8))(v13, v17);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DF0, &qword_21CD8CD28);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v43 = &v36[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19DF8, &qword_21CD8CD30);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E00, &qword_21CD8CD38);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E08, &unk_21CD8CD40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-v13];
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_21CCF53CC();
  v16 = v45;
  sub_21CD842A4();
  if (!v16)
  {
    v45 = v12;
    v18 = v43;
    v17 = v44;
    v19 = sub_21CD840D4();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_21CCD18D4();
    if (v21 == 3 || v52 != v53 >> 1)
    {
      v25 = sub_21CD83FA4();
      swift_allocError();
      v26 = v14;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v28 = &type metadata for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v45 + 8))(v26, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v46) = 1;
          sub_21CCF54C8();
          v22 = v7;
          sub_21CD84034();
          v23 = v45;
          sub_21CCF566C();
          v24 = v40;
          sub_21CD840C4();
          (*(v41 + 8))(v22, v24);
          (*(v23 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v34 = v46;
          v35 = v47;
        }

        else
        {
          LOBYTE(v46) = 2;
          sub_21CCF5420();
          sub_21CD84034();
          v30 = v45;
          sub_21CCF5618();
          v31 = v38;
          sub_21CD840C4();
          (*(v42 + 8))(v18, v31);
          (*(v30 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v34 = v46;
          v35 = v47;
          v32 = v48;
          v33 = v49;
        }
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_21CCF5570();
        sub_21CD84034();
        sub_21CCF56C0();
        sub_21CD840C4();
        (*(v39 + 8))(v10, v8);
        (*(v45 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v32 = 0;
        v33 = 0;
      }

      *v17 = v34;
      *(v17 + 8) = v35;
      *(v17 + 16) = v32;
      *(v17 + 24) = v33;
      *(v17 + 32) = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.applicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21CCF449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000021CD9F240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCF4530(uint64_t a1)
{
  v2 = sub_21CCF5714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF456C(uint64_t a1)
{
  v2 = sub_21CCF5714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E28, &qword_21CD8CD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.ApplicationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E38, &qword_21CD8CD58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842A4();
  if (!v2)
  {
    v9 = sub_21CD84094();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCF4870(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E28, &qword_21CD8CD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5714();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CCF49AC(uint64_t a1)
{
  v2 = sub_21CCF5768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF49E8(uint64_t a1)
{
  v2 = sub_21CCF5768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.FirstPartyServiceConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E40, &qword_21CD8CD60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5768();
  sub_21CD842B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CCF4B88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E40, &qword_21CD8CD60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF5768();
  sub_21CD842B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.brandIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.displayOrigin.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21CCF4CFC()
{
  if (*v0)
  {
    return 0x4F79616C70736964;
  }

  else
  {
    return 0x656449646E617262;
  }
}

uint64_t sub_21CCF4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449646E617262 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E69676972)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CCF4E3C(uint64_t a1)
{
  v2 = sub_21CCF57BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF4E78(uint64_t a1)
{
  v2 = sub_21CCF57BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E50, &qword_21CD8CD68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF57BC();
  sub_21CD842B4();
  v12 = 0;
  v8 = v10[3];
  sub_21CD840F4();
  if (!v8)
  {
    v11 = 1;
    sub_21CD84134();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.WebConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19E60, &qword_21CD8CD70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF57BC();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_21CD84054();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_21CD84094();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21CCF5278()
{
  result = qword_27CE19D78;
  if (!qword_27CE19D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D78);
  }

  return result;
}

unint64_t sub_21CCF52CC()
{
  result = qword_27CE19D80;
  if (!qword_27CE19D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D80);
  }

  return result;
}

void sub_21CCF5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return;
    }
  }
}

unint64_t sub_21CCF5378()
{
  result = qword_27CE19D90;
  if (!qword_27CE19D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19D90);
  }

  return result;
}

unint64_t sub_21CCF53CC()
{
  result = qword_27CE19DB8;
  if (!qword_27CE19DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DB8);
  }

  return result;
}

unint64_t sub_21CCF5420()
{
  result = qword_27CE19DC0;
  if (!qword_27CE19DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DC0);
  }

  return result;
}

unint64_t sub_21CCF5474()
{
  result = qword_27CE19DC8;
  if (!qword_27CE19DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DC8);
  }

  return result;
}

unint64_t sub_21CCF54C8()
{
  result = qword_27CE19DD0;
  if (!qword_27CE19DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DD0);
  }

  return result;
}

unint64_t sub_21CCF551C()
{
  result = qword_27CE19DD8;
  if (!qword_27CE19DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DD8);
  }

  return result;
}

unint64_t sub_21CCF5570()
{
  result = qword_27CE19DE0;
  if (!qword_27CE19DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DE0);
  }

  return result;
}

unint64_t sub_21CCF55C4()
{
  result = qword_27CE19DE8;
  if (!qword_27CE19DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19DE8);
  }

  return result;
}

unint64_t sub_21CCF5618()
{
  result = qword_27CE19E10;
  if (!qword_27CE19E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E10);
  }

  return result;
}

unint64_t sub_21CCF566C()
{
  result = qword_27CE19E18;
  if (!qword_27CE19E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E18);
  }

  return result;
}

unint64_t sub_21CCF56C0()
{
  result = qword_27CE19E20;
  if (!qword_27CE19E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E20);
  }

  return result;
}

unint64_t sub_21CCF5714()
{
  result = qword_27CE19E30;
  if (!qword_27CE19E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E30);
  }

  return result;
}

unint64_t sub_21CCF5768()
{
  result = qword_27CE19E48;
  if (!qword_27CE19E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E48);
  }

  return result;
}

unint64_t sub_21CCF57BC()
{
  result = qword_27CE19E58;
  if (!qword_27CE19E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E58);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CCF5838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21CCF5880(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21CCF5910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21CCF5958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CCF59E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_21CCF5A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CCF5AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21CCF5B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CCF5B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21CCF5BC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21CCF5C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CCF5C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentPresentmentConfiguration.Credential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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