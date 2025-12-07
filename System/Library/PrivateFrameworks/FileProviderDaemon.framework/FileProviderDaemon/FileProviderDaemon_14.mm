void sub_1CF1D9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 64;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
  sub_1CF0230B4(&v17, v14, a4, v14, a7);
  if (!v7)
  {
    v17 = -36;
    sub_1CF0230B4(&v17, &type metadata for JobCode, a4, &type metadata for JobCode, a7);
    v17 = -4;
    sub_1CF0230B4(&v17, &type metadata for FileTreeSide, a4, &type metadata for FileTreeSide, a7);
    if (v15)
    {
      sub_1CF1D98A0(v15, v15, v16, a2, a3, a3, a2, a5, a6, a6, a5);
    }

    else
    {
      sub_1CF1D98A0(v15, v15, v16, a2, a3, a2, a3, a5, a6, a5, a6);
    }
  }
}

void sub_1CF1D9D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_1CF1D9B58(a1, a4[2], a4[3], a2, a4[4], a4[5], a3);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1CF1D9D8C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF1D9E08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1D9E48()
{
  result = qword_1EDEA8758;
  if (!qword_1EDEA8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8758);
  }

  return result;
}

unint64_t sub_1CF1D9F0C()
{
  result = qword_1EDEA8760;
  if (!qword_1EDEA8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8760);
  }

  return result;
}

unint64_t sub_1CF1D9F60()
{
  result = qword_1EDEA8778[0];
  if (!qword_1EDEA8778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA8778);
  }

  return result;
}

unint64_t sub_1CF1D9FB8()
{
  result = qword_1EDEA8770;
  if (!qword_1EDEA8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8770);
  }

  return result;
}

unint64_t sub_1CF1DA080()
{
  result = qword_1EDEAD440;
  if (!qword_1EDEAD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD440);
  }

  return result;
}

unint64_t sub_1CF1DA0D4()
{
  result = qword_1EDEAD450[0];
  if (!qword_1EDEAD450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD450);
  }

  return result;
}

unint64_t sub_1CF1DA12C()
{
  result = qword_1EDEAD448;
  if (!qword_1EDEAD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD448);
  }

  return result;
}

unint64_t sub_1CF1DA180(uint64_t a1)
{
  result = sub_1CF1DA1A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA1A8()
{
  result = qword_1EC4BE248;
  if (!qword_1EC4BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE248);
  }

  return result;
}

unint64_t sub_1CF1DA270()
{
  result = qword_1EDEAD420;
  if (!qword_1EDEAD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD420);
  }

  return result;
}

unint64_t sub_1CF1DA2C8()
{
  result = qword_1EDEAD428;
  if (!qword_1EDEAD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD428);
  }

  return result;
}

unint64_t sub_1CF1DA31C(uint64_t a1)
{
  result = sub_1CF1DA344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA344()
{
  result = qword_1EC4BE258;
  if (!qword_1EC4BE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE258);
  }

  return result;
}

unint64_t sub_1CF1DA39C()
{
  result = qword_1EC4BE260;
  if (!qword_1EC4BE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE260);
  }

  return result;
}

uint64_t sub_1CF1DA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF1DA49C()
{
  result = qword_1EC4BE278;
  if (!qword_1EC4BE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE278);
  }

  return result;
}

unint64_t sub_1CF1DA4F0()
{
  result = qword_1EC4BE280;
  if (!qword_1EC4BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE280);
  }

  return result;
}

unint64_t sub_1CF1DA548()
{
  result = qword_1EC4BE288;
  if (!qword_1EC4BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE288);
  }

  return result;
}

uint64_t sub_1CF1DA59C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA5D8()
{
  result = qword_1EC4BE290;
  if (!qword_1EC4BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE290);
  }

  return result;
}

unint64_t sub_1CF1DA62C()
{
  result = qword_1EC4BE298;
  if (!qword_1EC4BE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE298);
  }

  return result;
}

BOOL sub_1CF1DA680(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = a1 >> 5;
  if (v8 > 1)
  {
    if (v8 == 4)
    {
      if (a1 == 128)
      {
        return a2 == 128;
      }

      if (a2 == 129)
      {
        return 1;
      }
    }

    else if (v8 == 3)
    {
      if (a1 <= 0x61u)
      {
        if (a1 == 96)
        {
          if (a2 != 96)
          {
            return 0;
          }
        }

        else if (a2 != 97)
        {
          return 0;
        }

        return 1;
      }

      if (a1 == 98)
      {
        return a2 == 98;
      }

      if (a2 == 99)
      {
        return 1;
      }
    }

    else
    {
      if (a1 > 0x41u)
      {
        if (a1 == 66)
        {
          if (a2 != 66)
          {
            return 0;
          }
        }

        else if (a2 != 67)
        {
          return 0;
        }

        return 1;
      }

      if (a1 != 64)
      {
        return a2 == 65;
      }

      if (a2 == 64)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!(a1 >> 5))
  {
    if (a2 > 0x1Fu)
    {
      return 0;
    }

    v9 = 0x6574617473;
    v10 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }

      if (v10 == 1)
      {
        v12 = 0x80000001CFA2C3F0;
      }

      else
      {
        v12 = 0x80000001CFA2C410;
      }

      v13 = a2;
      if (a2)
      {
LABEL_18:
        if (v13 == 1)
        {
          v9 = 0xD000000000000010;
        }

        else
        {
          v9 = 0xD000000000000012;
        }

        if (v13 == 1)
        {
          v14 = 0x80000001CFA2C3F0;
        }

        else
        {
          v14 = 0x80000001CFA2C410;
        }

        if (v11 != v9)
        {
          goto LABEL_71;
        }

LABEL_68:
        if (v12 == v14)
        {
          v12, a2, v9, a4, a5, a6, a7, a8;
          v27 = v14;
          goto LABEL_70;
        }

LABEL_71:
        v29 = sub_1CF9E8048();
        v12, v45, v46, v47, v48, v49, v50, v51;
        v44 = v14;
        goto LABEL_72;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      v11 = 0x6574617473;
      v13 = a2;
      if (a2)
      {
        goto LABEL_18;
      }
    }

    v14 = 0xE500000000000000;
    if (v11 != 0x6574617473)
    {
      goto LABEL_71;
    }

    goto LABEL_68;
  }

  if ((a2 & 0xE0) != 0x20)
  {
    return 0;
  }

  v15 = (a1 & 1) == 0;
  if (a1)
  {
    v16 = 0x6D617473656D6974;
  }

  else
  {
    v16 = 0x797469726F697270;
  }

  if (v15)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE900000000000070;
  }

  if (a2)
  {
    v18 = 0x6D617473656D6974;
  }

  else
  {
    v18 = 0x797469726F697270;
  }

  if (a2)
  {
    v19 = 0xE900000000000070;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  if (v16 == v18 && v17 == v19)
  {
    v17, a2, v18, a4, a5, a6, a7, a8;
    v27 = v19;
LABEL_70:
    v27, v20, v21, v22, v23, v24, v25, v26;
    return 1;
  }

  v29 = sub_1CF9E8048();
  v17, v30, v31, v32, v33, v34, v35, v36;
  v44 = v19;
LABEL_72:
  v44, v37, v38, v39, v40, v41, v42, v43;
  return v29 & 1;
}

unint64_t sub_1CF1DA934(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF1DA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1CF022A90();
  v33 = &_s9SQLFieldsON_0;
  v34 = a2;
  v35 = v8;
  v36 = a3;
  v9 = type metadata accessor for SQLCodableAccessorWrapper(0, &v33);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v38 = 64;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  sub_1CF0230B4(&v38, v13, a2, v13, a3);
  if (!v4)
  {
    v29 = v10;
    v30 = 0;
    if (v32)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v14 = v31;
      v15 = &type metadata for SQLJobID;
      v16 = sub_1CF1DAE84();
    }

    v33 = v14;
    v36 = v15;
    v37 = v16;
    swift_beginAccess();
    sub_1CF03E0D8(&v33, v3 + 56);
    swift_endAccess();
    sub_1CF021034(sub_1CEFED334, 0, a2, &_s9SQLFieldsON_0, a3, v8, v12);
    WitnessTable = swift_getWitnessTable();
    v18 = v30;
    v19 = sub_1CF023980(v12, v9, WitnessTable);
    if (v18)
    {
      (*(v29 + 8))(v12, v9);
    }

    else
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      (*(v29 + 8))(v12, v9);
      v25 = *(v5 + 96);
      v26 = *(v5 + 104);
      *(v5 + 96) = v22;
      *(v5 + 104) = v23;
      v27 = *(v5 + 112);
      *(v5 + 112) = v24;
      sub_1CF03D7A8(v25, v26, v27);
    }
  }

  return v5;
}

void sub_1CF1DABD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 96);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  type metadata accessor for Propagation.CreateItem(0, &v15);
  if (swift_dynamicCastClass())
  {
    sub_1CF1E6534(v4, a3);
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    type metadata accessor for Propagation.UpdateItem(0, &v15);
    if (swift_dynamicCastClass())
    {
      sub_1CF1E66F4(v4, a3);
    }

    else
    {
      v15 = v5;
      v16 = v6;
      v17 = v7;
      v18 = v8;
      type metadata accessor for Propagation.DeleteItem(0, &v15);
      if (swift_dynamicCastClass())
      {
        sub_1CF1E6964(v4, a3);
      }

      else
      {
        v15 = v6;
        v16 = v5;
        v17 = v8;
        v18 = v7;
        type metadata accessor for Bouncing.BounceItem(0, &v15);
        if (swift_dynamicCastClass())
        {
          sub_1CF1FE944(v4, a3, v9, v10, v11, v12, v13, v14);
        }

        else
        {
          v15 = v6;
          v16 = v5;
          v17 = v8;
          v18 = v7;
          type metadata accessor for Ingestion.CollectCapturedContent(0, &v15);
          if (swift_dynamicCastClass())
          {
            sub_1CF1FEC64(v4, a3);
          }

          else
          {
            v15 = v6;
            v16 = v5;
            v17 = v8;
            v18 = v7;
            type metadata accessor for Ingestion.MergeItems(0, &v15);
            if (swift_dynamicCastClass())
            {
              sub_1CF1FECF4(v4, a3);
            }

            else
            {
              v15 = v6;
              v16 = v5;
              v17 = v8;
              v18 = v7;
              type metadata accessor for Ingestion.UnlinkOldVersion(0, &v15);
              if (swift_dynamicCastClass())
              {
                sub_1CF1FEE18(v4, a3);
              }

              else
              {
                sub_1CF9E7B68();
                __break(1u);
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1CF1DAE84()
{
  result = qword_1EDEA42C8;
  if (!qword_1EDEA42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA42C8);
  }

  return result;
}

unint64_t sub_1CF1DAED8()
{
  result = qword_1EC4BE2B8;
  if (!qword_1EC4BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemStateSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_20;
  }

  v2 = a2 + 29;
  if (a2 + 29 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 29;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 29;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x1C)
  {
    v8 = v7 - 27;
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

uint64_t storeEnumTagSinglePayload for ItemStateSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 29;
  if (a3 + 29 >= 0xFFFF00)
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

  if (a3 < 0xE3)
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JobSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3C)
  {
    goto LABEL_17;
  }

  if (a2 + 196 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 196) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 196;
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

      return (*a1 | (v4 << 8)) - 196;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 196;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x3B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for JobSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 196 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 196) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3C)
  {
    v4 = 0;
  }

  if (a2 > 0x3B)
  {
    v5 = ((a2 - 60) >> 8) + 1;
    *result = a2 - 60;
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
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF1DB238(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 3 | (4 * (v1 >> 5))) - 6;
  }
}

_BYTE *sub_1CF1DB268(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (32 * ((a2 - 2) >> 2))) + 64;
  }

  return result;
}

uint64_t sub_1CF1DB2AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3A)
  {
    goto LABEL_20;
  }

  v2 = a2 + 198;
  if (a2 + 198 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 198;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 198;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 198;
    }
  }

LABEL_20:
  v7 = (*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7));
  v8 = v7 ^ 0x3F;
  v9 = 64 - v7;
  if (v8 >= 0x3B)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF1DB360(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 198;
  if (a3 + 198 >= 0xFFFF00)
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

  if (a3 < 0x3A)
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
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
    *result = ((62 - a2) >> 1) & 0x1C | (32 * (62 - a2));
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF1DB428(unsigned __int8 *a1)
{
  v1 = (*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7));
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_BYTE *sub_1CF1DB450(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x3B)
  {
    LOBYTE(v2) = a2 - 60;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 4 * (((-a2 >> 3) & 7) - 8 * a2);
  }

  *result = v2;
  return result;
}

uint64_t sub_1CF1DB5A8(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v13);
  if (!v14)
  {
    v12 = 0x284449636F64;
    goto LABEL_5;
  }

  if (v14 == 1)
  {
    v12 = 0x284449656C6966;
LABEL_5:
    v1 = sub_1CF9E7F98();
    v3 = v2;
    MEMORY[0x1D3868CC0](v1);
    v3, v4, v5, v6, v7, v8, v9, v10;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v12;
  }

  if (v13)
  {
    return 0x6873617274;
  }

  else
  {
    return 1953460082;
  }
}

uint64_t sub_1CF1DB6A4(void (*a1)(void **__return_ptr))
{
  a1(&v4);
  v1 = v4;
  v2 = NSFileProviderItemIdentifier.description.getter(v4);

  return v2;
}

uint64_t sub_1CF1DB750(uint64_t (*a1)(__n128), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = a1(v10);
  v14 = a5(v13);
  sub_1CEFCCC44(v12, a3, a4);
  return v14;
}

double sub_1CF1DB810(uint64_t a1)
{
  *a1 = 8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

BOOL sub_1CF1DB848(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *a2;
  v9 = a2[1];
  if (v8 != 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    if (v7)
    {
      if ((*(a3 + 48) & 1) == 0)
      {
        v7 = *(a3 + 40);
        goto LABEL_7;
      }

      __break(1u);
LABEL_32:
      sub_1CF5105CC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree+Lookup.swift", 130, 2, 582, v7, 0);
    }

    v7 = *(a3 + 24);
  }

LABEL_7:

  0, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1EEE9AC00](v18);
  v66 = 0;
  v68 = 0u;
  v69 = 0;
  v67 = v7;
  DWORD1(v68) = 0;
  if (v9)
  {
    v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v59[0] = v10;
        v59[1] = v9 & 0xFFFFFFFFFFFFFFLL;
        *(&v68 + 1) = v59;
        v61 = 0;
        *&v62 = v7;
        *(&v62 + 1) = v20;
        *&v63 = v59;
        *(&v63 + 1) = v20;
        v21 = fpfs_openfdbyhandle();
        if (v21 < 0)
        {
          v29 = MEMORY[0x1D38683F0]();
          goto LABEL_25;
        }

        goto LABEL_16;
      }

      if ((v10 & 0x1000000000000000) != 0)
      {
        *(&v68 + 1) = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v61 = 0;
        *&v62 = v7;
        *(&v62 + 1) = v20;
        *&v63 = *(&v68 + 1);
        *(&v63 + 1) = v20;
        LODWORD(v59[0]) = -1;
        v21 = fpfs_openfdbyhandle();
        if (v21 < 0)
        {
          v29 = MEMORY[0x1D38683F0]();
LABEL_25:
          v65.st_dev = 0;
          LOBYTE(v65.st_mode) = 1;
          LOBYTE(v65.st_atimespec.tv_nsec) = 0;
          v5 = sub_1CF19BBE4(v29, &v65.st_dev);
          sub_1CF1969CC(&v65);
          swift_willThrow();
LABEL_26:
          v9, v44, v45, v46, v47, v48, v49, v50;

          return 0;
        }

LABEL_16:
        v38 = v21;
        v9, v22, v23, v24, v25, v26, v27, v28;
        goto LABEL_17;
      }
    }

    sub_1CF9E7938();
    if (v4)
    {
      goto LABEL_26;
    }

    v9, v44, v45, v46, v47, v48, v49, v50;
    v38 = v60;
  }

  else
  {
    v61 = 0;
    v62 = v7;
    v63 = 0uLL;
    LODWORD(v59[0]) = -1;
    v30 = fpfs_openfdbyhandle();
    if (v30 < 0)
    {
      v43 = MEMORY[0x1D38683F0]();
      v65.st_dev = 0;
      LOBYTE(v65.st_mode) = 1;
      LOBYTE(v65.st_atimespec.tv_nsec) = 0;
      v51 = sub_1CF19BBE4(v43, &v65.st_dev);
      sub_1CF1969CC(&v65);
      swift_willThrow();
      0, v52, v53, v54, v55, v56, v57, v58;

      return 0;
    }

    v38 = v30;
    0, v31, v32, v33, v34, v35, v36, v37;
  }

LABEL_17:
  memset(&v65, 0, sizeof(v65));
  if (fstat(v38, &v65) < 0)
  {
    v41 = MEMORY[0x1D38683F0]();
    v61 = 3;
    v62 = 0u;
    v63 = 0u;
    v64 = 19;
    v42 = sub_1CF19BBE4(v41, &v61);
    sub_1CF1969CC(&v61);
    swift_willThrow();
    if ((v38 & 0x80000000) == 0)
    {
      close(v38);
    }

    return 0;
  }

  result = v65.st_ino == a4;
  if ((v38 & 0x80000000) == 0)
  {
    v40 = v65.st_ino == a4;
    close(v38);
    return v40;
  }

  return result;
}

uint64_t sub_1CF1DBC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1DBCF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1CF1DBDD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v41 - v16);
  v18 = *(a1 + 24);
  if (!v18)
  {
    sub_1CEFDB034();
    v26 = swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 19;
    *v17 = v26;
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    v29 = a2;
LABEL_6:
    sub_1CF1DEF00(v28, v29);
    return 0;
  }

  v41[0] = a2;
  v19 = strlen(v18);
  if (v19 <= 0)
  {
    sub_1CEFDB034();
    v30 = swift_allocError();
    *v31 = 2;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 19;
    *v17 = v30;
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    v29 = v41[0];
    goto LABEL_6;
  }

  v20 = v19;
  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 stringWithFileSystemRepresentation:v18 length:v20];

  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;

  a3(a1, v23, v25);
  swift_storeEnumTagMultiPayload();
  sub_1CEFE55D0(v8, v11, &unk_1EC4BF310, &unk_1CF9FDB30);
  v32 = v41[0];
  sub_1CEFE55D0(v11, v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CF1DEF00(v14, v32);
  v25, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

uint64_t sub_1CF1DC0A8(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0x80000001CFA2F2A0;
  if (a1 == 0xD000000000000013 && 0x80000001CFA2F2A0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA2F2C0;
    if (a1 == 0xD000000000000017 && 0x80000001CFA2F2C0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001CFA2F2E0;
      if (a1 == 0xD000000000000011 && 0x80000001CFA2F2E0 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x80000001CFA2F300;
        if (a1 == 0xD000000000000013 && 0x80000001CFA2F300 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v15 = 0xEE0074657366664FLL;
          if (a1 == 0x6E6F697469736F70 && a2 == 0xEE0074657366664FLL || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
          {
            0xE500000000000000, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else
          {
            v16 = sub_1CF9E8048();
            a2, v17, v18, v19, v20, v21, v22, v23;
            if (v16)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1CF1DC2C8(unsigned __int8 a1)
{
  v1 = 0x6E6F697469736F70;
  v2 = 0xD000000000000013;
  if (a1 != 4)
  {
    v1 = 0x74696D696CLL;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000013;
  }

  v3 = 0xD000000000000017;
  if (a1 != 1)
  {
    v3 = 0xD000000000000011;
  }

  if (a1)
  {
    v2 = v3;
  }

  if (a1 <= 2u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1CF1DC38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF1DC400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF1DC46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF1DC4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1CF1DC54C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CEFEBB18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1DC57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF1DC2C0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1DC5B8@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1DC0A8(a1, a2, *(a4 + 16), a5, a6, a7, a8, a9);
  *a3 = result;
  return result;
}

unint64_t sub_1CF1DC608@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CEFEBB18(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1DC634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF1DC688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF1DC6DC()
{
  swift_beginAccess();
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](64, 0xE100000000000000);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  sub_1CF9E7948();
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0x3A646165726E7520, 0xE800000000000000);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;

  MEMORY[0x1D3868CC0](0x3A64616572, 0xE500000000000000);
  0xE400000000000000, v47, v48, v49, v50, v51, v52, v53;
  0xE500000000000000, v54, v55, v56, v57, v58, v59, v60;
  return 980576612;
}

uint64_t sub_1CF1DC8B4(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF1DCF6C(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_1CF1DC904(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3D8, &qword_1CF9FDB40);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v7 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3E0, &qword_1CF9FDB48);
  sub_1CF1DEFFC(qword_1EC4BE3E8, &qword_1EC4BE3E0, &qword_1CF9FDB48);
  sub_1CF9E8298();
  if (v2)
  {
    v8 = v1;
    __swift_destroy_boxed_opaque_existential_1(v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDA0, &unk_1CF9FDB50);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v18;
    v10 = v19;
    LOBYTE(v20[0]) = 0;
    v8 = v1;
    v11 = sub_1CF9E7DE8();
    LOBYTE(v20[0]) = 1;
    v12 = sub_1CF9E7DD8();
    LOBYTE(v20[0]) = 2;
    v13 = sub_1CF9E7D98();
    LOBYTE(v20[0]) = 3;
    v14 = sub_1CF9E7D98();
    *(v1 + 16) = 0;
    *(v1 + 24) = v11;
    *(v1 + 32) = v12;
    *(v1 + 36) = v13;
    *(v1 + 40) = v14;
    *(v1 + 44) = 1;
    LOBYTE(v20[0]) = 5;
    v16 = sub_1CF9E7D08();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 0x7FFFFFFF;
    }

    else
    {
      v17 = v16;
    }

    *(v1 + 56) = v17;
    swift_beginAccess();
    *(v1 + 52) = -1;
    *(v1 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v9 + 8))(v6, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v8;
}

uint64_t sub_1CF1DCC38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3B8, &qword_1CF9FDB10);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v7 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3C0, &qword_1CF9FDB18);
  sub_1CF1DEFFC(&qword_1EC4BE3C8, &qword_1EC4BE3C0, &qword_1CF9FDB18);
  sub_1CF9E8298();
  if (v2)
  {
    v8 = v1;
    __swift_destroy_boxed_opaque_existential_1(v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3D0, &unk_1CF9FDB20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v18;
    v10 = v19;
    LOBYTE(v20[0]) = 0;
    v8 = v1;
    v11 = sub_1CF9E7DE8();
    LOBYTE(v20[0]) = 1;
    v12 = sub_1CF9E7DD8();
    LOBYTE(v20[0]) = 2;
    v13 = sub_1CF9E7D98();
    LOBYTE(v20[0]) = 3;
    v14 = sub_1CF9E7D98();
    *(v1 + 16) = 0;
    *(v1 + 24) = v11;
    *(v1 + 32) = v12;
    *(v1 + 36) = v13;
    *(v1 + 40) = v14;
    *(v1 + 44) = 1;
    LOBYTE(v20[0]) = 5;
    v16 = sub_1CF9E7D08();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 0x7FFFFFFF;
    }

    else
    {
      v17 = v16;
    }

    *(v1 + 56) = v17;
    swift_beginAccess();
    *(v1 + 52) = -1;
    *(v1 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v9 + 8))(v6, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v8;
}

uint64_t sub_1CF1DCF6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *(*v4 + 112);
  type metadata accessor for FSDirectoryLister.CodingKeys(255, v23, a3, a4);
  swift_getWitnessTable();
  v21 = sub_1CF9E7E08();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - v8;
  *(v4 + 48) = 0;
  *(v4 + 64) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for FSDirectoryLister(0, v23, v12, v13);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    v10 = sub_1CF9E7DE8();
    LOBYTE(v22[0]) = 1;
    v11 = sub_1CF9E7DD8();
    LOBYTE(v22[0]) = 2;
    v15 = sub_1CF9E7D98();
    LOBYTE(v22[0]) = 3;
    v16 = sub_1CF9E7D98();
    *(v4 + 16) = 0;
    *(v4 + 24) = v10;
    *(v4 + 32) = v11;
    *(v4 + 36) = v15;
    *(v4 + 40) = v16;
    *(v4 + 44) = 1;
    LOBYTE(v22[0]) = 5;
    v17 = v21;
    v18 = sub_1CF9E7D08();
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 0x7FFFFFFF;
    }

    else
    {
      v19 = v18;
    }

    *(v4 + 56) = v19;
    swift_beginAccess();
    *(v4 + 52) = -1;
    *(v4 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(v7 + 8))(v9, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v4;
}

uint64_t sub_1CF1DD2A4(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v19 = &v18 - v6;
  type metadata accessor for FSDirectoryLister.CodingKeys(255, *(v4 + 112), v7, v8);
  swift_getWitnessTable();
  v9 = sub_1CF9E7F78();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  swift_beginAccess();
  LOBYTE(v22[0]) = 0;
  v13 = v23;
  sub_1CF9E7F68();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v14 = v19;
  v15 = v20;
  v16 = v21;
  LOBYTE(v22[0]) = 1;
  sub_1CF9E7F58();
  LOBYTE(v22[0]) = 2;
  sub_1CF9E7F18();
  LOBYTE(v22[0]) = 3;
  sub_1CF9E7F18();
  LOBYTE(v22[0]) = 5;
  sub_1CF9E7F18();
  sub_1CF9E7E28();
  v23 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v15 + 8))(v14, v16);
  (*(v10 + 8))(v12, v9);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_1CF1DD628()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  v2 = *(v0 + 64);
}

uint64_t sub_1CF1DD65C()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  return v0;
}

uint64_t sub_1CF1DD688()
{
  sub_1CF1DD65C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF1DD744(void *a1)
{
  v29 = a1;
  v2 = sub_1CF9E5868();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v21 - v5;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[12] = 0;
  v1[13] = 0;
  if (qword_1EC4BCD90 != -1)
  {
    swift_once();
  }

  v10 = *algn_1EC4EBF38;
  v25 = qword_1EC4EBF30;
  v27 = byte_1EC4EBF49;
  v28 = byte_1EC4EBF48;
  v26 = byte_1EC4EBF4A;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA450;
  v13 = qword_1EC4EBF40;
  sub_1CF9E58C8();
  sub_1CF9E58C8();
  type metadata accessor for VFSLookupScope(0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  *(v14 + 48) = 1;
  *(v14 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = &unk_1F4BEC9D8;
  *(v14 + 40) = 0;
  *(v14 + 48) = 1;
  *(v14 + 56) = 0;
  *(v14 + 64) = v25;
  *(v14 + 72) = v10;
  *(v14 + 80) = v13;
  v15 = v27;
  *(v14 + 88) = v28;
  *(v14 + 89) = v15;
  *(v14 + 90) = v26;
  v16 = *(v12 + 16);

  if (v16)
  {
    (*(v7 + 16))(v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v12 + v11, v6);
  }

  else
  {
    (*(v7 + 56))(v21, 1, 1, v6);
    (*(v23 + 104))(v22, *MEMORY[0x1E6968F70], v24);
    sub_1CF9E5A38();
  }

  *(v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v12;
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v9, v6);
  *(v14 + 49) = 0;
  v1[10] = 0;
  v1[11] = 0;
  v1[9] = v14;
  (*(v7 + 56))(v1 + qword_1EDEBBC00, 1, 1, v6);
  v17 = (v1 + qword_1EDEBBC08);
  *v17 = 0;
  v17[1] = 0;
  v18 = v29;
  sub_1CF1A91AC(v29, v30);
  v19 = sub_1CF1DC904(v30);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v19;
}

uint64_t sub_1CF1DDB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v68);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v60 - v12);
  v71 = -1;
  v69 = a1;
  if (!*(a1 + 24))
  {
LABEL_23:
    __break(1u);
  }

  sub_1CF9E6A58();
  v15 = v14;
  swift_beginAccess();
  sub_1CF9E6978();
  v16 = openat_s();

  if ((v16 & 0x80000000) != 0)
  {
    v49 = MEMORY[0x1D38683F0](v17);
    v74 = 0;
    aBlock = 0u;
    v73 = 0u;
    LOBYTE(v75) = 19;
    v50 = sub_1CF19BBE4(v49, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    swift_endAccess();
    v15, v51, v52, v53, v54, v55, v56, v57;
    v58 = v69;
    if (!sub_1CF1DEF70(v50, v69))
    {
      swift_willThrow();
      result = v71;
      if ((v71 & 0x80000000) != 0)
      {
        return result;
      }

      return close(result);
    }

    v59 = objc_opt_self();
    if ((v58[52] & 0x80000000) == 0)
    {
      [v59 fp_errorForDataProtectionClass_];
      swift_willThrow();

      result = v71;
      if ((v71 & 0x80000000) != 0)
      {
        return result;
      }

      return close(result);
    }

    goto LABEL_22;
  }

  v67 = v13;
  v61 = v10;
  v65 = v7;
  v60[0] = a2;
  v60[1] = v3;
  swift_endAccess();
  v15, v18, v19, v20, v21, v22, v23, v24;
  if ((v71 & 0x80000000) == 0)
  {
    close(v71);
  }

  v71 = v16;
  v25 = *(v2 + 72);
  os_unfair_lock_lock((v25 + 56));
  v26 = *(v25 + 64);
  v27 = *(v25 + 72);
  v28 = *(v25 + 88);
  v29 = *(v25 + 89);
  v30 = *(v25 + 90);

  v66 = &v73;
  v31 = *(v25 + 80);
  os_unfair_lock_unlock((v25 + 56));
  v63 = v60;
  MEMORY[0x1EEE9AC00](v32);
  v60[-2] = v2;
  v60[-1] = &v71;
  v74 = v26;
  v75 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_1CEFDB088;
  *(&v73 + 1) = &block_descriptor_6;
  v33 = _Block_copy(&aBlock);
  v64 = v27;

  v62 = v33;
  v76 = v33;
  v77 = v31;
  v78 = v28;
  v79 = v29;
  v80 = v30;
  sub_1CEFDB034();
  v34 = swift_allocError();
  *v35 = 7;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 19;
  v36 = v67;
  *v67 = v34;
  swift_storeEnumTagMultiPayload();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_1CF1DEED8;
  v37[4] = &v60[-4];
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1CF1DEEF4;
  *(v38 + 24) = v37;
  v74 = sub_1CEFDB240;
  v75 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_1CEFDB270;
  *(&v73 + 1) = &block_descriptor_52;
  v39 = _Block_copy(&aBlock);

  v40 = fpfs_load_additional_attrs();
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v40)
  {
    swift_getErrorValue();
    v41 = v70;
    v42 = swift_allocError();
    *v43 = 7;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 19;
    v44 = v40;
    v45 = sub_1CF199074(v42, v41);

    v46 = v61;
    *v61 = v45;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DEF00(v46, v36);
  }

  v47 = v65;
  sub_1CEFCCBDC(v36, v65, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&aBlock = *v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v36, &unk_1EC4BF310, &unk_1CF9FDB30);

    _Block_release(v62);

    result = v71;
    if ((v71 & 0x80000000) != 0)
    {
      return result;
    }

    return close(result);
  }

  sub_1CEFE55D0(v47, v60[0], &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCC44(v36, &unk_1EC4BF310, &unk_1CF9FDB30);

  _Block_release(v62);

  result = v71;
  if ((v71 & 0x80000000) == 0)
  {
    return close(v71);
  }

  return result;
}

uint64_t sub_1CF1DE258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, void *a6@<X8>)
{
  v96 = a6;
  v93 = a1;
  v94 = a5;
  v91 = a2;
  v92 = a3;
  v7 = sub_1CF9E6118();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v83 - v10;
  v11 = sub_1CF9E5868();
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E53C8();
  v88 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v83 - v18;
  v20 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  v95 = a4;
  v26 = a4 + qword_1EDEBBC00;
  v28 = v27;
  v30 = v29;
  sub_1CEFCCBDC(v26, v19, &unk_1EC4BE310, qword_1CF9FCBE0);
  v98 = v30;
  v31 = *(v30 + 48);
  v100 = v28;
  if (v31(v19, 1, v28) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v99[0]) = 5;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v88 + 8))(v16, v14);
    return swift_willThrow();
  }

  (*(v98 + 32))(v25, v19, v100);
  v34 = v92;
  v33 = v93;
  v35 = *(v93 + 40) & 0xFFFFFFFE;
  v36 = v89;
  v37 = v90;
  v38 = *(v89 + 104);
  v39 = v91;
  v99[0] = v91;
  v99[1] = v92;
  if (v35 == 2)
  {
    v40 = MEMORY[0x1E6968F58];
  }

  else
  {
    v40 = MEMORY[0x1E6968F68];
  }

  v38(v13, *v40, v90);
  sub_1CEFE4E68();
  sub_1CF9E5A48();
  (*(v36 + 8))(v13, v37);
  if (fpfs_is_busy_date())
  {
    v41 = sub_1CF9E5928();
    v42 = *v94;
    if (*(v95 + qword_1EDEBBC08 + 8))
    {
      v43 = sub_1CF9E6888();
    }

    else
    {
      v43 = 0;
    }

    v48 = [v41 fp:v42 deleteStaleBusyFileWithFileDescriptor:v43 coordinatorPurposeIdentifier:?];

    v49 = fpfs_current_or_default_log();
    if (v48)
    {
      v50 = v84;
      sub_1CF9E6128();

      v51 = sub_1CF9E6108();
      LOBYTE(v52) = sub_1CF9E7298();
      v34, v53, v54, v55, v56, v57, v58, v59;
      if (os_log_type_enabled(v51, v52))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = v39;
        v63 = v98;
        v64 = v61;
        v99[0] = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_1CEFD0DF0(v62, v34, v99);
        v65 = "🏗 Removed stale busy file %s";
LABEL_17:
        _os_log_impl(&dword_1CEFC7000, v51, v52, v65, v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1D386CDC0](v64, -1, -1);
        MEMORY[0x1D386CDC0](v60, -1, -1);

        (*(v86 + 8))(v50, v87);
        v75 = *(v63 + 8);
        v76 = v100;
        v75(v22, v100);
        v75(v25, v76);
LABEL_19:
        v79 = 1;
        v45 = v96;
        goto LABEL_21;
      }
    }

    else
    {
      v50 = v85;
      sub_1CF9E6128();

      v51 = sub_1CF9E6108();
      v52 = sub_1CF9E7298();
      v34, v66, v67, v68, v69, v70, v71, v72;
      if (os_log_type_enabled(v51, v52))
      {
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v74 = v39;
        v63 = v98;
        v64 = v73;
        v99[0] = v73;
        *v60 = 136315138;
        *(v60 + 4) = sub_1CEFD0DF0(v74, v34, v99);
        v65 = "🏗 Ignoring the busy file %s from enumeration";
        goto LABEL_17;
      }
    }

    (*(v86 + 8))(v50, v87);
    v77 = *(v98 + 8);
    v78 = v100;
    v77(v22, v100);
    v77(v25, v78);
    goto LABEL_19;
  }

  type metadata accessor for VFSFileTree(0);
  v45 = v96;
  v44 = v97;
  sub_1CEFE1E30(*v94, v33, 2, v22, *(v95 + 72), v96, 0);
  if (v44)
  {
    v46 = *(v98 + 8);
    v47 = v100;
    v46(v22, v100);
    return (v46)(v25, v47);
  }

  v80 = *(v98 + 8);
  v81 = v100;
  v80(v22, v100);
  v80(v25, v81);
  v79 = 0;
LABEL_21:
  v82 = type metadata accessor for VFSItem(0);
  return (*(*(v82 - 8) + 56))(v45, v79, 1, v82);
}

void sub_1CF1DEA44()
{

  swift_unknownObjectRelease();
  *(v0 + 104), v1, v2, v3, v4, v5, v6, v7;
  sub_1CEFCCC44(v0 + qword_1EDEBBC00, &unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(v0 + qword_1EDEBBC08 + 8);

  v15, v8, v9, v10, v11, v12, v13, v14;
}

uint64_t sub_1CF1DEAB0()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  swift_unknownObjectRelease();
  *(v0 + 104), v2, v3, v4, v5, v6, v7, v8;
  sub_1CEFCCC44(v0 + qword_1EDEBBC00, &unk_1EC4BE310, qword_1CF9FCBE0);
  *(v0 + qword_1EDEBBC08 + 8), v9, v10, v11, v12, v13, v14, v15;
  return v0;
}

uint64_t sub_1CF1DEB28()
{
  sub_1CF1DEAB0();

  return swift_deallocClassInstance();
}

void sub_1CF1DEBA0(uint64_t a1)
{
  sub_1CF1DEC4C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1CF1DEC4C(uint64_t a1)
{
  if (!qword_1EDEAFE20)
  {
    sub_1CF9E5A58();
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAFE20);
    }
  }
}

uint64_t sub_1CF1DECA4@<X0>(uint64_t a2@<X8>)
{
  v3 = fpfs_fileattrs_fullpath();
  if (v3 && (v4 = v3, v5 = strlen(v3), v5 >= 1))
  {
    v6 = v5;
    v7 = [objc_opt_self() defaultManager];
    v8 = [v7 stringWithFileSystemRepresentation:v4 length:v6];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    sub_1CF9E58C8();
    swift_bridgeObjectRelease_n();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1CF9E5A58();
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

uint64_t sub_1CF1DEDC4(void *a1)
{
  swift_allocObject();
  sub_1CF1A91AC(a1, v4);
  v2 = sub_1CF1DCC38(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF1DEE3C()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1CF1DEF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF1DEF70(uint64_t a1, _DWORD *a2)
{
  sub_1CF9E52B8();
  sub_1CF196978();
  if ((sub_1CF9E5658() & 1) == 0 || a2[10] != 1 || (a2[52] - 1) > 1)
  {
    return 0;
  }

  v3 = a2[53];
  return v3 == geteuid();
}

uint64_t sub_1CF1DEFFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvictionUrgency(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1CF1DF1A8(uint64_t a1, char a2)
{
  v10[4] = a1;
  v11 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6530];
  }

  v10[0] = a1;
  v10[3] = v2;
  v3 = sub_1CEFF8EA0(v10);
  v5 = v4;
  sub_1CEFCCC44(v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
    sub_1CF1E13A4();
    v6 = sub_1CF9E56A8();
    v8 = v7;
    v3 = sub_1CF04E5D8(v6, v7);

    sub_1CEFE4714(v6, v8);
  }

  return v3;
}

uint64_t sub_1CF1DF344(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v18 = a4;
  if ((a4 >> 8))
  {
    v4 = 0;
    v5 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  else
  {
    v6 = a4;
    v8 = a2;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = v8;
    *(v4 + 32) = a3;
    *(v4 + 40) = v6 & 1;
    v5 = &type metadata for VFSVersion;
  }

  v17[0] = v4;
  v17[3] = v5;
  v10 = sub_1CEFF8EA0(v17);
  v12 = v11;
  sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v12)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE510, &qword_1CF9FDDC8);
    sub_1CF04EE34(&qword_1EC4BE518, &qword_1EC4BE510, &qword_1CF9FDDC8, sub_1CF1E1070);
    v13 = sub_1CF9E56A8();
    v15 = v14;
    v10 = sub_1CF04E5D8(v13, v14);

    sub_1CEFE4714(v13, v15);
  }

  return v10;
}

uint64_t sub_1CF1DF550(uint64_t a1)
{
  v11[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
    sub_1CF1E0E04();
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF1DF708(uint64_t a1)
{
  v11[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
    sub_1CF1E0FC0();
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF1DF938(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v18[4] = a1;
  if (a1)
  {
    v9 = a2(0);
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  v18[0] = v10;
  v18[3] = v9;

  v11 = sub_1CEFF8EA0(v18);
  v13 = v12;
  sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v13)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    a5();
    v14 = sub_1CF9E56A8();
    v16 = v15;
    v11 = sub_1CF04E5D8(v14, v15);

    sub_1CEFE4714(v14, v16);
  }

  return v11;
}

uint64_t sub_1CF1DFAEC(char a1)
{
  v10 = a1;
  if (a1 == 2)
  {
    v1 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    LOBYTE(v9[0]) = a1 & 1;
    v1 = MEMORY[0x1E69E6370];
  }

  v9[3] = v1;
  v2 = sub_1CEFF8EA0(v9);
  v4 = v3;
  sub_1CEFCCC44(v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v4)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    sub_1CF1D6C9C();
    v5 = sub_1CF9E56A8();
    v7 = v6;
    v2 = sub_1CF04E5D8(v5, v6);

    sub_1CEFE4714(v5, v7);
  }

  return v2;
}

uint64_t sub_1CF1DFC8C(uint64_t a1)
{
  v11[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE530, &qword_1CF9FDDD0);
    sub_1CF04EE34(&qword_1EC4BE538, &qword_1EC4BE530, &qword_1CF9FDDD0, sub_1CF1E12F4);
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF1DFE74(uint64_t a1)
{
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF1E10C4();
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1CF1DFFC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1CF1E0144(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF1E0EC0(&qword_1EDEAB688, sub_1CF190888, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1CF1E02D0(uint64_t a1)
{
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF1E0BB0();
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1CF1E0448(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ([v4 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v8 = [v4 dataAtIndex_];
  v9 = sub_1CF9E5B88();
  v11 = v10;

  a4();
  sub_1CF9E5668();
  sub_1CEFE4714(v9, v11);

  if (!v5)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1CF1E05D8(uint64_t a1)
{
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF1E149C();
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

id sub_1CF1E0758(uint64_t a1)
{
  result = [v1 longAtIndex_];
  if (result > 5)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF1E07C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1CF07FC44(*a1);
  v5 = v4;
  v6 = sub_1CF07FC44(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1CF9E8048();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_1CF1E084C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF07FC44(v1);
  v3 = v2;
  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF1E08B0(uint64_t a1)
{
  sub_1CF07FC44(*v1);
  v3 = v2;
  sub_1CF9E69C8();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF1E0904(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  sub_1CF07FC44(v2);
  v4 = v3;
  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

unint64_t sub_1CF1E0964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF1E1A08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF1E0994@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CF07FC44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1CF1E0A28(uint64_t a1)
{
  *(a1 + 8) = sub_1CF1E0A58();
  result = sub_1CF1E0AAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF1E0A58()
{
  result = qword_1EDEAE338;
  if (!qword_1EDEAE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE338);
  }

  return result;
}

unint64_t sub_1CF1E0AAC()
{
  result = qword_1EDEAE348[0];
  if (!qword_1EDEAE348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAE348);
  }

  return result;
}

unint64_t sub_1CF1E0B04()
{
  result = qword_1EDEAE340;
  if (!qword_1EDEAE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE340);
  }

  return result;
}

uint64_t sub_1CF1E0B58(uint64_t a1)
{
  result = sub_1CF1E182C(&qword_1EC4BE478, type metadata accessor for ItemMetadata, &unk_1CF9FDCC0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1E0BB0()
{
  result = qword_1EC4BE4C0;
  if (!qword_1EC4BE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4C0);
  }

  return result;
}

unint64_t sub_1CF1E0C04()
{
  result = qword_1EC4BE4C8;
  if (!qword_1EC4BE4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF1E182C(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4C8);
  }

  return result;
}

unint64_t sub_1CF1E0CB8()
{
  result = qword_1EC4BE4D8;
  if (!qword_1EC4BE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4D8);
  }

  return result;
}

unint64_t sub_1CF1E0D0C()
{
  result = qword_1EC4BE4E0;
  if (!qword_1EC4BE4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE490, &unk_1CF9FF020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4E0);
  }

  return result;
}

unint64_t sub_1CF1E0D88()
{
  result = qword_1EC4BE4E8;
  if (!qword_1EC4BE4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE480, &qword_1CF9FEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4E8);
  }

  return result;
}

unint64_t sub_1CF1E0E04()
{
  result = qword_1EDEA3838;
  if (!qword_1EDEA3838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
    sub_1CF1E0EC0(&qword_1EDEA3840, sub_1CF190A74, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3838);
  }

  return result;
}

uint64_t sub_1CF1E0EC0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF1E0F44()
{
  result = qword_1EC4BE4F8;
  if (!qword_1EC4BE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE4F8);
  }

  return result;
}

unint64_t sub_1CF1E0FC0()
{
  result = qword_1EDEA6210;
  if (!qword_1EDEA6210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
    sub_1CEFCCCEC(qword_1EDEA6220, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6210);
  }

  return result;
}

unint64_t sub_1CF1E1070()
{
  result = qword_1EDEAE9A8[0];
  if (!qword_1EDEAE9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAE9A8);
  }

  return result;
}

unint64_t sub_1CF1E10C4()
{
  result = qword_1EDEAE998;
  if (!qword_1EDEAE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE998);
  }

  return result;
}

unint64_t sub_1CF1E1118()
{
  result = qword_1EDEAB680;
  if (!qword_1EDEAB680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
    sub_1CEFCCCEC(qword_1EDEAEC28, &unk_1EC4BF250, &unk_1CFA01B50, &protocol conformance descriptor for FileItemVersion<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB680);
  }

  return result;
}

unint64_t sub_1CF1E11C8()
{
  result = qword_1EDEAB660;
  if (!qword_1EDEAB660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB660);
  }

  return result;
}

unint64_t sub_1CF1E1244()
{
  result = qword_1EC4C4F30;
  if (!qword_1EC4C4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CEFCCCEC(&qword_1EC4BE528, &unk_1EC4BFC10, &qword_1CF9FE510, &unk_1CF9FEAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4F30);
  }

  return result;
}

unint64_t sub_1CF1E12F4()
{
  result = qword_1EC4BE540;
  if (!qword_1EC4BE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CEFCCCEC(&qword_1EC4BE548, &unk_1EC4BFC10, &qword_1CF9FE510, &unk_1CF9FEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE540);
  }

  return result;
}

unint64_t sub_1CF1E13A4()
{
  result = qword_1EC4BE550;
  if (!qword_1EC4BE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE550);
  }

  return result;
}

unint64_t sub_1CF1E1420()
{
  result = qword_1EC4C10E0;
  if (!qword_1EC4C10E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C10E0);
  }

  return result;
}

unint64_t sub_1CF1E149C()
{
  result = qword_1EDEA5AA8;
  if (!qword_1EDEA5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AA8);
  }

  return result;
}

unint64_t sub_1CF1E14F0()
{
  result = qword_1EDEA3780;
  if (!qword_1EDEA3780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3780);
  }

  return result;
}

unint64_t sub_1CF1E156C()
{
  result = qword_1EDEA42C0;
  if (!qword_1EDEA42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA42C0);
  }

  return result;
}

unint64_t sub_1CF1E15C0()
{
  result = qword_1EDEA3800;
  if (!qword_1EDEA3800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
    sub_1CEFCCCEC(qword_1EDEAB140, &unk_1EC4BF250, &unk_1CFA01B50, &protocol conformance descriptor for FileItemVersion<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3800);
  }

  return result;
}

unint64_t sub_1CF1E1670()
{
  result = qword_1EDEA5AB0;
  if (!qword_1EDEA5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AB0);
  }

  return result;
}

unint64_t sub_1CF1E16C4()
{
  result = qword_1EC4BE588;
  if (!qword_1EC4BE588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE580, &qword_1CF9FDDE8);
    sub_1CF1E182C(&qword_1EC4BE590, type metadata accessor for VFSDirectoryLister, &unk_1CFA18EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE588);
  }

  return result;
}

unint64_t sub_1CF1E1778()
{
  result = qword_1EC4BE5A0;
  if (!qword_1EC4BE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE598, &qword_1CF9FDDF0);
    sub_1CF1E182C(&qword_1EC4BE5A8, type metadata accessor for VFSStagedContext, &unk_1CFA18EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE5A0);
  }

  return result;
}

uint64_t sub_1CF1E182C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s9SQLFieldsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9SQLFieldsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF1E1A08(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E8098();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v3;
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1E1A5C(uint64_t a1, int a2, unsigned int a3, char a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7)
{
  v9 = v8;
  v10 = v7;
  v300 = a6;
  v301 = a5;
  v293 = a3;
  v284 = a2;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v285 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v273 = &v268 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v276 = &v268 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v286 = *(v17 - 8);
  v287 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v277 = &v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v274 = &v268 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v281 = &v268 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v279 = &v268 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v278 = &v268 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v290 = &v268 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v275 = &v268 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v280 = &v268 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v283 = &v268 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v291 = &v268 - v36;
  v37 = *a1;
  v38 = *(a1 + 8);
  v40 = *(a1 + 16);
  v39 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = *(a1 + 136);
  v43 = *(a1 + 137);
  v45 = *(a1 + 248);
  v44 = *(a1 + 256);
  v46 = *(a1 + 264);
  v47 = *(a1 + 344);
  v48 = *(a1 + 345);
  v326 = MEMORY[0x1E69E7CC8];
  v302 = v38;
  v296 = v37;
  v297 = v46;
  v282 = v41;
  v298 = v44;
  v299 = v48;
  v295 = v39;
  if ((a4 & 1) == 0)
  {
    v294 = a7;
    goto LABEL_25;
  }

  *v310 = v37;
  v310[8] = v38;
  *&v310[9] = *(a1 + 9);
  *&v310[12] = *(a1 + 12);
  *&v310[16] = v40;
  *&v310[24] = v39;
  v310[32] = v41;
  *&v310[81] = *(a1 + 81);
  *&v310[97] = *(a1 + 97);
  *&v310[113] = *(a1 + 113);
  *&v310[128] = *(a1 + 128);
  *&v310[33] = *(a1 + 33);
  *&v310[49] = *(a1 + 49);
  *&v310[65] = *(a1 + 65);
  v310[136] = v42;
  v310[137] = v43;
  *&v310[170] = *(a1 + 170);
  *&v310[154] = *(a1 + 154);
  *&v310[138] = *(a1 + 138);
  *&v310[232] = *(a1 + 232);
  *&v310[218] = *(a1 + 218);
  *&v310[202] = *(a1 + 202);
  *&v310[186] = *(a1 + 186);
  *&v310[248] = v45;
  *&v310[256] = v44;
  *&v310[264] = v46;
  v49 = *(a1 + 272);
  v50 = *(a1 + 288);
  v51 = *(a1 + 304);
  v52 = *(a1 + 320);
  *&v310[336] = *(a1 + 336);
  *&v310[320] = v52;
  *&v310[304] = v51;
  *&v310[272] = v49;
  *&v310[288] = v50;
  v310[344] = v47;
  v310[345] = v48;
  v53 = *(a1 + 362);
  *&v310[346] = *(a1 + 346);
  *&v310[362] = v53;
  v54 = *(a1 + 378);
  v55 = *(a1 + 394);
  v56 = *(a1 + 426);
  *&v310[410] = *(a1 + 410);
  *&v310[426] = v56;
  *&v310[378] = v54;
  *&v310[394] = v55;
  v57 = *(a1 + 442);
  v58 = *(a1 + 458);
  *&v310[504] = *(a1 + 504);
  v59 = *(a1 + 490);
  *&v310[474] = *(a1 + 474);
  *&v310[490] = v59;
  *&v310[442] = v57;
  *&v310[458] = v58;
  v271 = v40;
  v272 = v43;
  v60 = v47;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v62 = v310;
  sub_1CF95740C(v10, 0, 0, 3, v301, v61, v300, a7, &v327);
  if (v9)
  {
    return v62;
  }

  v269 = v42;
  v288 = v60;
  v294 = a7;
  v40 = v271;
  v43 = v272;
  if (v327)
  {
    *v310 = v327;
    v63 = v327;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v336 = 0;
      v64 = *&v309[0];
      sub_1CF1E473C(*&v309[0]);
      v65 = *MEMORY[0x1E6966E90];
      v66 = MEMORY[0x1E69E6530];
      *&v310[24] = MEMORY[0x1E69E6530];
      *v310 = *(&v327 + 1);
      sub_1CEFE9EB8(v310, v309);
      v67 = v326;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v311[0] = v67;
      sub_1CF1D197C(v309, v65, isUniquelyReferenced_nonNull_native);
      v69 = *&v311[0];
      v326 = *&v311[0];
      v70 = *MEMORY[0x1E6966E80];
      if (v330)
      {
        v71 = v70;
        sub_1CF1CE5F4(v71, v310);

        sub_1CEFCCC44(v310, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      }

      else
      {
        *&v310[24] = &type metadata for NSecTimestamp;
        *v310 = v329;
        sub_1CEFE9EB8(v310, v309);
        v80 = v70;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *&v311[0] = v69;
        sub_1CF1D197C(v309, v80, v81);

        v326 = *&v311[0];
      }

      if (v328 == 89)
      {

        sub_1CEFF8D94(&v327);
LABEL_23:
        v9 = v336;
        goto LABEL_24;
      }

      v82 = *MEMORY[0x1E6966F28];
      v83 = qword_1CF9FDEA0[v328];
      *&v310[24] = v66;
      *v310 = v83;
      sub_1CEFE9EB8(v310, v309);
      v84 = v326;
LABEL_22:
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v311[0] = v84;
      sub_1CF1D197C(v309, v82, v91);

      sub_1CEFF8D94(&v327);
      v326 = *&v311[0];
      goto LABEL_23;
    }
  }

  if (v331)
  {
    *v310 = v331;
    v72 = v331;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v336 = 0;
      v64 = *&v309[0];
      sub_1CF1E473C(*&v309[0]);
      v73 = *MEMORY[0x1E6966E90];
      v74 = MEMORY[0x1E69E6530];
      *&v310[24] = MEMORY[0x1E69E6530];
      *v310 = v332;
      sub_1CEFE9EB8(v310, v309);
      v75 = v326;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v311[0] = v75;
      sub_1CF1D197C(v309, v73, v76);
      v77 = *&v311[0];
      v326 = *&v311[0];
      v78 = *MEMORY[0x1E6966E80];
      if (v335)
      {
        v79 = v78;
        sub_1CF1CE5F4(v79, v310);

        sub_1CEFCCC44(v310, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      }

      else
      {
        *&v310[24] = &type metadata for NSecTimestamp;
        *v310 = v334;
        sub_1CEFE9EB8(v310, v309);
        v85 = v78;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        *&v311[0] = v77;
        sub_1CF1D197C(v309, v85, v86);

        v326 = *&v311[0];
      }

      if (v333 == 89)
      {
        v84 = v326;
      }

      else
      {
        v87 = *MEMORY[0x1E6966F28];
        v88 = qword_1CF9FDEA0[v333];
        *&v310[24] = v74;
        *v310 = v88;
        sub_1CEFE9EB8(v310, v309);
        v89 = v326;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        *&v311[0] = v89;
        sub_1CF1D197C(v309, v87, v90);
        v84 = *&v311[0];
      }

      v82 = *MEMORY[0x1E6966F20];
      *&v310[24] = MEMORY[0x1E69E6370];
      v310[0] = 1;
      sub_1CEFE9EB8(v310, v309);
      goto LABEL_22;
    }
  }

  sub_1CEFF8D94(&v327);
LABEL_24:
  v38 = v302;
  v47 = v288;
  v42 = v269;
LABEL_25:
  v336 = v9;
  v92 = MEMORY[0x1E69E6530];
  if (v38 == 255)
  {
    v62 = v326;
    v102 = v10;
    v108 = v299;
    v103 = v300;
    if (!v45)
    {
      return v62;
    }
  }

  else
  {
    v288 = v47;
    v93 = *MEMORY[0x1E6966EC0];
    *&v310[24] = MEMORY[0x1E69E6530];
    *v310 = v42;
    sub_1CEFE9EB8(v310, v309);
    v94 = v326;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = v94;
    sub_1CF1D197C(v309, v93, v95);
    v96 = *&v311[0];
    v326 = *&v311[0];
    v97 = *MEMORY[0x1E6966EC8];
    *&v310[24] = v92;
    *v310 = v40;
    sub_1CEFE9EB8(v310, v309);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = v96;
    sub_1CF1D197C(v309, v97, v98);
    v99 = *&v311[0];
    if (v43 != 6)
    {
      v100 = *MEMORY[0x1E6966ED0];
      *&v310[24] = v92;
      *v310 = v43;
      sub_1CEFE9EB8(v310, v309);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v311[0] = v99;
      sub_1CF1D197C(v309, v100, v101);
      v99 = *&v311[0];
    }

    v102 = v10;
    v103 = v300;
    v104 = v301;
    v105 = *MEMORY[0x1E6966ED8];
    *v310 = v295;
    v106 = sub_1CF1E4680(v310);
    *&v310[24] = v92;
    *v310 = v106;
    sub_1CEFE9EB8(v310, v309);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = v99;
    sub_1CF1D197C(v309, v105, v107);
    v62 = *&v311[0];
    v326 = *&v311[0];
    v108 = v299;
    if (!v45)
    {
      v300 = *&v311[0];
      v292 = 0;
      LODWORD(v295) = 1;
      v45 = v296;
      v122 = v302;
      v125 = v302;
      goto LABEL_41;
    }

    v47 = v288;
  }

  v109 = *MEMORY[0x1E6966E98];
  *&v310[24] = v92;
  *v310 = v47;
  sub_1CEFE9EB8(v310, v309);
  v110 = v45;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *&v311[0] = v62;
  sub_1CF1D197C(v309, v109, v111);
  v112 = *&v311[0];
  v326 = *&v311[0];
  v113 = *MEMORY[0x1E6966EA0];
  *&v310[24] = v92;
  *v310 = v298;
  sub_1CEFE9EB8(v310, v309);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  *&v311[0] = v112;
  sub_1CF1D197C(v309, v113, v114);
  v115 = *&v311[0];
  if (v108 != 6)
  {
    v116 = *MEMORY[0x1E6966EA8];
    *&v310[24] = v92;
    *v310 = v108;
    sub_1CEFE9EB8(v310, v309);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = v115;
    sub_1CF1D197C(v309, v116, v117);
    v115 = *&v311[0];
  }

  v118 = *MEMORY[0x1E6966EB0];
  *v310 = v297;
  v119 = sub_1CF1E4680(v310);
  *&v310[24] = v92;
  *v310 = v119;
  sub_1CEFE9EB8(v310, v309);
  v120 = swift_isUniquelyReferenced_nonNull_native();
  *&v311[0] = v115;
  sub_1CF1D197C(v309, v118, v120);
  v121 = *&v311[0];
  v326 = *&v311[0];
  v122 = v302;
  v292 = v45;
  if (v302 == 255)
  {
    v300 = *&v311[0];
    LODWORD(v295) = 0;
    v125 = 0;
  }

  else
  {
    v123 = *MEMORY[0x1E6966EE8];
    if (v293)
    {
      *&v310[24] = MEMORY[0x1E69E6370];
      v310[0] = 1;
    }

    else
    {
      v126 = v103;
      v127 = [objc_allocWithZone(FPBoolean) initWithBool_];
      *&v310[24] = sub_1CEFD57E0(0, &qword_1EC4BE5B0, off_1E83BC590);
      *v310 = v127;
      v103 = v126;
    }

    sub_1CEFE9EB8(v310, v309);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = v121;
    sub_1CF1D197C(v309, v123, v124);

    LODWORD(v295) = 0;
    v300 = *&v311[0];
    v326 = *&v311[0];
    v45 = v296;
    v122 = v302;
    v125 = v302;
  }

  v104 = v301;
LABEL_41:
  v270 = v102;
  v128 = v122 == 255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v299 = swift_dynamicCastClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1CF9FA450;
  *(v129 + 32) = v45;
  v130 = v129 + 32;
  *(v129 + 40) = v125;
  *(v129 + 41) = v128;
  sub_1CEFD0988(v45, v125, v128);
  v131 = v103;
  v132 = v103;
  v133 = v294;
  v62 = v299;
  v134 = v336;
  v135 = sub_1CF203FD4(v129, 1, v104, v131, v294);
  v336 = v134;
  if (v134)
  {
    sub_1CEFD0994(v45, v125, v302 == 255);

    swift_setDeallocating();
    sub_1CEFCCC44(v130, &unk_1EC4BFC10, &qword_1CF9FE510);
    swift_deallocClassInstance();
    v300, v136, v137, v138, v139, v140, v141, v142;
    return v62;
  }

  v144 = v135;
  v299 = v45;
  v293 = v125;
  v145 = v132;
  swift_setDeallocating();
  sub_1CEFCCC44(v130, &unk_1EC4BFC10, &qword_1CF9FE510);
  swift_deallocClassInstance();
  if (!*v144->tree)
  {
    v175 = v302 == 255;
    v144, v146, v147, v148, v149, v150, v151, v152;

    sub_1CEFD0994(v299, v293, v175);
    return v300;
  }

  v153 = v302;
  v154 = v293;
  v155 = v299;
  v156 = sub_1CEFF4768(v299, v293 | ((v302 == 255) << 8));
  if ((v157 & 1) == 0)
  {
    v144, v157, v158, v159, v160, v161, v162, v163;

    v172 = v155;
    v173 = v154;
    v174 = v153 == 255;
    goto LABEL_52;
  }

  memcpy(v310, (*v144[1].tester + 888 * v156), sizeof(v310));
  sub_1CEFF4514(v310, v309);
  v144, v164, v165, v166, v167, v168, v169, v170;
  v322 = *&v310[832];
  v323 = *&v310[848];
  v324 = *&v310[864];
  v325 = *&v310[880];
  v318 = *&v310[768];
  v319 = *&v310[784];
  v320 = *&v310[800];
  v321 = *&v310[816];
  v314 = *&v310[704];
  v315 = *&v310[720];
  v316 = *&v310[736];
  v317 = *&v310[752];
  v311[0] = *&v310[640];
  v311[1] = *&v310[656];
  v312 = *&v310[672];
  v313 = *&v310[688];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v311) == 1)
  {
    v171 = v302 == 255;

    sub_1CEFF5410(v310);
    v172 = v299;
    v173 = v154;
    v174 = v171;
LABEL_52:
    sub_1CEFD0994(v172, v173, v174);
    return v300;
  }

  v176 = *MEMORY[0x1E6966E68];
  v177 = *&v311[0];
  type metadata accessor for NSFileProviderItemCapabilities(0);
  v306 = v178;
  *&v305 = v177;
  sub_1CEFE9EB8(&v305, v304);
  v307[12] = *&v310[832];
  v307[13] = *&v310[848];
  v307[14] = *&v310[864];
  v308 = *&v310[880];
  v307[8] = *&v310[768];
  v307[9] = *&v310[784];
  v307[10] = *&v310[800];
  v307[11] = *&v310[816];
  v307[4] = *&v310[704];
  v307[5] = *&v310[720];
  v307[6] = *&v310[736];
  v307[7] = *&v310[752];
  v307[0] = *&v310[640];
  v307[1] = *&v310[656];
  v288 = &v310[640];
  v307[2] = *&v310[672];
  v307[3] = *&v310[688];
  sub_1CEFF7474(v307, v309);
  v179 = v300;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  *&v309[0] = v179;
  sub_1CF1D197C(v304, v176, v180);
  v181 = *&v309[0];
  v294 = v133;
  if (v312 == 1)
  {
    v182 = *MEMORY[0x1E6966F00];
    v183 = v270;
    v184 = v283;
    v185 = MEMORY[0x1E69E6530];
    v186 = v297;
    *(&v309[1] + 1) = MEMORY[0x1E69E6530];
    *&v309[0] = BYTE2(v312) != 1;
    sub_1CEFE9EB8(v309, &v305);
    v187 = swift_isUniquelyReferenced_nonNull_native();
    *&v304[0] = v181;
    sub_1CF1D197C(&v305, v182, v187);
    v181 = *&v304[0];
    v188 = v145;
  }

  else
  {
    v183 = v270;
    v188 = v145;
    v184 = v283;
    v185 = MEMORY[0x1E69E6530];
    v186 = v297;
  }

  v189 = v295;
  if (v302 == 255)
  {
    v189 = 1;
  }

  v190 = v301;
  if ((v189 & 1) == 0)
  {
    if (v186 & 0x18 | (v298 & 0x51))
    {
      if ((BYTE8(v311[0]) & 1) == 0)
      {
        v192 = 2;
        if (!BYTE9(v311[0]))
        {
          v192 = 0;
        }

        goto LABEL_83;
      }

      if ((BYTE9(v311[0]) & 1) == 0)
      {
        v192 = 1;
        goto LABEL_83;
      }
    }

    else
    {
      if (v282 == 5)
      {
        v191 = BYTE9(v311[0]);
        if (BYTE8(v311[0]) == 1)
        {
          if (BYTE9(v311[0]))
          {
            goto LABEL_61;
          }

LABEL_66:
          v192 = 1;
          goto LABEL_84;
        }

LABEL_67:
        v193 = v191 == 0;
        v192 = 2;
        if (v193)
        {
          v192 = 0;
        }

        goto LABEL_84;
      }

      if ((BYTE8(v311[0]) & 1) == 0)
      {
        v192 = 2;
        if (!BYTE9(v311[0]))
        {
          v192 = 0;
        }

        if (v282)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (!BYTE9(v311[0]))
      {
        v192 = 1;
        if (v282)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (v282)
      {
        goto LABEL_61;
      }
    }

    v192 = 3;
LABEL_83:
    v192 |= 4uLL;
    goto LABEL_84;
  }

  v191 = BYTE9(v311[0]);
  if (BYTE8(v311[0]) != 1)
  {
    goto LABEL_67;
  }

  if ((BYTE9(v311[0]) & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_61:
  v192 = 3;
LABEL_84:
  v194 = *MEMORY[0x1E6966F30];
  if (!((v310[520] == 2) | v310[520] & 1))
  {
    v192 |= 8uLL;
  }

  *(&v309[1] + 1) = v185;
  *&v309[0] = v192;
  sub_1CEFE9EB8(v309, &v305);
  v195 = swift_isUniquelyReferenced_nonNull_native();
  *&v304[0] = v181;
  sub_1CF1D197C(&v305, v194, v195);
  v196 = *&v304[0];
  v197 = *MEMORY[0x1E6966EE0];
  *(&v309[1] + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v309[0]) = BYTE8(v316);
  sub_1CEFE9EB8(v309, &v305);
  v198 = swift_isUniquelyReferenced_nonNull_native();
  *&v304[0] = v196;
  sub_1CF1D197C(&v305, v197, v198);
  v300 = *&v304[0];
  v326 = *&v304[0];
  v199 = *(v285 + 56);
  v200 = v291;
  v199(v291, 1, 1, v289);
  if (v302 != 255)
  {
    v201 = *(v183 + 32);
    *&v309[0] = v296;
    BYTE8(v309[0]) = v302;
    v202 = v336;
    (*(*v201 + 240))(v309, 1, v190, v188, v294);
    if (v202)
    {

      v200 = v291;
      sub_1CEFCCC44(v291, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v199(v184, 1, 1, v289);
      v336 = 0;
    }

    else
    {
      v336 = 0;
      v200 = v291;
      sub_1CEFCCC44(v291, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    sub_1CEFE55D0(v184, v200, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v203 = *(v286 + 56);
  v203(v290, 1, 1, v287);
  v204 = v293;
  if (v295)
  {
    v205 = v336;
    v206 = v287;
  }

  else
  {
    v207 = *(v183 + 40);
    v208 = v292;
    *&v309[0] = v292;
    v209 = v278;
    v210 = v336;
    (*(*v207 + 240))(v309, 1, v190, v188, v294);
    if (v210)
    {

      v211 = v290;
      sub_1CEFCCC44(v290, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v206 = v287;
      v203(v209, 1, 1, v287);
      v205 = 0;
    }

    else
    {
      v211 = v290;
      sub_1CEFCCC44(v290, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v205 = 0;
      v206 = v287;
    }

    v212 = v279;
    sub_1CEFE55D0(v209, v211, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCBDC(v211, v212, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v286 + 48))(v212, 1, v206) == 1)
    {

      sub_1CEFCCC44(v212, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    }

    else
    {
      v213 = v274;
      sub_1CEFE55D0(v212, v274, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v214 = *MEMORY[0x1E6966EB8];
      v215 = *(v213 + 8);
      type metadata accessor for NSFileProviderItemIdentifier(0);
      *(&v309[1] + 1) = v216;
      *&v309[0] = v215;
      sub_1CEFE9EB8(v309, &v305);
      v217 = v215;
      v218 = v300;
      v219 = swift_isUniquelyReferenced_nonNull_native();
      *&v304[0] = v218;
      sub_1CF1D197C(&v305, v214, v219);

      sub_1CEFCCC44(v213, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v300 = *&v304[0];
    }

    v200 = v291;
    v185 = MEMORY[0x1E69E6530];
    v204 = v293;
  }

  v220 = v289;
  if (v284)
  {
    v336 = v205;
    v221 = v280;
    sub_1CEFCCBDC(v200, v280, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v222 = (*(v285 + 48))(v221, 1, v220);
    v223 = v290;
    if (v222 == 1)
    {
      v224 = v200;
      v225 = v302 == 255;
      sub_1CEFCCC44(v221, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v288, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFF5410(v310);
      sub_1CEFD0994(v299, v204, v225);
      sub_1CEFCCC44(v223, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFCCC44(v224, &qword_1EC4C1B40, &unk_1CF9FCB70);
      return v300;
    }

    v229 = v221;
    v230 = v276;
    sub_1CEFE55D0(v229, v276, &unk_1EC4BE360, &qword_1CF9FE650);
    v231 = v185;
    v232 = *MEMORY[0x1E6966EF0];
    v233 = (v230 + *(v220 + 48));
    v234 = v233[*(type metadata accessor for ItemMetadata(0) + 112)];
    *(&v309[1] + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v309[0]) = v234;
    sub_1CEFE9EB8(v309, &v305);
    v235 = v300;
    v236 = swift_isUniquelyReferenced_nonNull_native();
    *&v304[0] = v235;
    v237 = v232;
    v238 = v231;
    v226 = v290;
    sub_1CF1D197C(&v305, v237, v236);
    v239 = *&v304[0];
    v240 = *v233;
    v241 = *MEMORY[0x1E6967018];
    v242 = *(v230 + 32);
    *(&v309[1] + 1) = MEMORY[0x1E69E76D8];
    *&v309[0] = v242;
    sub_1CEFE9EB8(v309, &v305);
    v243 = swift_isUniquelyReferenced_nonNull_native();
    *&v304[0] = v239;
    v244 = v241;
    v204 = v293;
    sub_1CF1D197C(&v305, v244, v243);
    sub_1CEFCCC44(v230, &unk_1EC4BE360, &qword_1CF9FE650);
    v245 = *&v304[0];
  }

  else
  {
    v226 = v290;
    v227 = v281;
    sub_1CEFCCBDC(v290, v281, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v286 + 48))(v227, 1, v206) == 1)
    {
      v228 = v302 == 255;
      sub_1CEFCCC44(v288, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFF5410(v310);
      sub_1CEFD0994(v299, v204, v228);
      sub_1CEFCCC44(v226, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFCCC44(v291, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v227, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      return v300;
    }

    v336 = v205;
    v246 = v277;
    sub_1CEFE55D0(v227, v277, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v247 = v220;
    v248 = *MEMORY[0x1E6966EF0];
    v249 = (v246 + *(v206 + 48));
    v250 = v249[*(type metadata accessor for ItemMetadata(0) + 112)];
    *(&v309[1] + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v309[0]) = v250;
    sub_1CEFE9EB8(v309, &v305);
    v251 = v300;
    v252 = swift_isUniquelyReferenced_nonNull_native();
    *&v304[0] = v251;
    sub_1CF1D197C(&v305, v248, v252);
    v245 = *&v304[0];
    v240 = *v249;
    v253 = v275;
    sub_1CEFCCBDC(v291, v275, &qword_1EC4C1B40, &unk_1CF9FCB70);
    if ((*(v285 + 48))(v253, 1, v247) == 1)
    {
      sub_1CEFCCC44(v246, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFCCC44(v253, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v254 = v273;
      sub_1CEFE55D0(v253, v273, &unk_1EC4BE360, &qword_1CF9FE650);
      v255 = *MEMORY[0x1E6967018];
      v256 = *(v254 + 32);
      *(&v309[1] + 1) = MEMORY[0x1E69E76D8];
      *&v309[0] = v256;
      sub_1CEFE9EB8(v309, &v305);
      v257 = swift_isUniquelyReferenced_nonNull_native();
      *&v304[0] = v245;
      v258 = v255;
      v204 = v293;
      sub_1CF1D197C(&v305, v258, v257);
      v259 = v254;
      v226 = v290;
      sub_1CEFCCC44(v259, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v246, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v245 = *&v304[0];
    }

    v238 = MEMORY[0x1E69E6530];
  }

  v260 = v302 == 255;
  memcpy(v309, v310, 0x208uLL);
  v261 = sub_1CF08B99C(v309) != 1;
  v262 = *(v270 + 80);
  if ((v262 & 0x20000) != 0)
  {
    v263 = 3;
  }

  else
  {
    v263 = 1;
  }

  if ((v262 & 0x200) != 0)
  {
    v264 = v263;
  }

  else
  {
    v264 = (v262 & 0x20000uLL) >> 16;
  }

  v265 = sub_1CEFF8538(v323, *(&v323 + 1), 0, v264, v240 == 1, v261 & v309[32]);
  v266 = *MEMORY[0x1E6966E70];
  v306 = v238;
  *&v305 = v265;
  sub_1CEFE9EB8(&v305, v304);
  v267 = swift_isUniquelyReferenced_nonNull_native();
  v303 = v245;
  sub_1CF1D197C(v304, v266, v267);
  sub_1CEFCCC44(v288, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  sub_1CEFF5410(v310);
  sub_1CEFD0994(v299, v204, v260);
  sub_1CEFCCC44(v226, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  sub_1CEFCCC44(v291, &qword_1EC4C1B40, &unk_1CF9FCB70);
  return v303;
}

void sub_1CF1E363C(void *a1, unsigned int a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, char a6)
{
  v10 = a1[3];
  v9 = a1[4];
  v11 = a2;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v37 = v11;
  v38 = 0;
  sub_1CF68DDB0(&v37, v12, v10, v9, __src);
  if (!v6)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v36, __src, sizeof(v36));
    if (sub_1CF08B99C(v36) == 1)
    {
      type metadata accessor for NSFileProviderError(0);
      v40 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF01C42C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      a4(v34[0], 1);
    }

    else
    {
      v13 = a1[3];
      v14 = a1[4];
      v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
      memcpy(v34, v36, sizeof(v34));
      v16 = sub_1CF1E1A5C(v34, 1, a6 & 1, 1, v15, v13, v14);
      v17 = v16;
      v18 = sub_1CF1E4980(v16);
      v17, v19, v20, v21, v22, v23, v24, v25;
      a4(v18, 0);
      v18, v26, v27, v28, v29, v30, v31, v32;
      sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290);
    }
  }
}

void sub_1CF1E3844(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v53 = a6;
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v52[-v12];
  v13 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1CF9E5268();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  if (!swift_dynamicCastClass())
  {
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C42C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v24 = sub_1CF9E50D8();
    (*(v15 + 8))(v17, v14);
    v60(v24, 1);

    return;
  }

  v18 = v60;
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);

  v22 = v21;
  v23 = v67;
  sub_1CF487090(v59, v22, v19, v20, v10);
  if (v23)
  {

    return;
  }

  v67 = a1;
  if ((*(v56 + 48))(v10, 1, v57) == 1)
  {
    sub_1CEFCCC44(v10, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_7:
    type metadata accessor for NSFileProviderError(0);
    v63[0] = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C42C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v25 = v66[0];
    v18(v66[0], 1);

    return;
  }

  v26 = v55;
  sub_1CEFE55D0(v10, v55, &unk_1EC4BE360, &qword_1CF9FE650);
  v27 = v67[3];
  v28 = v67[4];
  v29 = __swift_project_boxed_opaque_existential_1(v67, v27);
  v30 = v26[8];
  v64 = *v26;
  v65 = v30;
  sub_1CF68DDB0(&v64, v29, v27, v28, v66);
  memcpy(v62, v66, sizeof(v62));
  memcpy(v63, v66, sizeof(v63));
  if (sub_1CF08B99C(v63) == 1)
  {
    sub_1CEFCCC44(v26, &unk_1EC4BE360, &qword_1CF9FE650);
    goto LABEL_7;
  }

  v32 = v67[3];
  v31 = v67[4];
  v33 = __swift_project_boxed_opaque_existential_1(v67, v32);
  memcpy(v61, v63, sizeof(v61));
  v34 = sub_1CF1E1A5C(v61, 1, v53 & 1, 1, v33, v32, v31);
  v35 = v26;
  v36 = v34;
  v37 = sub_1CF1E4980(v34);
  v36, v38, v39, v40, v41, v42, v43, v44;
  v18(v37, 0);
  v37, v45, v46, v47, v48, v49, v50, v51;
  sub_1CEFCCC44(v62, &unk_1EC4BFC20, &unk_1CFA0A290);

  sub_1CEFCCC44(v35, &unk_1EC4BE360, &qword_1CF9FE650);
}

void sub_1CF1E3E24(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, int a6)
{
  LODWORD(v151) = a6;
  v10 = a1;
  v12 = a1[3];
  v11 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v148 = a3;
  sub_1CF68E230(&v148, v13, v12, v11, __src);
  if (!v6)
  {
    v14 = a2;
    v15 = v151;
    v16 = a4;
    v17 = 0;
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v147, __src, sizeof(v147));
    if (sub_1CF08B99C(v147) == 1)
    {
      v18 = v10[3];
      v19 = v10[4];
      v20 = __swift_project_boxed_opaque_existential_1(v10, v18);
      v21 = *(v14 + 24);
      *v142 = a3;
      v151 = (*(*v21 + 376))(v142, 3, 0, 1, v20, v18, v19);
      v29 = *v151->tree;
      if (v29)
      {
        v134 = v16;
        v30 = 0;
        v138 = v29 - 1;
        v31 = 32;
        v10 = &qword_1CF9FDE98;
        while (1)
        {
          v33 = *&v151[1].tree[v31];
          v32 = *(&v151[2].super.isa + v31);
          v17 = *&v151[2].tree[v31];
          *&v142[32] = *(&v151[1].super.isa + v31);
          *&v142[48] = v33;
          v34 = *&v151->tree[v31];
          *v142 = *(&v151->super.isa + v31);
          *&v142[16] = v34;
          *&v142[80] = v17;
          *&v142[64] = v32;
          v137 = *&v142[48];
          v16 = *&v142[56];
          v35 = *v142;
          v36 = v142[8];
          v15 = v142[9];
          v135 = *&v142[32];
          v136 = v142[10];
          v140 = v34;
          sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);
          sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);
          v139 = v35;
          v37 = v35;
          v38 = v36;
          v39 = v16;
          sub_1CF1E53F8(v37, v38, v15);

          v17, v40, v41, v42, v43, v44, v45, v46;
          if (v140 == 1)
          {
            sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            sub_1CF1E53F8(v139, v38, v15);
            v47 = v16;

            v17, v48, v49, v50, v51, v52, v53, v54;
            if (v16)
            {
              break;
            }
          }

          sub_1CEFCCC44(v142, &qword_1EC4BE5B8, &qword_1CF9FDE98);
          if (v138 == v30)
          {
            v151, v62, v63, v64, v65, v66, v67, v68;
            v90 = v134;
            goto LABEL_16;
          }

          ++v30;
          v31 += 88;
          if (v30 >= *v151->tree)
          {
            __break(1u);
            goto LABEL_10;
          }
        }

        v151, v55, v56, v57, v58, v59, v60, v61;
        v92 = sub_1CF9E57E8();
        v151 = v92;

        v145 = MEMORY[0x1E69E7CC8];
        sub_1CF1E473C(v92);
        v93 = *MEMORY[0x1E6966E90];
        sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);
        sub_1CF1E53F8(v139, v38, v15);

        v17, v94, v95, v96, v97, v98, v99, v100;
        *&v141[24] = MEMORY[0x1E69E6530];
        *v141 = v135;
        sub_1CEFE9EB8(v141, v144);
        v101 = v145;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v101;
        sub_1CF1D197C(v144, v93, isUniquelyReferenced_nonNull_native);
        v103 = v15;
        v104 = v143;
        v105 = v38;
        v106 = *MEMORY[0x1E6966F28];
        sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);

        v17, v107, v108, v109, v110, v111, v112, v113;
        sub_1CF1E53F8(v139, v105, v103);
        v114 = qword_1CF9FDEA0[v136];
        *&v141[24] = MEMORY[0x1E69E6530];
        *v141 = v114;
        sub_1CEFE9EB8(v141, v144);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v104;
        sub_1CF1D197C(v144, v106, v115);
        v116 = v143;
        v117 = *MEMORY[0x1E6966E80];
        sub_1CEFCCBDC(v142, v141, &qword_1EC4BE5B8, &qword_1CF9FDE98);
        sub_1CF1E53F8(v139, v105, v103);

        v17, v118, v119, v120, v121, v122, v123, v124;
        *&v141[24] = &type metadata for NSecTimestamp;
        *v141 = v137;
        sub_1CEFE9EB8(v141, v144);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v116;
        sub_1CF1D197C(v144, v117, v125);

        sub_1CEFCCC44(v142, &qword_1EC4BE5B8, &qword_1CF9FDE98);
        v126 = sub_1CF1E4980(v143);

        v134(v126, 0);
        v126, v127, v128, v129, v130, v131, v132, v133;
      }

      else
      {
        v151, v22, v23, v24, v25, v26, v27, v28;
        v90 = v16;
LABEL_16:
        type metadata accessor for NSFileProviderError(0);
        *v141 = -1005;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF01C42C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
        sub_1CF9E57D8();
        v91 = *v142;
        v90(*v142, 1);
      }
    }

    else
    {
LABEL_10:
      v69 = v16;
      memcpy(v150, v147, sizeof(v150));
      v70 = v10[3];
      v71 = v10[4];
      v72 = __swift_project_boxed_opaque_existential_1(v10, v70);
      sub_1CF7F6024(v142);
      v73 = sub_1CF1E1A5C(v142, 0, v15 & 1, 1, v72, v70, v71);
      if (v17)
      {
        memcpy(v141, v142, sizeof(v141));
        sub_1CEFCCC44(v141, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      else
      {
        v74 = v73;
        memcpy(v141, v142, sizeof(v141));
        sub_1CEFCCC44(v141, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v75 = sub_1CF1E4980(v74);
        v74, v76, v77, v78, v79, v80, v81, v82;
        v69(v75, 0);
        v75, v83, v84, v85, v86, v87, v88, v89;
      }

      sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }
}

void *sub_1CF1E44DC(const void *a1, char a2, char a3, char a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v33, a1, sizeof(v33));
  v16 = v7[8];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    memcpy(v32, v33, sizeof(v32));
    v19 = v34;
    v20 = sub_1CF1E1A5C(v32, a2 & 1, a3 & 1, a4 & 1, v29, v30, v31);
    if (!v19)
    {
      v21 = v20;
      v7 = sub_1CF1E4980(v20);
      v21, v22, v23, v24, v25, v26, v27, v28;
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF1E4680(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x18) != 0)
  {
    if ((v1 & 2) == 0)
    {
      result = 1;
      if ((v1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      result |= 4uLL;
      goto LABEL_15;
    }

    result = 3;
    if (v1)
    {
      goto LABEL_14;
    }

LABEL_15:
    if ((v1 & 0x6160001D0221C0) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v1 & 2) != 0)
  {
    result = 2;
    if (v1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v1)
  {
    result = 0;
    goto LABEL_14;
  }

  if ((v1 & 0x6160001D0221C0) == 0)
  {
    if ((v1 & 0x10930000805E24) != 0)
    {
      result = 16;
    }

    else
    {
      result = 0;
    }

    goto LABEL_19;
  }

  result = 0;
LABEL_16:
  result |= 8uLL;
LABEL_17:
  if ((v1 & 0x10930000805E24) != 0)
  {
    result |= 0x10uLL;
  }

LABEL_19:
  if ((v1 & 0x100000000010000) != 0)
  {
    return result | 0x20;
  }

  return result;
}

void sub_1CF1E473C(void *a1)
{
  v2 = *MEMORY[0x1E6966F10];
  v3 = [a1 domain];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  v39 = MEMORY[0x1E69E6158];
  v37 = v4;
  v38 = v6;
  sub_1CF1C8940(&v37, v2);
  v8 = *MEMORY[0x1E6966F08];
  v9 = [a1 code];
  v10 = MEMORY[0x1E69E6530];
  v39 = MEMORY[0x1E69E6530];
  v37 = v9;
  sub_1CF1C8940(&v37, v8);
  v11 = [a1 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = sub_1CF9E6D48();

  if (*v12->tree)
  {
    isa = v12[1].super.isa;
    v21 = isa;
    v12, v22, v23, v24, v25, v26, v27, v28;
    v37 = isa;
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v29 = *MEMORY[0x1E6966F40];
      v30 = [v36 domain];
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;

      v39 = v7;
      v37 = v31;
      v38 = v33;
      sub_1CF1C8940(&v37, v29);
      v34 = *MEMORY[0x1E6966F38];
      v35 = [v36 code];
      v39 = v10;
      v37 = v35;
      sub_1CF1C8940(&v37, v34);
    }
  }

  else
  {

    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

void *sub_1CF1E4980(uint64_t a1)
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

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v123 = v5;
  v124 = v1;
  while (v4)
  {
    v10 = v6;
LABEL_16:
    v13 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1CEFD1104(*(a1 + 56) + 32 * v14, v127);
    *&v128 = v15;
    sub_1CEFE9EB8(v127, (&v128 + 8));
    v16 = v15;
LABEL_17:
    v131[0] = v128;
    v131[1] = v129;
    v132 = v130;
    v17 = v128;
    if (!v128)
    {

      return v7;
    }

    sub_1CEFE9EB8((v131 + 8), &v128);
    sub_1CEFD1104(&v128, v127);
    sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v18 = v17;
      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      v22 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v127[0] = v7;
      v31 = sub_1CEFE4328(v19, v21);
      v32 = v7[2];
      v33 = (v24 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_92;
      }

      v35 = v24;
      if (v7[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1CF7CF818();
          if (v35)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1CF7C3E7C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_1CEFE4328(v19, v21);
        if ((v35 & 1) != (v24 & 1))
        {
          goto LABEL_104;
        }

        v31 = v36;
        if (v35)
        {
LABEL_4:
          v21, v24, v25, v26, v27, v28, v29, v30;
          v7 = *&v127[0];
          v8 = *(*&v127[0] + 56);
          v9 = *(v8 + 8 * v31);
          *(v8 + 8 * v31) = v22;

          __swift_destroy_boxed_opaque_existential_1(&v128);
          goto LABEL_5;
        }
      }

      v7 = *&v127[0];
      *(*&v127[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v73 = (v7[6] + 16 * v31);
      *v73 = v19;
      v73[1] = v21;
      *(v7[7] + 8 * v31) = v22;

      __swift_destroy_boxed_opaque_existential_1(&v128);
      v74 = v7[2];
      v53 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v53)
      {
        goto LABEL_94;
      }

      v7[2] = v75;
LABEL_5:
      v5 = v123;
      v1 = v124;
    }

    else
    {
      sub_1CEFD1104(&v128, v127);
      sub_1CEFD57E0(0, &qword_1EC4BE5B0, off_1E83BC590);
      if (swift_dynamicCast())
      {
        v37 = v17;
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v40 = v39;
        v41 = v126;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *&v127[0] = v7;
        v43 = sub_1CEFE4328(v38, v40);
        v51 = v7[2];
        v52 = (v44 & 1) == 0;
        v53 = __OFADD__(v51, v52);
        v54 = v51 + v52;
        if (v53)
        {
          goto LABEL_93;
        }

        v55 = v44;
        if (v7[3] < v54)
        {
          sub_1CF7C3E7C(v54, v42);
          v43 = sub_1CEFE4328(v38, v40);
          if ((v55 & 1) != (v44 & 1))
          {
            goto LABEL_104;
          }

LABEL_45:
          if (v55)
          {
            goto LABEL_46;
          }

          goto LABEL_77;
        }

        if (v42)
        {
          goto LABEL_45;
        }

        v108 = v43;
        sub_1CF7CF818();
        v43 = v108;
        if (v55)
        {
LABEL_46:
          v83 = v43;
          v40, v44, v45, v46, v47, v48, v49, v50;
          v7 = *&v127[0];
          v84 = *(*&v127[0] + 56);
          v85 = *(v84 + 8 * v83);
          *(v84 + 8 * v83) = v41;

          __swift_destroy_boxed_opaque_existential_1(&v128);
          goto LABEL_79;
        }

LABEL_77:
        v7 = *&v127[0];
        *(*&v127[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v109 = (v7[6] + 16 * v43);
        *v109 = v38;
        v109[1] = v40;
        *(v7[7] + 8 * v43) = v41;

        __swift_destroy_boxed_opaque_existential_1(&v128);
        v110 = v7[2];
        v53 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v53)
        {
          goto LABEL_96;
        }

        v7[2] = v111;
LABEL_79:
        v1 = v124;
      }

      else
      {
        sub_1CEFD1104(&v128, v127);
        v122 = v17;
        if (swift_dynamicCast())
        {
          v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v58 = v57;
          v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *&v127[0] = v7;
          v61 = sub_1CEFE4328(v56, v58);
          v69 = v7[2];
          v70 = (v62 & 1) == 0;
          v53 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v53)
          {
            goto LABEL_95;
          }

          v72 = v62;
          if (v7[3] < v71)
          {
            sub_1CF7C3E7C(v71, v60);
            v61 = sub_1CEFE4328(v56, v58);
            if ((v72 & 1) != (v62 & 1))
            {
              goto LABEL_104;
            }

LABEL_53:
            if ((v72 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_73;
          }

          if (v60)
          {
            goto LABEL_53;
          }

          v112 = v61;
          sub_1CF7CF818();
          v61 = v112;
          if (v72)
          {
            goto LABEL_73;
          }

LABEL_54:
          v7 = *&v127[0];
          *(*&v127[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v93 = (v7[6] + 16 * v61);
          *v93 = v56;
          v93[1] = v58;
          *(v7[7] + 8 * v61) = v59;

          __swift_destroy_boxed_opaque_existential_1(&v128);
          v94 = v7[2];
          v53 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v53)
          {
            goto LABEL_98;
          }

LABEL_86:
          v7[2] = v95;
        }

        else
        {
          sub_1CEFD1104(&v128, v127);
          if (swift_dynamicCast())
          {
            v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v58 = v77;
            v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            v78 = swift_isUniquelyReferenced_nonNull_native();
            *&v127[0] = v7;
            v61 = sub_1CEFE4328(v76, v58);
            v79 = v7[2];
            v80 = (v62 & 1) == 0;
            v53 = __OFADD__(v79, v80);
            v81 = v79 + v80;
            if (v53)
            {
              goto LABEL_97;
            }

            v82 = v62;
            if (v7[3] < v81)
            {
              sub_1CF7C3E7C(v81, v78);
              v61 = sub_1CEFE4328(v76, v58);
              if ((v82 & 1) != (v62 & 1))
              {
                goto LABEL_104;
              }

LABEL_63:
              if ((v82 & 1) == 0)
              {
                goto LABEL_64;
              }

              goto LABEL_73;
            }

            if (v78)
            {
              goto LABEL_63;
            }

            v113 = v61;
            sub_1CF7CF818();
            v61 = v113;
            if ((v82 & 1) == 0)
            {
LABEL_64:
              v7 = *&v127[0];
              *(*&v127[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
              v103 = (v7[6] + 16 * v61);
              *v103 = v76;
              v103[1] = v58;
              *(v7[7] + 8 * v61) = v59;

              __swift_destroy_boxed_opaque_existential_1(&v128);
              v104 = v7[2];
              v53 = __OFADD__(v104, 1);
              v95 = v104 + 1;
              if (v53)
              {
                goto LABEL_100;
              }

              goto LABEL_86;
            }

LABEL_73:
            v105 = v61;
            v58, v62, v63, v64, v65, v66, v67, v68;
            v7 = *&v127[0];
            v106 = *(*&v127[0] + 56);
            v107 = *(v106 + 8 * v105);
            *(v106 + 8 * v105) = v59;

            __swift_destroy_boxed_opaque_existential_1(&v128);
          }

          else
          {
            sub_1CEFD1104(&v128, v127);
            if (swift_dynamicCast())
            {
              v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v58 = v87;
              v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
              v88 = swift_isUniquelyReferenced_nonNull_native();
              *&v127[0] = v7;
              v61 = sub_1CEFE4328(v86, v58);
              v89 = v7[2];
              v90 = (v62 & 1) == 0;
              v53 = __OFADD__(v89, v90);
              v91 = v89 + v90;
              if (v53)
              {
                goto LABEL_99;
              }

              v92 = v62;
              if (v7[3] < v91)
              {
                sub_1CF7C3E7C(v91, v88);
                v61 = sub_1CEFE4328(v86, v58);
                if ((v92 & 1) != (v62 & 1))
                {
                  goto LABEL_104;
                }

LABEL_69:
                if ((v92 & 1) == 0)
                {
                  goto LABEL_85;
                }

                goto LABEL_73;
              }

              if (v88)
              {
                goto LABEL_69;
              }

              v114 = v61;
              sub_1CF7CF818();
              v61 = v114;
              if ((v92 & 1) == 0)
              {
LABEL_85:
                v7 = *&v127[0];
                *(*&v127[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
                v115 = (v7[6] + 16 * v61);
                *v115 = v86;
                v115[1] = v58;
                *(v7[7] + 8 * v61) = v59;

                __swift_destroy_boxed_opaque_existential_1(&v128);
                v116 = v7[2];
                v53 = __OFADD__(v116, 1);
                v95 = v116 + 1;
                if (v53)
                {
                  goto LABEL_102;
                }

                goto LABEL_86;
              }

              goto LABEL_73;
            }

            sub_1CEFD1104(&v128, v127);
            if (swift_dynamicCast())
            {
              v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v58 = v97;
              v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              v98 = swift_isUniquelyReferenced_nonNull_native();
              *&v127[0] = v7;
              v61 = sub_1CEFE4328(v96, v58);
              v99 = v7[2];
              v100 = (v62 & 1) == 0;
              v53 = __OFADD__(v99, v100);
              v101 = v99 + v100;
              if (v53)
              {
                goto LABEL_101;
              }

              v102 = v62;
              if (v7[3] < v101)
              {
                sub_1CF7C3E7C(v101, v98);
                v61 = sub_1CEFE4328(v96, v58);
                if ((v102 & 1) != (v62 & 1))
                {
                  goto LABEL_104;
                }

LABEL_72:
                if (v102)
                {
                  goto LABEL_73;
                }

                goto LABEL_88;
              }

              if (v98)
              {
                goto LABEL_72;
              }

              v117 = v61;
              sub_1CF7CF818();
              v61 = v117;
              if (v102)
              {
                goto LABEL_73;
              }

LABEL_88:
              v7 = *&v127[0];
              *(*&v127[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
              v118 = (v7[6] + 16 * v61);
              *v118 = v96;
              v118[1] = v58;
              *(v7[7] + 8 * v61) = v59;

              __swift_destroy_boxed_opaque_existential_1(&v128);
              v119 = v7[2];
              v53 = __OFADD__(v119, 1);
              v120 = v119 + 1;
              if (v53)
              {
                goto LABEL_103;
              }

              v7[2] = v120;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(&v128);
            }
          }
        }
      }
    }
  }

  if (v5 <= v6 + 1)
  {
    v11 = v6 + 1;
  }

  else
  {
    v11 = v5;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      v4 = 0;
      v130 = 0;
      v6 = v12;
      v128 = 0u;
      v129 = 0u;
      goto LABEL_17;
    }

    v4 = *(v1 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF1E53F8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

void VFSItemHandle.init(fileID:parentID:docID:genCount:name:)(uint64_t a1@<X0>, const char *a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v10 = *a5;
  v11 = a5[1];
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  0, a2, a3, a4, a5, a7, a8, a9;
  *(a6 + 24) = v10;
  *(a6 + 32) = v11;
}

double VFSItemHandle.name.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

void VFSItemHandle.name.setter(uint64_t *a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  v10 = a1[1];
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
}

BOOL VFSItemHandle.allowPathLookup.getter()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 32) == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t sub_1CF1E5580()
{
  v1 = *v0;
  v2 = 0x4449656C6966;
  v3 = 0x4449636F64;
  v4 = 0x746E756F436E6567;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449746E65726170;
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

uint64_t sub_1CF1E560C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1E6370(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1E5634(uint64_t a1)
{
  v2 = sub_1CF1E6094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1E5670(uint64_t a1)
{
  v2 = sub_1CF1E6094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VFSItemHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5C0, &qword_1CF9FE170);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v22 = *(v1 + 8);
  LODWORD(v6) = *(v1 + 20);
  v25 = *(v1 + 16);
  v21 = v6;
  v8 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1E6094();
  sub_1CF9E82A8();
  LOBYTE(v23) = 0;
  sub_1CF9E7F68();
  if (!v2)
  {
    v9 = v19;
    v10 = v20;
    LOBYTE(v23) = 1;
    sub_1CF9E7F68();
    LOBYTE(v23) = 2;
    sub_1CF9E7F58();
    LOBYTE(v23) = 3;
    sub_1CF9E7F58();
    v23 = v10;
    v24 = v9;
    v26 = 4;
    sub_1CF1E60E8();

    sub_1CF9E7E68();
    v24, v11, v12, v13, v14, v15, v16, v17;
  }

  return (*(v5 + 8))(v7, v4);
}

void VFSItemHandle.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5C8, &qword_1CF9FE178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1E6094();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = 0;
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1CF9E7DE8();
    LOBYTE(v31) = 1;
    v10 = sub_1CF9E7DE8();
    LOBYTE(v31) = 2;
    v33 = sub_1CF9E7DD8();
    LOBYTE(v31) = 3;
    v30 = sub_1CF9E7DD8();
    v34 = 4;
    sub_1CF1E613C();
    sub_1CF9E7CF8();
    (*(v6 + 8))(v8, v5);
    v12 = v31;
    v11 = v32;
    0, v13, v14, v15, v16, v17, v18, v19;
    *a2 = v9;
    *(a2 + 8) = v10;
    v20 = v30;
    *(a2 + 16) = v33;
    *(a2 + 20) = v20;
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v11;
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
}

uint64_t sub_1CF1E5BA4@<X0>(uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF1E6518;
  *(v7 + 24) = v6;
  v12[4] = sub_1CEFDB248;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1CEFDB270;
  v12[3] = &block_descriptor_7;
  v8 = _Block_copy(v12);

  sub_1CF9E6978();
  v9 = fpfs_gethandle_at();

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_1CF1E5D2C(uint64_t *a1, char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (a1[3])
  {
    sub_1CF9E6A58();
    v13 = v12;
    sub_1CEFE4E68();
    v14 = sub_1CF9E7668();
    v16 = v15;
    v13, v15, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  0, a2, a3, a4, a5, a6, a7, a8;
  v23 = *a2;
  v24 = *(a2 + 1);
  v25 = *(a2 + 2);
  v26 = *(a2 + 3);
  v27 = *(a2 + 4);
  *a2 = v9;
  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  *(a2 + 3) = v14;
  *(a2 + 4) = v16;
  sub_1CF1E6520(v23, v24, v25, v26, v27, v28, v29, v30);
  return 0;
}

BOOL _s18FileProviderDaemon13VFSItemHandleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    if (v10)
    {
      if (v11)
      {
        v12 = *(a1 + 24);
        v13 = *(a2 + 24);

        v14 = sub_1CEFE7394(v12, v10);
        if (v15)
        {
          if (v14 == 12565487 && v15 == 0xA300000000000000)
          {
            0xA300000000000000, 0xA300000000000000, v16, v17, v18, v19, v20, v21;
LABEL_14:
            v32 = sub_1CF9E69E8();
            v33 = sub_1CF025150(v32, v12, v10);
            v35 = v34;
            v12 = MEMORY[0x1D3868C10](v33);
            v37 = v36;
            v35, v36, v38, v39, v40, v41, v42, v43;
            goto LABEL_16;
          }

          v23 = v15;
          v24 = sub_1CF9E8048();
          v23, v25, v26, v27, v28, v29, v30, v31;
          if (v24)
          {
            goto LABEL_14;
          }
        }

        v37 = v10;
LABEL_16:
        v44 = sub_1CEFE7394(v13, v11);
        if (v45)
        {
          if (v44 == 12565487 && v45 == 0xA300000000000000)
          {
            0xA300000000000000, 0xA300000000000000, v46, v47, v48, v49, v50, v51;
            goto LABEL_21;
          }

          v52 = v45;
          v53 = sub_1CF9E8048();
          v52, v54, v55, v56, v57, v58, v59, v60;
          if (v53)
          {
LABEL_21:
            v61 = sub_1CF9E69E8();
            v62 = sub_1CF025150(v61, v13, v11);
            v64 = v63;
            v65 = MEMORY[0x1D3868C10](v62);
            v67 = v66;
            v64, v66, v68, v69, v70, v71, v72, v73;
            if (v12 != v65)
            {
LABEL_27:
              v95 = sub_1CF9E8048();
              v10, v96, v97, v98, v99, v100, v101, v102;
              v67, v103, v104, v105, v106, v107, v108, v109;
              v37, v110, v111, v112, v113, v114, v115, v116;
              v11, v117, v118, v119, v120, v121, v122, v123;
              return (v95 & 1) != 0;
            }

            goto LABEL_24;
          }
        }

        v67 = v11;
        if (v12 != v13)
        {
          goto LABEL_27;
        }

LABEL_24:
        if (v37 != v67)
        {
          goto LABEL_27;
        }

        v10, v74, v75, v76, v77, v78, v79, v80;
        v67, v81, v82, v83, v84, v85, v86, v87;
        v37, v88, v89, v90, v91, v92, v93, v94;
        v22 = v11;
LABEL_26:
        v22, a2, a3, a4, a5, a6, a7, a8;
        return 1;
      }
    }

    else if (!v11)
    {
      v22 = 0;
      goto LABEL_26;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1CF1E6094()
{
  result = qword_1EDEA7D60;
  if (!qword_1EDEA7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D60);
  }

  return result;
}

unint64_t sub_1CF1E60E8()
{
  result = qword_1EDEA4360;
  if (!qword_1EDEA4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4360);
  }

  return result;
}

unint64_t sub_1CF1E613C()
{
  result = qword_1EDEA4358;
  if (!qword_1EDEA4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4358);
  }

  return result;
}

uint64_t sub_1CF1E6190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1CF1E61EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1CF1E626C()
{
  result = qword_1EC4BE5D0;
  if (!qword_1EC4BE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE5D0);
  }

  return result;
}

unint64_t sub_1CF1E62C4()
{
  result = qword_1EDEA7D50;
  if (!qword_1EDEA7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D50);
  }

  return result;
}

unint64_t sub_1CF1E631C()
{
  result = qword_1EDEA7D58;
  if (!qword_1EDEA7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D58);
  }

  return result;
}

uint64_t sub_1CF1E6370(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x4449656C6966 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x4449636F64 && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x746E756F436E6567 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1CF1E6520(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, void *a6, uint64_t a7, void *a8)
{
  if (a5 != 1)
  {
    a5, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CF1E6534(unsigned __int8 a1, id a2)
{
  v3 = *v2;
  v4 = a1 >> 5;
  if (v4 == 4)
  {
    if (a1 == 129)
    {
      v6 = *(v2 + *(v3 + 584));
      if (v6)
      {
        v7 = a2;
        v8 = [v6 version];
        a2 = v7;
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v5 = [a2 bindLongParameter_];
      goto LABEL_13;
    }

LABEL_9:
    sub_1CF1D8E0C(a1, a2);
    return;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  if (a1 == 66)
  {
    v10 = a2;
    swift_getAssociatedTypeWitness();
    v11 = *(swift_getAssociatedConformanceWitness() + 8);
    v12 = *(v11 + 32);
    v13 = swift_checkMetadataState();
    v12(v10, v13, v11);
    return;
  }

  if (a1 != 67)
  {
    goto LABEL_9;
  }

  v5 = [a2 bindUnsignedLongParameter_];
LABEL_13:
  v14 = v5;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
}

void sub_1CF1E66F4(unsigned __int8 a1, id a2)
{
  v3 = *v2;
  v4 = a1 >> 5;
  if (v4 != 4)
  {
    if (v4 == 2)
    {
      if (a1 == 66)
      {
        v10 = a2;
        swift_getAssociatedTypeWitness();
        v11 = *(swift_getAssociatedConformanceWitness() + 8);
        v12 = *(v11 + 32);
        v13 = swift_checkMetadataState();
        v12(v10, v13, v11);
        return;
      }

      if (a1 == 67)
      {
        v5 = [a2 bindUnsignedLongParameter_];
LABEL_16:
        v17 = v5;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return;
      }
    }

    goto LABEL_10;
  }

  if (a1 != 128)
  {
    if (a1 == 129)
    {
      v6 = *(v2 + v3[73]);
      if (v6)
      {
        v7 = a2;
        v8 = [v6 version];
        a2 = v7;
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v5 = [a2 bindLongParameter_];
      goto LABEL_16;
    }

LABEL_10:
    sub_1CF1D8E0C(a1, a2);
    return;
  }

  v14 = *(v2 + v3[81]);
  v18[3] = MEMORY[0x1E69E6530];
  v18[0] = v14;
  sub_1CEFF8EA0(v18);
  v16 = v15;
  sub_1CF0248E0(v18);
  if (!v16)
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

void sub_1CF1E6964(unsigned __int8 a1, void *a2)
{
  v3 = a1 >> 5;
  if (v3 != 4)
  {
    if (v3 == 2 && a1 == 66)
    {
      v4 = a2;
      swift_getAssociatedTypeWitness();
      v5 = *(swift_getAssociatedConformanceWitness() + 8);
      v6 = *(v5 + 32);
      v7 = swift_checkMetadataState();
      v6(v4, v7, v5);
      return;
    }

    goto LABEL_8;
  }

  if (a1 != 129)
  {
LABEL_8:
    sub_1CF1D8E0C(a1, a2);
    return;
  }

  v8 = *(v2 + *(*v2 + 584));
  if (v8)
  {
    v9 = a2;
    v10 = [v8 version];
    a2 = v9;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a2 bindLongParameter_];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
}

unint64_t sub_1CF1E6AF4@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 >> 5;
  if (v5 == 4)
  {
    if (a2 == 129)
    {
      result = [a1 isNullAtIndex_];
      if ((result & 1) != 0 || (result = [a1 integerAtIndex_]) == 0)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        v11 = [objc_opt_self() domainVersionWithVersion_];
        result = sub_1CF1E7FC0();
        *(a4 + 24) = result;
        *a4 = v11;
      }

      return result;
    }

    return sub_1CF1D90A0(a1, a2, a3, a4);
  }

  if (v5 != 2)
  {
    return sub_1CF1D90A0(a1, a2, a3, a4);
  }

  if (a2 != 66)
  {
    if (a2 == 67)
    {
      result = [a1 unsignedLongAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6810];
      *a4 = result;
      return result;
    }

    return sub_1CF1D90A0(a1, a2, a3, a4);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 16);
  *(a4 + 24) = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(a4);
  result = v17(a1, a3, AssociatedTypeWitness, v16);
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  return result;
}

uint64_t sub_1CF1E6CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v49[0] = &_s9SQLFieldsON_1;
  v49[1] = a2;
  v42 = sub_1CF020F5C();
  v49[2] = v42;
  v49[3] = a3;
  v8 = type metadata accessor for SQLCodableAccessorWrapper(0, v49);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v35 - v13;
  LOBYTE(v49[0]) = 66;
  v15 = sub_1CF0230AC(v6, AssociatedTypeWitness);
  v43 = v6;
  v44 = a3;
  v45 = a1;
  v16 = v46;
  sub_1CF0230B4(v49, v15, v6, AssociatedTypeWitness, a3);
  if (!v16)
  {
    v38 = v10;
    v39 = AssociatedTypeWitness;
    v40 = v14;
    v37 = v4;
    v46 = v12;
    LOBYTE(v50) = 67;
    v17 = MEMORY[0x1E69E6810];
    v18 = v42;
    v19 = v43;
    v20 = v44;
    sub_1CF0230AC(v43, MEMORY[0x1E69E6810]);
    sub_1CF0230B4(&v50, v17, v19, v17, v20);
    v21 = v49[0];
    LOBYTE(v48) = -127;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
    sub_1CF0230AC(v19, v22);
    sub_1CF0230B4(&v48, v22, v19, v22, v20);
    v24 = v39;
    v23 = v40;
    v35 = v21;
    v36 = v50;
    v26 = v38;
    sub_1CF021034(sub_1CF1E800C, 0, v19, &_s9SQLFieldsON_1, v20, v18, v38);
    v27 = v8;
    WitnessTable = swift_getWitnessTable();
    v29 = sub_1CF023F08(v26, v8, WitnessTable);
    v30 = v36;
    v42 = v31;
    v32 = v29;
    (*(v41 + 8))(v26, v27);
    v47 = 65;
    v34 = v43;
    v33 = v44;
    sub_1CF0230AC(v43, &type metadata for JobReason);
    sub_1CF0230B4(&v47, &type metadata for JobReason, v34, &type metadata for JobReason, v33);
    sub_1CF60DA60(v23, v35, v30, v32, v42, v48);
    (*(v46 + 8))(v23, v24);
    v6 = sub_1CF1DA980(v45, v43, v44);
  }

  return v6;
}

uint64_t sub_1CF1E71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF1E6CEC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

double sub_1CF1E71F8@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 >> 5;
  if (v5 == 4)
  {
    if (a2 == 128)
    {
      *(a4 + 24) = &type metadata for Fields;
      *a4 = [a1 longAtIndex_];
      return result;
    }

    if (a2 != 129)
    {
      goto LABEL_11;
    }

    if (([a1 isNullAtIndex_] & 1) != 0 || (v12 = objc_msgSend(a1, sel_integerAtIndex_, a3)) == 0)
    {
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      v13 = [objc_opt_self() domainVersionWithVersion_];
      *(a4 + 24) = sub_1CF1E7FC0();
      *a4 = v13;
    }
  }

  else
  {
    if (v5 != 2)
    {
LABEL_11:
      sub_1CF1D90A0(a1, a2, a3, a4);
      return result;
    }

    if (a2 != 66)
    {
      if (a2 == 67)
      {
        v7 = [a1 unsignedLongAtIndex_];
        *(a4 + 24) = MEMORY[0x1E69E6810];
        *a4 = v7;
        return result;
      }

      goto LABEL_11;
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = *(swift_getAssociatedConformanceWitness() + 8);
    v19 = *(v18 + 16);
    *(a4 + 24) = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(a4);
    v19(a1, a3, AssociatedTypeWitness, v18);
    if (v4)
    {
      __swift_deallocate_boxed_opaque_existential_0(a4);
    }
  }

  return result;
}

uint64_t sub_1CF1E742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45[0] = &_s9SQLFieldsON_1;
  v45[1] = a2;
  v37 = sub_1CF020F5C();
  v45[2] = v37;
  v45[3] = a3;
  v8 = type metadata accessor for SQLCodableAccessorWrapper(0, v45);
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v32 - v12;
  LOBYTE(v45[0]) = 66;
  v14 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v15 = a2;
  v16 = a2;
  v17 = a3;
  v40 = a1;
  v18 = v41;
  sub_1CF0230B4(v45, v14, v16, AssociatedTypeWitness, a3);
  if (!v18)
  {
    v35 = v10;
    v36 = AssociatedTypeWitness;
    v41 = v13;
    v34 = v4;
    LOBYTE(v46) = 67;
    v19 = MEMORY[0x1E69E6810];
    v20 = v15;
    sub_1CF0230AC(v15, MEMORY[0x1E69E6810]);
    sub_1CF0230B4(&v46, v19, v15, v19, v17);
    v21 = v45[0];
    LOBYTE(v44) = 0x80;
    sub_1CF0230AC(v20, &type metadata for Fields);
    sub_1CF0230B4(&v44, &type metadata for Fields, v20, &type metadata for Fields, v17);
    v22 = v41;
    v23 = v36;
    v44 = v46;
    LOBYTE(v43[0]) = -127;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
    sub_1CF0230AC(v20, v24);
    sub_1CF0230B4(v43, v24, v20, v24, v17);
    v33 = v43[1];
    v25 = v35;
    sub_1CF021034(sub_1CF1E800C, 0, v20, &_s9SQLFieldsON_1, v17, v37, v35);
    v26 = v8;
    WitnessTable = swift_getWitnessTable();
    v28 = sub_1CF023F08(v25, v8, WitnessTable);
    v30 = v33;
    v37 = v31;
    v32 = v28;
    (*(v38 + 8))(v25, v26);
    v42 = 65;
    sub_1CF0230AC(v20, &type metadata for JobReason);
    sub_1CF0230B4(&v42, &type metadata for JobReason, v20, &type metadata for JobReason, v17);
    sub_1CF60E220(v22, v21, &v44, v30, v32, v37, v43[0]);
    (*(v39 + 8))(v22, v23);
    v17 = sub_1CF1DA980(v40, v20, v17);
  }

  return v17;
}

uint64_t sub_1CF1E7944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF1E742C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

double sub_1CF1E7970@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 >> 5;
  if (v5 != 4)
  {
    if (v5 == 2 && a2 == 66)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v10 = *(swift_getAssociatedConformanceWitness() + 8);
      v11 = *(v10 + 16);
      *(a4 + 24) = AssociatedTypeWitness;
      __swift_allocate_boxed_opaque_existential_0(a4);
      v11(a1, a3, AssociatedTypeWitness, v10);
      if (v4)
      {
        __swift_deallocate_boxed_opaque_existential_0(a4);
      }

      return result;
    }

LABEL_10:
    sub_1CF1D90A0(a1, a2, a3, a4);
    return result;
  }

  if (a2 != 129)
  {
    goto LABEL_10;
  }

  if (([a1 isNullAtIndex_] & 1) != 0 || (v16 = objc_msgSend(a1, sel_integerAtIndex_, a3)) == 0)
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v17 = [objc_opt_self() domainVersionWithVersion_];
    *(a4 + 24) = sub_1CF1E7FC0();
    *a4 = v17;
  }

  return result;
}

uint64_t sub_1CF1E7B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38[0] = &_s9SQLFieldsON_1;
  v38[1] = a2;
  v32 = sub_1CF020F5C();
  v38[2] = v32;
  v38[3] = a3;
  v8 = type metadata accessor for SQLCodableAccessorWrapper(0, v38);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v29 - v12;
  LOBYTE(v38[0]) = 66;
  v14 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v15 = a2;
  v34 = a3;
  v35 = a1;
  v16 = v36;
  sub_1CF0230B4(v38, v14, a2, AssociatedTypeWitness, a3);
  if (!v16)
  {
    v29[1] = v4;
    v30 = AssociatedTypeWitness;
    v17 = v32;
    v36 = v13;
    LOBYTE(v39) = -127;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
    v19 = v34;
    sub_1CF0230AC(v15, v18);
    sub_1CF0230B4(&v39, v18, v15, v18, v19);
    v29[0] = v38[0];
    sub_1CF021034(sub_1CF1E800C, 0, v15, &_s9SQLFieldsON_1, v19, v17, v10);
    WitnessTable = swift_getWitnessTable();
    v21 = sub_1CF023F08(v10, v8, WitnessTable);
    v22 = v33;
    v23 = v29[0];
    v32 = v24;
    v25 = v21;
    (*(v31 + 8))(v10, v8);
    v37 = 65;
    sub_1CF0230AC(v15, &type metadata for JobReason);
    sub_1CF0230B4(&v37, &type metadata for JobReason, v15, &type metadata for JobReason, v19);
    v26 = v30;
    v28 = v36;
    sub_1CF60DDA4(v36, v23, v25, v32, v39);
    (*(v22 + 8))(v28, v26);
    AssociatedTypeWitness = sub_1CF1DA980(v35, v15, v34);
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CF1E7F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF1E7B2C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1CF1E7FC0()
{
  result = qword_1EDEAB580;
  if (!qword_1EDEAB580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAB580);
  }

  return result;
}

uint64_t sub_1CF1E8034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = 0;
  v15 = 2;
  v8 = swift_allocObject();
  *(v8 + 16) = &v15;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v16;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FDA14;
  *(v9 + 24) = v8;
  v14[4] = sub_1CF1FDB58;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CF033B10;
  v14[3] = &block_descriptor_271;
  v10 = _Block_copy(v14);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    LOBYTE(v11) = v15;
    if (v15 != 2)
    {

      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (v16)
  {
    swift_willThrow();

    return v11 & 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1CF1E8204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = 0;
  v17 = 0;
  v18 = 256;
  v8 = swift_allocObject();
  *(v8 + 16) = &v17;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v19;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FDB20;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1CF1FDB58;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_261;
  v10 = _Block_copy(aBlock);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v19)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    if ((v18 & 0x100) == 0)
    {
      v14 = v17;
      v15 = v18;

      return v14 | ((v15 & 1) << 32);
    }

    goto LABEL_11;
  }

  if (v19)
  {
    swift_willThrow();
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1CF1E83E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = 0;
  v15 = 0;
  v16 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = &v15;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v17;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FDB1C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1CF1FDB58;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_250;
  v10 = _Block_copy(aBlock);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    if ((v16 & 1) == 0)
    {
      v11 = v15;

      return v11;
    }

    goto LABEL_12;
  }

  if (v17)
  {
    swift_willThrow();

    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_1CF1E85B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = 0;
  v15 = 0;
  v17 = 2;
  v16 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = &v15;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v18;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FD954;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1CF1FDB58;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_223;
  v10 = _Block_copy(aBlock);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v18)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    if (((v16 | (v17 << 32)) & 0xFF00000000) != 0x200000000)
    {
      v11 = v15;

      return v11;
    }

    goto LABEL_12;
  }

  if (v18)
  {
    swift_willThrow();

    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1CF1E87A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = &v25;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v28;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FD6A8;
  *(v9 + 24) = v8;
  v24[4] = sub_1CF1FDB58;
  v24[5] = v9;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1CF033B10;
  v24[3] = &block_descriptor_142;
  v10 = _Block_copy(v24);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v28;
  if (v28)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (v14 == 1)
  {
    if (v26)
    {
      v10 = v25;

      return v10;
    }

    goto LABEL_12;
  }

  if (v28)
  {
    swift_willThrow();
    v15 = v26;
    v16 = v13;
    v15, v17, v18, v19, v20, v21, v22, v23;

    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1CF1E899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = 0;
  v15 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = &v15;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = &v16;
  *(v8 + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF1FB2A8;
  *(v9 + 24) = v8;
  v14[4] = sub_1CF033B54;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CF033B10;
  v14[3] = &block_descriptor_8;
  v10 = _Block_copy(v14);

  v11 = [v4 performWithFlags:a1 action:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    if ((v15 & 1) == 0)
    {
    }

    goto LABEL_11;
  }

  if (v16)
  {
    swift_willThrow();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1CF1E8B8C(_TtC18FileProviderDaemon8FSTester *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result->tree;
  v5 = *v3;
  v6 = *(*v3)->tree;
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *v5->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v30 = v6 + v4;
  }

  else
  {
    v30 = v6;
  }

  v5 = sub_1CF1F696C(isUniquelyReferenced_nonNull_native, v30, 1, v5, a2, a3, v17, v18);
  if (!*result->tree)
  {
LABEL_13:
    result, v12, v13, v14, v15, v16, v17, v18;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v19 = *v5->tree;
  if ((*v5->tester >> 1) - v19 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v5[1] + v19, &result[1], v4);
  result, v20, v21, v22, v23, v24, v25, v26;
  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v27 = *v5->tree;
  v28 = __OFADD__(v27, v4);
  v29 = v27 + v4;
  if (!v28)
  {
    *v5->tree = v29;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1CF1E8CF8(_TtC18FileProviderDaemon8FSTester *result)
{
  v2 = *result->tree;
  v3 = *v1;
  v4 = *(*v1)->tree;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1CF0710C0(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*result->tree)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->tester >> 1) - *v3->tree < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->tree;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->tree = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1CF1E8DEC(_TtC18FileProviderDaemon8FSTester *result)
{
  v2 = *result->tree;
  v3 = *v1;
  v4 = *(*v1)->tree;
  v5 = &v4[v2];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = &v4[v2];
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1CF1F742C(isUniquelyReferenced_nonNull_native, v25, 1, v3, &unk_1EC4C05D0, &unk_1CF9FE620, &qword_1EC4BE770, &qword_1CFA059A0);
  if (!*result->tree)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->tester >> 1) - *v3->tree < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE770, &qword_1CFA059A0);
  swift_arrayInitWithCopy();
  result, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->tree;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->tree = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1CF1E8F5C(_TtC18FileProviderDaemon8FSTester *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *result->tree;
  v7 = *v5;
  v8 = *(*v5)->tree;
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= *v7->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v34 = v8 + v6;
  }

  else
  {
    v34 = v8;
  }

  v7 = sub_1CF1F85E8(isUniquelyReferenced_nonNull_native, v34, 1, v7, a2, a3, a4, a5);
  if (!*result->tree)
  {
LABEL_13:
    result, v16, v17, v18, v19, v20, v21, v22;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v23 = (*v7->tester >> 1) - *v7->tree;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (v23 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v24, v25, v26, v27, v28, v29, v30;
  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return;
  }

  v31 = *v7->tree;
  v32 = __OFADD__(v31, v6);
  v33 = v31 + v6;
  if (!v32)
  {
    *v7->tree = v33;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

_BYTE *FPFSSQLRestoreEngine.init(userURL:backupBuild:restoreType:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v6 = v5;
  v155 = a5;
  v153 = a4;
  v160[1] = *MEMORY[0x1E69E9840];
  v145 = sub_1CF9E6118();
  v144 = *v145[-1].tester;
  MEMORY[0x1EEE9AC00](v145);
  v152 = &v139[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v139[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v139[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v139[-v17];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v139[-v21];
  v23 = &v6[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath];
  *v23 = 0;
  *(v23 + 1) = 0;
  v151 = v12;
  v25 = *(v12 + 16);
  v24 = (v12 + 16);
  v143 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL;
  v148 = v25;
  v149 = v26;
  (v25)(&v6[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL], a1, v20);
  v27 = &v6[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild];
  *v27 = a2;
  *(v27 + 1) = a3;
  v28 = &v6[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType];
  v29 = v155;
  *v28 = v153;
  *(v28 + 1) = v29;
  v159 = MEMORY[0x1E69E7CC0];
  sub_1CF9E5958();
  v30 = [objc_opt_self() defaultManager];
  v150 = v22;
  v31 = sub_1CF9E5928();
  v160[0] = 0;
  v32 = [v30 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:0 options:1 error:v160];

  v33 = v160[0];
  if (v32)
  {
    v34 = a1;
    v35 = v148;
    v36 = v149;
    v155 = v24;
    v37 = sub_1CF9E6D48();
    v38 = v33;

    v46 = v37;
    v47 = *(v37 + 16);
    if (v47)
    {
      v146 = v34;
      v147 = v6;
      v48 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v145 = v46;
      v153 = v48;
      v49 = v46 + v48;
      v50 = *(v151 + 72);
      v51 = (v151 + 8);
      v152 = (v151 + 32);
      v52 = MEMORY[0x1E69E7CC0];
      v53 = v35;
      while (1)
      {
        v61 = v36;
        v53(v18, v49, v36);
        if (sub_1CF9E58E8() == 0x70756B636162 && v62 == 0xE600000000000000)
        {
          0xE600000000000000, 0xE600000000000000, v63, v64, v65, v66, v67, v68;
        }

        else
        {
          v69 = v62;
          v70 = sub_1CF9E8048();
          v69, v71, v72, v73, v74, v75, v76, v77;
          if ((v70 & 1) == 0)
          {
            sub_1CF9E5968();
            (*v51)(v18, v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_1CF0006F0(0, *v52->tree + 1, 1, v52, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
            }

            v79 = *v52->tree;
            v78 = *v52->tester;
            if (v79 >= v78 >> 1)
            {
              v52 = sub_1CF0006F0((v78 > 1), v79 + 1, 1, v52, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
            }

            *v52->tree = v79 + 1;
            v80 = v153 + v52 + v79 * v50;
            v36 = v61;
            (*v152)(v80, v154, v61);
            goto LABEL_6;
          }
        }

        v36 = v61;
        (*v51)(v18, v61);
LABEL_6:
        v49 += v50;
        --v47;
        v53 = v35;
        if (!v47)
        {
          v145, v54, v55, v56, v57, v58, v59, v60;
          v81 = v146;
          v6 = v147;
          goto LABEL_19;
        }
      }
    }

    v46, v39, v40, v41, v42, v43, v44, v45;
    v52 = MEMORY[0x1E69E7CC0];
    v81 = v34;
LABEL_19:
    sub_1CF000FB8(v52);
    v110 = *(v151 + 8);
    v110(v150, v36);
    *&v6[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs] = v159;
    v111 = type metadata accessor for FPFSSQLRestoreEngine(0);
    v156.receiver = v6;
    v156.super_class = v111;
    v112 = objc_msgSendSuper2(&v156, sel_init);
    v110(v81, v36);
  }

  else
  {
    v153 = v28;
    v154 = v27;
    v155 = v23;
    v146 = a1;
    v147 = v6;
    v82 = v160[0];
    v83 = sub_1CF9E57F8();

    swift_willThrow();
    v84 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v85 = v142;
    v87 = v149;
    v86 = v150;
    (v148)(v142, v150, v149);
    v88 = v83;
    v89 = sub_1CF9E6108();
    v90 = sub_1CF9E72C8();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v160[0] = v148;
      *v91 = 136315394;
      v140 = v90;
      v92 = sub_1CF9E5928();
      v93 = [v92 fp_shortDescription];

      v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v95 = v85;
      v97 = v96;

      v98 = *(v151 + 8);
      v98(v95, v87);
      v99 = sub_1CEFD0DF0(v94, v97, v160);
      v97, v100, v101, v102, v103, v104, v105, v106;
      *(v91 + 4) = v99;
      *(v91 + 12) = 2112;
      swift_getErrorValue();
      v107 = Error.prettyDescription.getter(v157, v158);
      *(v91 + 14) = v107;
      v108 = v141;
      *v141 = v107;
      _os_log_impl(&dword_1CEFC7000, v89, v140, "Failed to enumerate %s: %@", v91, 0x16u);
      sub_1CF19CAB0(v108);
      MEMORY[0x1D386CDC0](v108, -1, -1);
      v109 = v148;
      __swift_destroy_boxed_opaque_existential_1(v148);
      MEMORY[0x1D386CDC0](v109, -1, -1);
      MEMORY[0x1D386CDC0](v91, -1, -1);

      v98(v146, v87);
      (*(v144 + 8))(v152, v145);
      v98(v150, v87);
    }

    else
    {
      v113 = v86;

      v98 = *(v151 + 8);
      v98(v146, v87);
      v98(v85, v87);
      (*(v144 + 8))(v152, v145);
      v98(v113, v87);
    }

    v115 = v154;
    v114 = v155;
    v116 = v153;
    v98(&v147[v143], v87);
    v115[1], v117, v118, v119, v120, v121, v122, v123;
    v116[1], v124, v125, v126, v127, v128, v129, v130;
    *(v114 + 1), v131, v132, v133, v134, v135, v136, v137;
    type metadata accessor for FPFSSQLRestoreEngine(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v112;
}

uint64_t sub_1CF1E9B78(int a1, uint64_t (*a2)(uint64_t, void *, unint64_t, unint64_t), uint64_t a3)
{
  v4 = v3;
  v218 = a2;
  v198 = a1;
  v222[2] = *MEMORY[0x1E69E9840];
  v214 = sub_1CF9E6118();
  v216 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v200 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v199 = &v193 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v204 = &v193 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v207 = &v193 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v193 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v211 = &v193 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v205 = &v193 - v18;
  v210 = sub_1CF9E6938();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v201 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v202 = &v193 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v206 = &v193 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v217 = &v193 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v193 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v193 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v193 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v193 - v40;
  v42 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL;
  v219 = v21;
  v43 = *(v21 + 16);
  v43(&v193 - v40, v4 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL, v20, v39);
  v215 = v4;
  v212 = v42;
  (v43)(v37, v4 + v42, v20);
  v44 = objc_allocWithZone(type metadata accessor for FPFSSQLBackupEngine(0));
  v45 = FPFSSQLBackupEngine.init(userURL:outputUserURL:)(v41, v37);
  if (!v45)
  {
    return v218(1, 0, 0xD000000000000010, 0x80000001CFA2F380);
  }

  v213 = a3;
  v46 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL;
  v47 = v45;
  (v43)(v34, &v45[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v20);
  (v43)(v31, &v47[v46], v20);
  type metadata accessor for SQLBackupManifest(0);
  swift_allocObject();
  v197 = sub_1CF1BA200(v31);

  v194 = v47;
  sub_1CF9E5988();
  sub_1CF9E5958();
  v49 = *(v219 + 8);
  v196 = v20;
  v219 += 8;
  v195 = v49;
  v49(v41, v20);
  v50 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v51 = sub_1CF9E5928();
  v220 = 0;
  v52 = [v50 removeItemAtURL:v51 error:&v220];

  v193 = v43;
  if (v52)
  {
    v53 = v220;
  }

  else
  {
    v54 = v220;
    v55 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v220 = 0;
  v221 = 0xE000000000000000;
  v56 = v215;
  v57 = *(v215 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild + 8);
  if (v57)
  {
    v58 = *(v215 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild);
    v222[0] = 0;
    v222[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v222[1], v59, v60, v61, v62, v63, v64, v65;
    strcpy(v222, "backup build: ");
    HIBYTE(v222[1]) = -18;
    MEMORY[0x1D3868CC0](v58, v57);
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v66 = v222[1];
    MEMORY[0x1D3868CC0](v222[0], v222[1]);
    v66, v67, v68, v69, v70, v71, v72, v73;
  }

  v74 = *(v56 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType + 8);
  if (v74)
  {
    v75 = *(v56 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType);
    v222[0] = 0;
    v222[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v222[1], v76, v77, v78, v79, v80, v81, v82;
    strcpy(v222, "restore type: ");
    HIBYTE(v222[1]) = -18;
    MEMORY[0x1D3868CC0](v75, v74);
    v83 = v222[1];
    MEMORY[0x1D3868CC0](v222[0], v222[1]);
    v83, v84, v85, v86, v87, v88, v89, v90;
  }

  v91 = objc_allocWithZone(MEMORY[0x1E696AC08]);
  v92 = [v91 init];
  sub_1CF9E5A18();
  v94 = v93;
  v95 = sub_1CF9E6888();
  v94, v96, v97, v98, v99, v100, v101, v102;
  v103 = v221;
  v104 = v208;
  sub_1CF9E6918();
  v105 = sub_1CF9E68C8();
  v107 = v106;
  v103, v106, v108, v109, v110, v111, v112, v113;
  (*(v209 + 8))(v104, v210);
  if (v107 >> 60 == 15)
  {
    v114 = 0;
  }

  else
  {
    v114 = sub_1CF9E5B48();
    sub_1CEFE48D8(v105, v107);
  }

  v115 = [v92 createFileAtPath:v95 contents:v114 attributes:0];

  v116 = v214;
  v117 = v215;
  if ((v115 & 1) == 0)
  {
    v118 = fpfs_current_or_default_log();
    v119 = v205;
    sub_1CF9E6128();
    v120 = sub_1CF9E6108();
    v121 = sub_1CF9E72A8();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 67109120;
      *(v122 + 4) = MEMORY[0x1D38683F0]();
      _os_log_impl(&dword_1CEFC7000, v120, v121, "Failed to save restore timestamp on disk: %d", v122, 8u);
      MEMORY[0x1D386CDC0](v122, -1, -1);
    }

    (*(v216 + 8))(v119, v116);
  }

  v210 = v34;
  v123 = sub_1CF9E5A18();
  v124 = (v117 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath);
  v125 = *(v117 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath + 8);
  *v124 = v123;
  v124[1] = v126;
  v125, v126, v127, v128, v129, v130, v131, v132;
  v133 = sub_1CF9E5A18();
  v135 = v134;
  v136 = fpfs_current_or_default_log();
  v137 = v211;
  sub_1CF9E6128();

  v138 = sub_1CF9E6108();
  v139 = sub_1CF9E72C8();
  v135, v140, v141, v142, v143, v144, v145, v146;
  if (os_log_type_enabled(v138, v139))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v222[0] = v148;
    *v147 = 136315138;
    *(v147 + 4) = sub_1CEFD0DF0(v133, v135, v222);
    _os_log_impl(&dword_1CEFC7000, v138, v139, "Populating new columns with base path: %s", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v148);
    MEMORY[0x1D386CDC0](v148, -1, -1);
    MEMORY[0x1D386CDC0](v147, -1, -1);
  }

  v149 = v137;
  v150 = v116;
  v211 = *(v216 + 8);
  v151 = (v211)(v149, v116);
  v152 = v196;
  v153 = v210;
  v154 = v197;
  MEMORY[0x1EEE9AC00](v151);
  *(&v193 - 4) = v154;
  *(&v193 - 3) = v133;
  *(&v193 - 2) = v135;
  sub_1CF1E8034(21, sub_1CF1F9188, (&v193 - 6));
  v135, v155, v156, v157, v158, v159, v160, v161;

  v162 = fpfs_current_or_default_log();
  v163 = v203;
  sub_1CF9E6128();
  v164 = sub_1CF9E6108();
  v165 = sub_1CF9E72C8();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&dword_1CEFC7000, v164, v165, "Creating indexes", v166, 2u);
    MEMORY[0x1D386CDC0](v166, -1, -1);
  }

  v216 += 8;
  (v211)(v163, v150);
  v167 = v197;
  sub_1CF1E8034(21, sub_1CF1F91A8, v197);
  v168 = sub_1CF1EB170(*(v215 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs), v167);
  v176 = v169;
  v177 = v195;
  if (v170)
  {
    v178 = v170;
    v218(0, v170, v168, v169);

    v176, v179, v180, v181, v182, v183, v184, v185;
    v186 = v178;
  }

  else
  {
    v169, v169, 0, v171, v172, v173, v174, v175;
    v187 = v201;
    sub_1CF9E5958();
    sub_1CF33988C(v187);
    v177(v187, v152);
    sub_1CF1BC728();
    if (v198)
    {
      sub_1CF33BA94();
    }

    v188 = fpfs_current_or_default_log();
    v189 = v199;
    sub_1CF9E6128();
    v190 = sub_1CF9E6108();
    v191 = sub_1CF9E72C8();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_1CEFC7000, v190, v191, "Calling completion handler with success.", v192, 2u);
      MEMORY[0x1D386CDC0](v192, -1, -1);
    }

    (v211)(v189, v150);
    v218(1, 0, 1701736292uLL, 0xE400000000000000);

    v186 = 0;
  }

  v177(v217, v152);
  return (v177)(v153, v152);
}

uint64_t sub_1CF1EB170(uint64_t a1, uint64_t a2)
{
  v203 = a2;
  v3 = sub_1CF9E5A58();
  v215 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v195[1] = v195 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v196 = v195 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v204 = v195 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v217 = v195 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v223 = v195 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v195 - v14;
  v222 = sub_1CF9E6118();
  v16 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v197 = v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v198 = v195 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v195 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v212 = v195 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v211 = v195 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v207 = v195 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v195 - v30;
  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E72C8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1CEFC7000, v33, v34, "Checking if provider is iCloud Drive on FPFS", v35, 2u);
    MEMORY[0x1D386CDC0](v35, -1, -1);
  }

  v36 = *(v16 + 8);
  v220 = v16 + 8;
  v219 = v36;
  v36(v31, v222);
  v37 = *(a1 + 16);
  if (v37)
  {
    v206 = v22;
    v39 = v215 + 16;
    v38 = *(v215 + 16);
    v40 = (a1 + ((*(v215 + 80) + 32) & ~*(v215 + 80)));
    v41 = *(v215 + 72);
    v42 = (v215 + 8);
    v221 = v40;
    v43 = v37;
    do
    {
      v38(v15, v40, v3);
      sub_1CF1EF360();
      v44 = *v42;
      (*v42)(v15, v3);
      v40 = (v40 + v41);
      --v43;
    }

    while (v43);
    v210 = v41;
    v214 = objc_opt_self();
    v201 = 0x80000001CFA2F710;
    v200 = v225;
    *&v45 = 136315138;
    v202 = v45;
    v205 = v3;
    v216 = v44;
    v215 = v39;
    v46 = v206;
    v213 = v38;
    v47 = v221;
    do
    {
      v218 = v37;
      v221 = v47;
      (v38)(v223);
      v51 = [v214 defaultManager];
      sub_1CF9E5A18();
      v53 = v52;
      v54 = v38;
      v55 = sub_1CF9E6888();
      v53, v56, v57, v58, v59, v60, v61, v62;
      LODWORD(v53) = [v51 fileExistsAtPath_];

      v63 = fpfs_current_or_default_log();
      if (v53)
      {
        v64 = v207;
        sub_1CF9E6128();
        v54(v217, v223, v3);
        v65 = sub_1CF9E6108();
        v66 = sub_1CF9E72C8();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v199 = 0;
          v69 = v68;
          aBlock[0] = v68;
          *v67 = v202;
          v70 = sub_1CF9E5928();
          v71 = [v70 fp_shortDescription];

          v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v73 = v3;
          v75 = v74;

          v44 = v216;
          v216(v217, v73);
          v76 = sub_1CEFD0DF0(v72, v75, aBlock);
          v75, v77, v78, v79, v80, v81, v82, v83;
          *(v67 + 4) = v76;
          _os_log_impl(&dword_1CEFC7000, v65, v66, "Patching database at %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v84 = v69;
          v43 = v199;
          MEMORY[0x1D386CDC0](v84, -1, -1);
          MEMORY[0x1D386CDC0](v67, -1, -1);

          v85 = v207;
        }

        else
        {

          v44(v217, v3);
          v85 = v64;
        }

        v219(v85, v222);
        v107 = swift_allocObject();
        strcpy((v107 + 16), "openDatabase");
        *(v107 + 29) = 0;
        *(v107 + 30) = -5120;
        v108 = sub_1CF1EDE40(v223);
        if (v43)
        {
          v221 = v42;
          v147 = fpfs_current_or_default_log();
          v148 = v198;
          sub_1CF9E6128();
          v149 = v196;
          v150 = v205;
          v213(v196, v223, v205);

          v151 = v43;
          v152 = sub_1CF9E6108();
          v153 = sub_1CF9E72A8();

          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            aBlock[0] = v218;
            *v154 = 136315650;
            swift_beginAccess();
            v155 = *(v107 + 16);
            v156 = *(v107 + 24);

            v157 = sub_1CEFD0DF0(v155, v156, aBlock);
            v156, v158, v159, v160, v161, v162, v163, v164;
            *(v154 + 4) = v157;
            *(v154 + 12) = 2080;
            v165 = sub_1CF9E5928();
            v166 = [v165 fp_shortDescription];

            v167 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v169 = v168;

            v216(v149, v205);
            v170 = sub_1CEFD0DF0(v167, v169, aBlock);
            v171 = v169;
            v44 = v216;
            v171, v172, v173, v174, v175, v176, v177, v178;
            *(v154 + 14) = v170;
            *(v154 + 22) = 2112;
            swift_getErrorValue();
            v179 = Error.prettyDescription.getter(v226, v227);
            *(v154 + 24) = v179;
            v180 = v217;
            *v217 = v179;
            _os_log_impl(&dword_1CEFC7000, v152, v153, "[%s] Failed to open database at %s: %@", v154, 0x20u);
            sub_1CF19CAB0(v180);
            MEMORY[0x1D386CDC0](v180, -1, -1);
            v181 = v218;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v181, -1, -1);
            MEMORY[0x1D386CDC0](v154, -1, -1);

            v182 = v198;
          }

          else
          {

            v44(v149, v150);
            v182 = v148;
          }

          v219(v182, v222);
          swift_beginAccess();
          v185 = *(v107 + 16);
          v186 = *(v107 + 24);
          v187 = v43;

          sub_1CF1EF95C(v223, v43, -1, v185, v186);

          v186, v188, v189, v190, v191, v192, v193, v194;
          v146 = *(v107 + 16);

          goto LABEL_30;
        }

        v109 = v108;
        v110 = qword_1EDEBBDB0;
        v111 = *(v108 + qword_1EDEBBDB0);
        swift_beginAccess();
        v112 = *(v107 + 24);
        *(v107 + 16) = 0xD000000000000010;
        *(v107 + 24) = v201;

        v113 = v111;
        v112, v114, v115, v116, v117, v118, v119, v120;
        v228 = -1;
        MEMORY[0x1EEE9AC00](v121);
        v209 = v107;
        v195[-8] = v107;
        v195[-7] = v223;
        v195[-6] = v109;
        v195[-5] = v113;
        LOBYTE(v195[-4]) = 2;
        v195[-3] = v203;
        v195[-2] = &v228;
        v122 = swift_allocObject();
        *(v122 + 16) = sub_1CF1FD774;
        *(v122 + 24) = &v195[-10];
        v225[2] = sub_1CF1FDB58;
        v225[3] = v122;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v225[0] = sub_1CF033B10;
        v225[1] = &block_descriptor_164;
        v123 = _Block_copy(aBlock);

        v208 = v113;
        v124 = [v113 performWithFlags:9 action:v123];
        _Block_release(v123);
        LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

        if (v123)
        {
          __break(1u);
          return result;
        }

        if ((v124 & 1) == 0)
        {
          v221 = v42;
          v146 = *(v209 + 16);
          v183 = v228;
          sub_1CF1FD788();
          swift_allocError();
          *v184 = v183;

          sub_1CF6C0474();

          v44 = v216;
LABEL_30:

          v44(v223, v205);
          return v146;
        }

        v126 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v127 = sub_1CF9E6108();
        v128 = sub_1CF9E72C8();
        v129 = os_log_type_enabled(v127, v128);
        v130 = v209;
        if (v129)
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_1CEFC7000, v127, v128, "Marking domain as needs-reindexing", v131, 2u);
          MEMORY[0x1D386CDC0](v131, -1, -1);
        }

        v219(v211, v222);
        sub_1CF1EFDD8(v223);
        v132 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v133 = sub_1CF9E6108();
        v134 = sub_1CF9E7298();
        v135 = os_log_type_enabled(v133, v134);
        v48 = v206;
        v49 = v218;
        if (v135)
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&dword_1CEFC7000, v133, v134, "Flushing database...", v136, 2u);
          MEMORY[0x1D386CDC0](v136, -1, -1);
        }

        v219(v212, v222);
        v137 = *(v130 + 24);
        strcpy((v130 + 16), "flushDatabase");
        *(v130 + 30) = -4864;
        v137, v138, v139, v140, v141, v142, v143, v144;
        v145 = *(v109 + v110);
        sub_1CF1E899C(5, sub_1CF1F3704, 0);
        v3 = v205;

        sub_1CF1EF95C(v223, 0, 0, 1701736292, 0xE400000000000000);
        sub_1CF6C0474();

        v44 = v216;
      }

      else
      {
        sub_1CF9E6128();
        v86 = v204;
        v54(v204, v223, v3);
        v87 = sub_1CF9E6108();
        v88 = sub_1CF9E72C8();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = v86;
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          aBlock[0] = v91;
          *v90 = v202;
          v92 = sub_1CF9E5928();
          v93 = [v92 fp_shortDescription];

          v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v96 = v95;

          v3 = v205;
          v97 = v89;
          v46 = v206;
          v216(v97, v205);
          v98 = sub_1CEFD0DF0(v94, v96, aBlock);
          v96, v99, v100, v101, v102, v103, v104, v105;
          *(v90 + 4) = v98;
          _os_log_impl(&dword_1CEFC7000, v87, v88, "No file at %s, so no need to patch.", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          v106 = v91;
          v44 = v216;
          MEMORY[0x1D386CDC0](v106, -1, -1);
          MEMORY[0x1D386CDC0](v90, -1, -1);
        }

        else
        {

          v44(v86, v3);
        }

        v48 = v46;
        v219(v46, v222);
        v49 = v218;
      }

      v50 = v210;
      v44(v223, v3);
      v47 = (v221 + v50);
      v37 = (v49 - 1);
      v38 = v213;
      v46 = v48;
    }

    while (v37);
  }

  return 0;
}

void sub_1CF1EC6B0(void (*a1)(void *), uint64_t a2)
{
  v61 = a2;
  v62 = a1;
  v86[1] = *MEMORY[0x1E69E9840];
  v67 = sub_1CF9E5A58();
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v80 = sub_1CF9E6118();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  memset(v83, 0, sizeof(v83));
  v84 = v2;
  v85 = v83;
  sub_1CEFE1894(sub_1CF1F9224);
  v66 = v19;
  v65 = v16;
  v74 = v13;
  v75 = v11;
  v71 = v8;
  v70 = v5;
  v22 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs);
  v23 = *(v22 + 16);
  if (v23)
  {
    v73 = 0;
    v69 = v83[0];
    v25 = *(v3 + 16);
    v24 = v3 + 16;
    v76 = v25;
    v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v68 = *(v24 + 56);
    v82 = (v24 - 8);
    v79 = (v81 + 8);
    *&v21 = 136315138;
    v64 = v21;
    *&v21 = 134218240;
    v60 = v21;
    *&v21 = 136446466;
    v63 = v21;
    v27 = v67;
    v72 = v24;
    v28 = v71;
    v29 = v75;
    v30 = v66;
    do
    {
      v77 = v23;
      v31 = v76;
      v76(v29, v26, v27);
      v32 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v31(v28, v29, v27);
      v33 = sub_1CF9E6108();
      v34 = sub_1CF9E72C8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v86[0] = v36;
        *v35 = v64;
        sub_1CF1FD858(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v37 = sub_1CF9E7F98();
        v38 = v28;
        v40 = v39;
        v81 = *v82;
        (v81)(v38, v27);
        v41 = sub_1CEFD0DF0(v37, v40, v86);
        v40, v42, v43, v44, v45, v46, v47, v48;
        *(v35 + 4) = v41;
        _os_log_impl(&dword_1CEFC7000, v33, v34, "Restoring purgencies and residency reasons on disk for db at %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1D386CDC0](v36, -1, -1);
        MEMORY[0x1D386CDC0](v35, -1, -1);
      }

      else
      {

        v81 = *v82;
        (v81)(v28, v27);
      }

      v78 = *v79;
      v78(v30, v80);
      v29 = v75;
      v49 = sub_1CF1ED230(v75, v69);
      v51 = v50;
      v52 = fpfs_current_or_default_log();
      v53 = v65;
      sub_1CF9E6128();
      v54 = sub_1CF9E6108();
      v55 = sub_1CF9E7288();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = v60;
        if (__OFSUB__(v51, v49))
        {
          __break(1u);
        }

        *(v56 + 4) = v51 - v49;
        *(v56 + 12) = 2048;
        *(v56 + 14) = v51;
        v57 = v55;
        v58 = v56;
        _os_log_impl(&dword_1CEFC7000, v54, v57, "Restored purgency on %ld/%ld items", v56, 0x16u);
        MEMORY[0x1D386CDC0](v58, -1, -1);
        v53 = v65;
      }

      v78(v53, v80);
      (v81)(v29, v27);
      v30 = v66;
      v26 += v68;
      v23 = v77 - 1;
      v28 = v71;
    }

    while (v77 != 1);
  }

  else
  {
    v73 = 0;
  }

  v59 = v73;
  v62(v73);
}

uint64_t sub_1CF1ED1B0@<X0>(uint64_t a1@<X0>, stat *a2@<X1>, int *a3@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath + 8))
  {
    v4 = a2;
    v5 = sub_1CF9E6978();
    a2 = v4;
    v6 = (v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = lstat(v6, a2);
  result = swift_unknownObjectRelease();
  *a3 = v7;
  return result;
}

id sub_1CF1ED230(uint64_t a1, int a2)
{
  LODWORD(v121) = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v126 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v116 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v116 - v9;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v124 = v11;
  v125 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v116 - v18;
  v20 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v22 = v21;
  v23 = sub_1CF9E6888();
  v22, v24, v25, v26, v27, v28, v29, v30;
  LODWORD(v22) = [v20 fileExistsAtPath_];

  if (v22)
  {
    v130 = 0;
    v131 = 0;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v32 = *(v126 + 16);
    v119 = (v126 + 16);
    v118 = v32;
    v32(v10, a1, v3);
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72C8();
    v35 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v117 = a1;
      v37 = v36;
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v37 = 136315138;
      v38 = sub_1CF9E5928();
      v39 = [v38 fp_shortDescription];

      v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v42 = v41;

      v43 = v124;
      v120 = *(v126 + 8);
      v120(v10, v35);
      v44 = sub_1CEFD0DF0(v40, v42, aBlock);
      v42, v45, v46, v47, v48, v49, v50, v51;
      *(v37 + 4) = v44;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "Patching purgency with database at %s", v37, 0xCu);
      v52 = v116;
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1D386CDC0](v52, -1, -1);
      a1 = v117;
      MEMORY[0x1D386CDC0](v37, -1, -1);

      v53 = *(v125 + 8);
      v53(v19, v43);
    }

    else
    {

      v120 = *(v126 + 8);
      v120(v10, v3);
      v53 = *(v125 + 8);
      v53(v19, v124);
    }

    v75 = v123;
    v76 = v127;
    v77 = sub_1CF1EDE40(a1);
    v78 = v122;
    v127 = v76;
    if (v76)
    {
      v79 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v118(v78, a1, v35);
      v80 = v127;
      v81 = v127;
      v82 = sub_1CF9E6108();
      v83 = sub_1CF9E72A8();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = v78;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v121 = v53;
        v87 = v86;
        v119 = swift_slowAlloc();
        aBlock[0] = v119;
        *v85 = 136315394;
        v88 = v35;
        v89 = sub_1CF9E5928();
        v90 = [v89 fp_shortDescription];

        v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v93 = v92;

        v120(v84, v88);
        v94 = sub_1CEFD0DF0(v91, v93, aBlock);
        v93, v95, v96, v97, v98, v99, v100, v101;
        *(v85 + 4) = v94;
        *(v85 + 12) = 2112;
        swift_getErrorValue();
        v102 = Error.prettyDescription.getter(v128, v129);
        *(v85 + 14) = v102;
        *v87 = v102;
        _os_log_impl(&dword_1CEFC7000, v82, v83, "Failed to open database at %s: %@", v85, 0x16u);
        sub_1CF19CAB0(v87);
        MEMORY[0x1D386CDC0](v87, -1, -1);
        v103 = v119;
        __swift_destroy_boxed_opaque_existential_1(v119);
        MEMORY[0x1D386CDC0](v103, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);

        v121(v123, v124);
      }

      else
      {

        v120(v78, v35);
        v53(v75, v124);
      }

      return swift_willThrow();
    }

    else
    {
      v105 = *(v77 + qword_1EC4EBCD0);
      if (v105)
      {
        v106 = *(v77 + qword_1EC4EBCD0 + 8);
        v107 = v105;
        sub_1CF1FD6B8(v105, v106);
        sub_1CF1FD6F8(v105, v106);
        aBlock[4] = sub_1CF1E8014;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CEFE7548;
        aBlock[3] = &block_descriptor_145;
        v108 = _Block_copy(aBlock);

        aBlock[0] = 0;
        v109 = [v107 fetchSwift:v108 error:aBlock];
        _Block_release(v108);
        v110 = aBlock[0];
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        v111 = v121;
        if (v109)
        {
          if (![v109 next])
          {
LABEL_18:

            v114 = v130;
            sub_1CF6C0474();

            return v114;
          }

          while (1)
          {
            v112 = objc_autoreleasePoolPush();
            v113 = v127;
            sub_1CF1EEC2C(v109, &v131, v111, &v130);
            v127 = v113;
            if (v113)
            {
              break;
            }

            objc_autoreleasePoolPop(v112);
            if (([v109 next] & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          objc_autoreleasePoolPop(v112);
        }

        else
        {
          v115 = sub_1CF9E57F8();

          v127 = v115;
          swift_willThrow();
        }
      }

      else
      {
        result = FPNotSupportedError();
        v127 = result;
        if (!result)
        {
          __break(1u);
          return result;
        }

        swift_willThrow();
      }

      sub_1CF6C0474();
    }
  }

  else
  {
    v54 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v55 = v126;
    (*(v126 + 16))(v7, a1, v3);
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E72C8();
    v58 = v3;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      v122 = v59;
      v123 = swift_slowAlloc();
      aBlock[0] = v123;
      *v59 = 136315138;
      v60 = sub_1CF9E5928();
      v61 = [v60 fp_shortDescription];

      v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v63;

      (*(v55 + 8))(v7, v58);
      v65 = sub_1CEFD0DF0(v62, v64, aBlock);
      v64, v66, v67, v68, v69, v70, v71, v72;
      v73 = v122;
      *(v122 + 4) = v65;
      _os_log_impl(&dword_1CEFC7000, v56, v57, "No file at %s, so no need to patch.", v73, 0xCu);
      v74 = v123;
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x1D386CDC0](v74, -1, -1);
      MEMORY[0x1D386CDC0](v73, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v7, v3);
    }

    (*(v125 + 8))(v16, v124);
    return 0;
  }
}

id FPFSSQLRestoreEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPFSSQLRestoreEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSSQLRestoreEngine(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1CF1EDE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v118 = v95 - v3;
  v4 = sub_1CF9E7388();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v108 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1CF9E7318();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v104 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v106 = v95 - v8;
  v105 = sub_1CF9E6448();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = v95 - v11;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v95 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v95 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v95 - v26;
  sub_1CF9E58B8();
  sub_1CF9E5958();
  v116 = v21;
  v114 = v27;
  sub_1CF9E5958();
  v117 = a1;
  sub_1CF9E5988();
  sub_1CF9E5988();
  v28 = *(v13 + 8);
  v28(v15, v12);
  v29 = sub_1CF9E58E8();
  v31 = v30;
  v113 = v18;
  v121 = v28;
  v122 = v13 + 8;
  v28(v18, v12);
  v32 = *(v13 + 16);
  v119 = v15;
  v115 = v24;
  v123 = v13 + 16;
  v32(v15, v24, v12);
  if (qword_1EC4BCD90 != -1)
  {
    swift_once();
  }

  v97 = qword_1EC4EBF30;
  v96 = *algn_1EC4EBF38;
  v99 = byte_1EC4EBF48;
  v98 = byte_1EC4EBF49;
  v100 = byte_1EC4EBF4A;
  type metadata accessor for DocumentWharf(0);
  v33 = swift_allocObject();
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v34 = v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v35 = MEMORY[0x1E69E7CC0];
  *v34 = 0;
  *(v34 + 8) = v35;
  *(v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  *(v33 + 16) = v29;
  *(v33 + 24) = v31;
  v36 = v29;
  v37 = v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  v124 = v33;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *v37 = 0u;
  *(v37 + 16) = 0u;

  v38 = qword_1EC4EBF40;
  swift_beginAccess();
  *(v37 + 12) = -1;
  v32((v33 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root), v119, v12);
  v95[2] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v125 = 0;
  v126 = 0xE000000000000000;

  sub_1CF9E7948();
  v126, v39, v40, v41, v42, v43, v44, v45;
  v125 = v36;
  v126 = v31;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v112 = v32;
  v95[1] = v125;
  v95[0] = v126;
  v46 = v101;
  sub_1CF9E63E8();
  v125 = MEMORY[0x1E69E7CC0];
  sub_1CF1FD858(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v120 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  v47 = v106;
  v48 = v109;
  sub_1CF9E77B8();
  v49 = v103;
  v50 = v105;
  (*(v103 + 16))(v102, v46, v105);
  v51 = v107;
  (*(v107 + 16))(v104, v47, v48);
  (*(v110 + 104))(v108, *MEMORY[0x1E69E8098], v111);
  v52 = sub_1CF9E73B8();
  (*(v51 + 8))(v47, v48);
  (*(v49 + 8))(v46, v50);
  v121(v119, v120);
  v53 = v124;
  *(v124 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v52;
  v54 = v53 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v55 = v96;
  *v54 = v97;
  *(v54 + 8) = v55;
  *(v54 + 16) = v38;
  *(v54 + 24) = v99;
  *(v54 + 25) = v98;
  *(v54 + 26) = v100;
  *(v53 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;
  v56 = objc_opt_self();

  v57 = [v56 defaultStore];
  v58 = [v57 softConcurrentOperationLimit];
  LODWORD(v49) = [v57 hardConcurrentOperationLimit];

  type metadata accessor for JobLimit();
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = v58;
  v59[4] = v58;
  v59[5] = v49;
  v60 = [v56 &selRef_info];
  v61 = [v60 softConcurrentContentUpdateLimit];
  LODWORD(v58) = [v60 hardConcurrentContentUpdateLimit];

  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = v61;
  v62[4] = v61;
  v62[5] = v58;
  v63 = [v56 &selRef_info];
  v64 = [v63 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v58) = [v63 hardConcurrentMetadataOnlyUpdateLimit];

  v65 = v58;
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = v64;
  v66[4] = v64;
  v66[5] = v65;
  v67 = [v56 &selRef_info];
  v68 = [v67 softConcurrentProvideFileLimit];
  LODWORD(v64) = [v67 hardConcurrentProvideFileLimit];

  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = v68;
  v69[4] = v68;
  v69[5] = v64;
  type metadata accessor for RestoreUpgradeSchemaVFSFileTree(0);
  v70 = swift_allocObject();
  *(v70 + 112) = 0;
  *(v70 + 144) = 0;
  *(v70 + 16) = 0u;
  *(v70 + 32) = 0u;
  *(v70 + 48) = 0u;
  *(v70 + 64) = 0u;
  *(v70 + 120) = 0;
  *(v70 + 128) = 0;
  (*(*v70 + 520))();
  *(v70 + 136) = v124;
  *(v70 + 80) = v59;
  *(v70 + 88) = v62;
  *(v70 + 96) = v66;
  *(v70 + 104) = v69;

  v71 = [v56 defaultStore];
  v72 = [v71 softConcurrentOperationLimit];
  LODWORD(v66) = [v71 hardConcurrentOperationLimit];

  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = v72;
  v73[4] = v72;
  v73[5] = v66;
  v74 = [v56 defaultStore];
  v75 = [v74 softConcurrentContentUpdateLimit];
  LODWORD(v66) = [v74 hardConcurrentContentUpdateLimit];

  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = v75;
  v76[4] = v75;
  v76[5] = v66;
  v77 = [v56 &selRef_info];
  v78 = [v77 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v66) = [v77 hardConcurrentMetadataOnlyUpdateLimit];

  v79 = v66;
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = v78;
  v80[4] = v78;
  v80[5] = v79;
  v81 = [v56 &selRef_info];
  v82 = [v81 softConcurrentProvideFileLimit];
  LODWORD(v78) = [v81 hardConcurrentProvideFileLimit];

  v83 = swift_allocObject();
  v83[2] = 0;
  v83[3] = v82;
  v83[4] = v82;
  v83[5] = v78;
  type metadata accessor for RestoreUpgradeSchemaFPFileTree(0);
  v84 = swift_allocObject();
  *(v84 + 112) = 0;
  *(v84 + 144) = 0;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 0u;
  *(v84 + 48) = 0u;
  *(v84 + 64) = 0u;
  *(v84 + 120) = 0;
  *(v84 + 128) = 0;
  (*(*v84 + 520))();
  *(v84 + 136) = v124;
  *(v84 + 80) = v73;
  *(v84 + 88) = v76;
  *(v84 + 96) = v80;
  *(v84 + 104) = v83;
  v85 = v113;
  v86 = v120;
  v112(v113, v117, v120);
  v87 = type metadata accessor for TelemetrySignposter(0);
  v88 = v118;
  (*(*(v87 - 8) + 56))(v118, 1, 1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v89 = swift_allocObject();
  v90 = sub_1CF3B2F94(v85, v70, v84, v88, 0, 0x65726F74736572, 0xE700000000000000, v89);

  v91 = v86;
  v92 = v86;
  v93 = v121;
  v121(v116, v92);
  v93(v115, v91);
  v93(v114, v91);
  return v90;
}

void sub_1CF1EEC2C(void *a1, void *a2, int a3, void *a4)
{
  v50 = a4;
  v7 = sub_1CF9E6118();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - v10;
  v11 = sub_1CF9E53C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v43 - v16;
  v18 = [a1 longAtIndex_];
  v19 = [a1 unsignedIntAtIndex_];
  v20 = v19;
  v49 = v7;
  v46 = v12;
  if (v19 >= 0x10000)
  {
    if (HIBYTE(v19))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    ResidencyReason.init(rawValue:)(BYTE2(v19));
    v21 = v54;
  }

  else
  {
    v21 = 6;
  }

  EvictionUrgency.init(rawValue:)(v20);
  v22 = [a1 unsignedLongAtIndex_];
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  ++*a2;
  MEMORY[0x1EEE9AC00](v22);
  *(&v43 - 12) = a3;
  *(&v43 - 5) = v18;
  *(&v43 - 32) = v23;
  *(&v43 - 3) = v24;
  *(&v43 - 16) = v21;
  v25 = v51;
  sub_1CEFE1894(sub_1CF1FD738);
  if (!v25)
  {
    return;
  }

  v52 = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    v28 = v45;
    v27 = v46;
    (*(v46 + 32))(v45, v17, v11);
    sub_1CF1FD858(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57A8();
    if (sub_1CF384284(v53, &unk_1F4BECAF0))
    {

      if (!__OFADD__(*v50, 1))
      {
        ++*v50;
        v29 = fpfs_current_or_default_log();
        v30 = v44;
        sub_1CF9E6128();
        v31 = sub_1CF9E6108();
        v32 = sub_1CF9E72A8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1CEFC7000, v31, v32, "failed patching purgency because it's a directory?", v33, 2u);
          MEMORY[0x1D386CDC0](v33, -1, -1);
        }

        (*(v48 + 8))(v30, v49);
        (*(v27 + 8))(v28, v11);

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    (*(v27 + 8))(v28, v11);
  }

  if (__OFADD__(*v50, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  ++*v50;
  v34 = fpfs_current_or_default_log();
  v35 = v47;
  sub_1CF9E6128();
  v36 = v25;
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E72A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v25;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "failed patching purgency with %@", v39, 0xCu);
    sub_1CF19CAB0(v40);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  (*(v48 + 8))(v35, v49);
  swift_willThrow();
}

void sub_1CF1EF1A4(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, _DWORD *a6@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF1FD764;
  *(v11 + 24) = v10;
  v14[4] = sub_1CF005DC8;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CF005DF8;
  v14[3] = &block_descriptor_154;
  v12 = _Block_copy(v14);

  v13 = fpfs_openbyid();
  _Block_release(v12);

  *a6 = v13;
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1CF1EF330(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    __break(1u);
  }

  else
  {
    a2 = qword_1CF9FE818[a2];
  }

  return MEMORY[0x1EEDC1450](a1, a2);
}

void sub_1CF1EF360()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v125 - v9;
  sub_1CF9E5988();
  sub_1CF9E5988();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_1CF7A4B00(v10, 0);
  v11(v10, v4);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 pathComponents];
    v15 = sub_1CF9E6D48();

    v16 = *v15->tree;
    v15, v17, v18, v19, v20, v21, v22, v23;
    v24 = v13;
    if (v16 > 1)
    {
      v24 = [v13 stringByDeletingLastPathComponent];
      if (!v24)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v26 = v25;
        v24 = sub_1CF9E6888();
        v26, v27, v28, v29, v30, v31, v32, v33;
      }
    }

    v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v36 = v35;

    v43 = 0x80000001CFA30030;
    if (v34 == 0xD00000000000002BLL && 0x80000001CFA30030 == v36)
    {
      goto LABEL_17;
    }

    v45 = sub_1CF9E8048();
    v36, v46, v47, v48, v49, v50, v51, v52;
    if ((v45 & 1) == 0)
    {
      v53 = v13;
      v54 = [v53 pathComponents];
      v55 = sub_1CF9E6D48();

      v56 = *v55->tree;
      v55, v57, v58, v59, v60, v61, v62, v63;
      v64 = v53;
      if (v56 >= 2)
      {
        v64 = [v53 stringByDeletingLastPathComponent];
        if (!v64)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v66 = v65;
          v64 = sub_1CF9E6888();
          v66, v67, v68, v69, v70, v71, v72, v73;
        }
      }

      v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v75;

      v43 = 0x80000001CFA30060;
      v38 = 0xD000000000000032;
      if (v74 == 0xD000000000000032 && 0x80000001CFA30060 == v36)
      {
LABEL_17:
        v36, v37, v38, v43, v39, v40, v41, v42;
        goto LABEL_18;
      }

      v117 = sub_1CF9E8048();
      v36, v118, v119, v120, v121, v122, v123, v124;
      if ((v117 & 1) == 0)
      {
LABEL_29:

        return;
      }
    }

LABEL_18:
    v76 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v53 = v13;
    v77 = sub_1CF9E6108();
    v78 = sub_1CF9E7298();

    if (os_log_type_enabled(v77, v78))
    {
      v126 = v1;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v127 = v80;
      *v79 = 136315138;
      v81 = v53;
      v82 = [v81 pathComponents];
      v83 = sub_1CF9E6D48();

      v84 = *v83->tree;
      v83, v85, v86, v87, v88, v89, v90, v91;
      if (v84 >= 2)
      {
        v92 = [v81 stringByDeletingLastPathComponent];
        if (!v92)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v94 = v93;
          v92 = sub_1CF9E6888();
          v94, v95, v96, v97, v98, v99, v100, v101;
        }

        v81 = v92;
      }

      v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v104 = v103;

      v105 = sub_1CEFD0DF0(v102, v104, &v127);
      v104, v106, v107, v108, v109, v110, v111, v112;
      *(v79 + 4) = v105;
      _os_log_impl(&dword_1CEFC7000, v77, v78, "Importing domain in provider %s. Turning on iCloud Drive on FPFS.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1D386CDC0](v80, -1, -1);
      MEMORY[0x1D386CDC0](v79, -1, -1);

      (*(v126 + 8))(v3, v0);
    }

    else
    {

      (*(v1 + 8))(v3, v0);
    }

    v113 = [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
    if (v113)
    {
      v114 = v113;
      v115 = *MEMORY[0x1E69670E8];
      if (([v113 BOOLForKey_] & 1) == 0)
      {
        [v114 setInteger:0 forKey:*MEMORY[0x1E69670F0]];
        v116 = v115;
        [v114 setBool:1 forKey:v116];
      }
    }

    goto LABEL_29;
  }
}

void sub_1CF1EF95C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v73 - v14;
  sub_1CF9E5988();
  sub_1CF9E5988();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v18 = sub_1CF7A4B00(v15, 0);
  v16(v15, v9);
  if (v18)
  {
    v19 = v18;
    v20 = [v19 pathComponents];
    v21 = sub_1CF9E6D48();

    v22 = *v21->tree;
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = v19;
    if (v22 > 1)
    {
      v30 = [v19 stringByDeletingLastPathComponent];
      if (!v30)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v32 = v31;
        v30 = sub_1CF9E6888();
        v32, v33, v34, v35, v36, v37, v38, v39;
      }
    }

    v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v42 = v41;

    strcpy(v73, "d2d_restore_");
    BYTE5(v73[1]) = 0;
    HIWORD(v73[1]) = -5120;
    MEMORY[0x1D3868CC0](v40, v42);
    v42, v43, v44, v45, v46, v47, v48, v49;
    v50 = v73[1];
    v17 = sub_1CF9E6888();
    v50, v51, v52, v53, v54, v55, v56, v57;
  }

  else
  {
    v17 = sub_1CF9E6888();
  }

  v58 = objc_opt_self();
  v59 = v17;
  v60 = [v58 defaultManager];
  v61 = [v60 sessionForProviderID:v59 version:0];

  if (v61)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA440;
    strcpy(v73, "operationType");
    HIWORD(v73[1]) = -4864;
    v63 = MEMORY[0x1E69E6158];
    sub_1CF9E7898();
    *(inited + 96) = v63;
    *(inited + 72) = a4;
    *(inited + 80) = a5;
    strcpy(v73, "missedItems");
    HIDWORD(v73[1]) = -352321536;

    sub_1CF9E7898();
    *(inited + 168) = MEMORY[0x1E69E6530];
    *(inited + 144) = a3;
    v64 = sub_1CF4E0E00(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
    swift_arrayDestroy();
    v65 = sub_1CF9E6618();
    v64, v66, v67, v68, v69, v70, v71, v72;
    if (a2)
    {
      a2 = sub_1CF9E57E8();
    }

    [v61 postReportWithCategory:1 type:1 payload:v65 error:a2];
  }
}