Swift::Int sub_22E70E408(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2CF8();
  return Hasher._finalize()();
}

uint64_t sub_22E70E498(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70E520(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E70E520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetUploadRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E70E568()
{
  result = qword_27DA6D4C0;
  if (!qword_27DA6D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E70E6C4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E70E774()
{
  result = qword_27DA6D4C8;
  if (!qword_27DA6D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4C8);
  }

  return result;
}

unint64_t sub_22E70E7CC()
{
  result = qword_27DA6D4D0;
  if (!qword_27DA6D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4D0);
  }

  return result;
}

unint64_t sub_22E70E824()
{
  result = qword_27DA6D4D8;
  if (!qword_27DA6D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4D8);
  }

  return result;
}

unint64_t sub_22E70E87C()
{
  result = qword_27DA6D4E0;
  if (!qword_27DA6D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4E0);
  }

  return result;
}

unint64_t sub_22E70E8D4()
{
  result = qword_27DA6D4E8;
  if (!qword_27DA6D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4E8);
  }

  return result;
}

unint64_t sub_22E70E92C()
{
  result = qword_27DA6D4F0;
  if (!qword_27DA6D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4F0);
  }

  return result;
}

unint64_t sub_22E70E984()
{
  result = qword_27DA6D4F8;
  if (!qword_27DA6D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4F8);
  }

  return result;
}

unint64_t sub_22E70E9DC()
{
  result = qword_27DA6D500;
  if (!qword_27DA6D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D500);
  }

  return result;
}

unint64_t sub_22E70EA34()
{
  result = qword_27DA6D508;
  if (!qword_27DA6D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D508);
  }

  return result;
}

void static TestConfigurations.testConfigurations()(_BYTE *a1@<X8>)
{
  if (qword_27DA6C468 != -1)
  {
    sub_22E70EF70(&qword_27DA6C468);
  }

  v2 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  *a1 = *(v2 + 16);

  os_unfair_lock_unlock(v2 + 5);
}

BOOL static TestConfigurations.isSystemInstalledBinary()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_22E70EC04(0xD000000000000011, 0x800000022E72D420, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 == 0;
}

uint64_t sub_22E70EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22E714B14(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_22E70EC5C()
{
  sub_22E6CF1CC(&qword_27DA6D520, &unk_22E72AB00);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_27DA6D510 = result;
  return result;
}

void sub_22E70ECB8(char a1)
{
  if (qword_27DA6C468 != -1)
  {
    sub_22E70EF70(&qword_27DA6C468);
  }

  v2 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  *(v2 + 16) = a1;

  os_unfair_lock_unlock(v2 + 5);
}

Swift::Int TestConfigurations.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  return Hasher._finalize()();
}

unint64_t sub_22E70EDB8()
{
  result = qword_27DA6D518;
  if (!qword_27DA6D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestConfigurations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TestConfigurations(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22E70EF70(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22E70EF90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022E72D440 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746C75736572 && a2 == 0xEE00646576696563;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526C616E676973 && a2 == 0xEE00646576696563)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22E70F0C0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6552746C75736572;
  }

  return 0x65526C616E676973;
}

uint64_t sub_22E70F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70EF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E70F154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E70F0B8();
  *a1 = result;
  return result;
}

uint64_t sub_22E70F17C(uint64_t a1)
{
  v2 = sub_22E70F8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F1B8(uint64_t a1)
{
  v2 = sub_22E70F8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F1F4(uint64_t a1)
{
  v2 = sub_22E70F9D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F230(uint64_t a1)
{
  v2 = sub_22E70F9D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F26C(uint64_t a1)
{
  v2 = sub_22E70F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F2A8(uint64_t a1)
{
  v2 = sub_22E70F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F2E4(uint64_t a1)
{
  v2 = sub_22E70FA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F320(uint64_t a1)
{
  v2 = sub_22E70FA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetUploadEvent.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6D528, &qword_22E72AB10);
  sub_22E6CF988();
  v44 = v3;
  v45 = v2;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  sub_22E6EB4DC();
  v43 = v5;
  sub_22E6CF1CC(&qword_27DA6D530, &unk_22E72AB18);
  sub_22E6CF988();
  v41 = v7;
  v42 = v6;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  sub_22E6EB4DC();
  v40 = v9;
  v39 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6CF978();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  sub_22E6CF1CC(&qword_27DA6D538, &qword_22E72AB28);
  sub_22E6CF988();
  v37 = v14;
  v38 = v13;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  type metadata accessor for AssetUploadEvent(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v18);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_22E6CF1CC(&qword_27DA6D540, &unk_22E72AB30);
  sub_22E6CF988();
  v22 = v21;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = a1[3];
  sub_22E6CF214(a1, v26);
  sub_22E70F8CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E70F920(v46, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22E70AF4C(v20, v12);
      LOBYTE(v48) = 1;
      sub_22E70F9D8();
      v28 = v40;
      sub_22E710B00(&type metadata for AssetUploadEvent.ResultReceivedCodingKeys, &v48);
      sub_22E70CAA8(&qword_27DA6D328, &protocol conformance descriptor for XPCResult<A>);
      v29 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v41 + 8))(v28, v29);
      sub_22E70FA2C(v12);
      return (*(v22 + 8))(v25, v26);
    }

    v33 = *v20;
    LOBYTE(v48) = 2;
    sub_22E70F984();
    v34 = v43;
    v35 = v47;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v33;
    sub_22E70BC10();
    v36 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v34, v36);
    (*(v22 + 8))(v25, v35);
  }

  else
  {
    v31 = *v20;
    LOBYTE(v48) = 0;
    sub_22E70FA94();
    sub_22E710B00(&type metadata for AssetUploadEvent.SkeletonsReceivedCodingKeys, &v48);
    v48 = v31;
    sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E7103C0(&qword_27DA6D338, &qword_27DA6D340, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83948]);
    v32 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v37 + 8))(v17, v32);
    (*(v22 + 8))(v25, v26);
  }
}

uint64_t type metadata accessor for AssetUploadEvent(uint64_t a1)
{
  result = qword_27DA6D588;
  if (!qword_27DA6D588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E70F8CC()
{
  result = qword_27DA6D548;
  if (!qword_27DA6D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D548);
  }

  return result;
}

uint64_t sub_22E70F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22E70F984()
{
  result = qword_27DA6D550;
  if (!qword_27DA6D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D550);
  }

  return result;
}

unint64_t sub_22E70F9D8()
{
  result = qword_27DA6D558;
  if (!qword_27DA6D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D558);
  }

  return result;
}

uint64_t sub_22E70FA2C(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22E70FA94()
{
  result = qword_27DA6D560;
  if (!qword_27DA6D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D560);
  }

  return result;
}

uint64_t AssetUploadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v84 = sub_22E6CF1CC(&qword_27DA6D568, &qword_22E72AB40);
  sub_22E6CF988();
  v81 = v3;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  sub_22E6EB4DC();
  v79 = v5;
  sub_22E6CF1CC(&qword_27DA6D570, &qword_22E72AB48);
  sub_22E6CF988();
  v75 = v7;
  v76 = v6;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  sub_22E6EB4DC();
  v78 = v9;
  sub_22E6CF1CC(&qword_27DA6D578, &qword_22E72AB50);
  sub_22E6CF988();
  v73 = v11;
  v74 = v10;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  sub_22E6EB4DC();
  v77 = v13;
  sub_22E6CF1CC(&qword_27DA6D580, &unk_22E72AB58);
  sub_22E6CF988();
  v82 = v15;
  v83 = v14;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = type metadata accessor for AssetUploadEvent(0);
  sub_22E6CF978();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v69 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  v32 = a1[3];
  v85 = a1;
  sub_22E6CF214(a1, v32);
  sub_22E70F8CC();
  v33 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    goto LABEL_10;
  }

  v69 = v23;
  v70 = v29;
  v71 = v31;
  v72 = v26;
  v35 = v83;
  v34 = v84;
  v86 = v19;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v38 == v39 >> 1)
  {
LABEL_9:
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v54 = v86;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v18, v35);
LABEL_10:
    v55 = v85;
    return sub_22E6CF2F4(v55);
  }

  if (v38 < (v39 >> 1))
  {
    v40 = v18;
    v41 = *(v37 + v38);
    sub_22E6F3764();
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    v46 = v43 == v45 >> 1;
    v47 = v81;
    if (v46)
    {
      v48 = v35;
      v49 = v40;
      if (v41)
      {
        v50 = v80;
        if (v41 == 1)
        {
          LOBYTE(v87) = 1;
          sub_22E70F9D8();
          v51 = v78;
          sub_22E710B40(&type metadata for AssetUploadEvent.ResultReceivedCodingKeys, &v87);
          sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
          sub_22E70CAA8(&qword_27DA6D380, &protocol conformance descriptor for XPCResult<A>);
          v58 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v61 = sub_22E710B78();
          v62(v61);
          v63 = sub_22E710AEC();
          v64(v63);
          swift_storeEnumTagMultiPayload();
          sub_22E710B24();
          v65 = v85;
        }

        else
        {
          LOBYTE(v87) = 2;
          sub_22E70F984();
          v56 = v79;
          v57 = v48;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_22E70CA54();
          v58 = v56;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v60 = v82;
          swift_unknownObjectRelease();
          (*(v47 + 8))(v56, v34);
          (*(v60 + 8))(v49, v57);
          *v69 = v87;
          swift_storeEnumTagMultiPayload();
          sub_22E710B24();
          v65 = v85;
          v50 = v80;
        }
      }

      else
      {
        LOBYTE(v87) = 0;
        sub_22E70FA94();
        sub_22E710B40(&type metadata for AssetUploadEvent.SkeletonsReceivedCodingKeys, &v87);
        v50 = v80;
        sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
        sub_22E7103C0(&qword_27DA6D388, &qword_27DA6D390, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83978]);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v59 = v82;
        swift_unknownObjectRelease();
        v66 = sub_22E710B64();
        v67(v66);
        v68 = *(v59 + 8);
        v58 = v59 + 8;
        v68(v49, v47);
        *v70 = v87;
        swift_storeEnumTagMultiPayload();
        sub_22E710B24();
        v65 = v85;
      }

      sub_22E71035C(v58, v50);
      v55 = v65;
      return sub_22E6CF2F4(v55);
    }

    v18 = v40;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22E71035C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7103C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E7104D8(a2, type metadata accessor for AssetSkeleton, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E71045C(uint64_t a1)
{
  sub_22E70CC74(319);
  if (v1 <= 0x3F)
  {
    sub_22E70CCCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22E7104D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for AssetUploadEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E71061C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E7106CC()
{
  result = qword_27DA6D598;
  if (!qword_27DA6D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D598);
  }

  return result;
}

unint64_t sub_22E710724()
{
  result = qword_27DA6D5A0;
  if (!qword_27DA6D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5A0);
  }

  return result;
}

unint64_t sub_22E71077C()
{
  result = qword_27DA6D5A8;
  if (!qword_27DA6D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5A8);
  }

  return result;
}

unint64_t sub_22E7107D4()
{
  result = qword_27DA6D5B0;
  if (!qword_27DA6D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5B0);
  }

  return result;
}

unint64_t sub_22E71082C()
{
  result = qword_27DA6D5B8;
  if (!qword_27DA6D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5B8);
  }

  return result;
}

unint64_t sub_22E710884()
{
  result = qword_27DA6D5C0;
  if (!qword_27DA6D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5C0);
  }

  return result;
}

unint64_t sub_22E7108DC()
{
  result = qword_27DA6D5C8;
  if (!qword_27DA6D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5C8);
  }

  return result;
}

unint64_t sub_22E710934()
{
  result = qword_27DA6D5D0;
  if (!qword_27DA6D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5D0);
  }

  return result;
}

unint64_t sub_22E71098C()
{
  result = qword_27DA6D5D8;
  if (!qword_27DA6D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5D8);
  }

  return result;
}

unint64_t sub_22E7109E4()
{
  result = qword_27DA6D5E0;
  if (!qword_27DA6D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5E0);
  }

  return result;
}

unint64_t sub_22E710A3C()
{
  result = qword_27DA6D5E8;
  if (!qword_27DA6D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5E8);
  }

  return result;
}

unint64_t sub_22E710A94()
{
  result = qword_27DA6D5F0;
  if (!qword_27DA6D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5F0);
  }

  return result;
}

uint64_t sub_22E710B00(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E710B24()
{
  v3 = *(v1 - 208);

  return sub_22E71035C(v0, v3);
}

uint64_t sub_22E710B40(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E710B8C@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v4 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t XPCMessageSender.__allocating_init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCMessageSender.init(machServiceName:)(a1, a2);
  return v4;
}

void sub_22E710C88()
{
  sub_22E6EB570();
  v1 = v0;
  v31 = v2;
  v32 = v3;
  v29 = v5;
  v30 = v4;
  v6 = v2;
  v7 = type metadata accessor for UUID();
  v28 = v7;
  sub_22E6F797C();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v14 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6CF988();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  (*(v16 + 16))(&v27 - v20, v30, v14);
  (*(v9 + 16))(v13, v6, v7);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v9 + 80) + v23 + 8) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v29;
  *(v25 + 24) = v26;
  (*(v16 + 32))(v25 + v22, v21, v14);
  *(v25 + v23) = v1;
  (*(v9 + 32))(v25 + v24, v13, v28);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v1 + 112);
  sub_22E7152B0();
  *(v1 + 112) = v33;
  swift_endAccess();
  sub_22E6EB538();
}

uint64_t sub_22E710F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v9 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v13 = v12[1];
  if (v13 >> 60 == 11)
  {
    sub_22E708D90();
    v14 = swift_allocError();
    *v15 = 1;
    v23 = v14;
    goto LABEL_5;
  }

  if (v13 >> 60 == 15)
  {
    v23 = 0;
LABEL_5:
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v16 = sub_22E715168(a4);
    v18 = v17;
    swift_endAccess();
    return sub_22E708DE4(v16, v18);
  }

  v21[1] = a4;
  v21[2] = a2;
  v20 = *v12;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_22E6CFB64(v20, v13);
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v20, v13);
  return (*(v22 + 8))(v11, v9);
}

uint64_t sub_22E71123C(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = sub_22E714B78(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 16 * v5);

      v7(a1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22E7112E0()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D5F8);
  sub_22E6E3578(v0, qword_27DA6D5F8);
  type metadata accessor for XPCMessageSender();
  sub_22E6CF1CC(&qword_27DA6D630, &qword_22E72B168);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t XPCMessageSender.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for XPCMessageSender.AsyncSequenceDispatcher();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for UUID();
  sub_22E6CF1CC(&qword_27DA6D610, &unk_22E72B070);
  sub_22E715BDC();
  sub_22E7156BC(v7, v8, MEMORY[0x277CC9600]);
  sub_22E715DE8();
  *(v6 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 56) = v6;
  v9 = type metadata accessor for XPCSessionCacheImplementation();
  swift_allocObject();
  swift_retain_n();
  v10 = sub_22E71A524(a1, a2, sub_22E711690, v6);
  v13 = v9;
  v14 = &off_284339F10;

  *&v12 = v10;
  sub_22E7069EC(&v12, v3 + 16);
  return v3;
}

double sub_22E7114F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCAsyncSequenceResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v11, 1, 1, v12);
  sub_22E715A34(a1, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  sub_22E715A98(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  sub_22E6E1B80(0, 0, v11, &unk_22E72B1A0, v14);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_22E711698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22E7116B8, a4, 0);
}

uint64_t sub_22E7116B8()
{
  sub_22E6E3BDC();
  sub_22E71123C(*(v0 + 24));
  sub_22E6E3AD8();

  return v1();
}

uint64_t XPCMessageSender.deinit()
{
  v1 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v2 = sub_22E6D376C(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v4, 1, 1, v5);
  sub_22E6E3808(v0 + 16, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_22E7069EC(v9, v6 + 32);
  sub_22E6E1B80(0, 0, v4, &unk_22E72B088, v6);

  sub_22E6CF2F4((v0 + 16));

  return v0;
}

uint64_t sub_22E711834()
{
  sub_22E6E3BDC();
  *(v0 + 24) = sub_22E6CF214(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E71189C()
{
  sub_22E6E3BDC();
  sub_22E71AB10();
  sub_22E6E3AD8();

  return v0();
}

uint64_t XPCMessageSender.__deallocating_deinit()
{
  XPCMessageSender.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t XPCMessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  return MEMORY[0x2822009F8](sub_22E711980, 0, 0);
}

uint64_t sub_22E711980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E6E3D08();
  v18 = *(v16 + 64);
  v17 = *(v16 + 72);
  v19 = *(v16 + 24);
  v20 = swift_task_alloc();
  *(v16 + 80) = v20;
  v21 = *(v16 + 48);
  *(v20 + 16) = *(v16 + 32);
  *(v20 + 32) = v21;
  *(v20 + 48) = v18;
  *(v20 + 56) = v19;
  *(v20 + 64) = v17;
  v22 = swift_task_alloc();
  *(v16 + 88) = v22;
  *v22 = v16;
  v22[1] = sub_22E711A7C;
  v23 = *(v16 + 40);
  v24 = *(v16 + 16);

  return MEMORY[0x2822008A0](v24, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_22E714928, v20, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E711A7C()
{
  sub_22E6E3BDC();
  v5 = *v1;
  sub_22E6E3C94();
  *v2 = v5;
  *(v5 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22E711BA8, 0, 0);
  }

  else
  {

    sub_22E6E3AD8();

    return v3();
  }
}

uint64_t sub_22E711BA8()
{
  sub_22E6E3BDC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E711C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a7;
  v36 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v10 = type metadata accessor for CheckedContinuation();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v30 = &v29 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v29 - v20;
  v22 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v21, 1, 1, v22);
  (*(v16 + 16))(v18, v31, a5);
  (*(v11 + 16))(v15, v32, v10);
  v23 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v24 = (v17 + v23 + *(v11 + 80)) & ~*(v11 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  v27 = v34;
  *(v26 + 6) = v35;
  *(v26 + 7) = v27;
  *(v26 + 8) = v33;
  (*(v16 + 32))(&v26[v23], v18, a5);
  (*(v11 + 32))(&v26[v24], v30, v29);
  *&v26[v25] = v36;

  sub_22E6E1B80(0, 0, v21, &unk_22E72B178, v26);
}

uint64_t sub_22E711EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v14;
  v8[20] = v15;
  v8[17] = a8;
  v8[18] = v13;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v9 = type metadata accessor for CheckedContinuation();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v8[23] = *(v10 + 64);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E711FE8, 0, 0);
}

uint64_t sub_22E711FE8()
{
  sub_22E6E3BDC();
  sub_22E6E3808(v0[13] + 16, (v0 + 2));
  v0[25] = sub_22E6CF214(v0 + 2, v0[5]);
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E712060()
{
  sub_22E6E3D08();
  *(v0 + 208) = sub_22E71A648();
  *(v0 + 216) = 0;

  return MEMORY[0x2822009F8](sub_22E7120EC, 0, 0);
}

uint64_t sub_22E7120EC()
{
  v24 = *(v0 + 216);
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v21 = *(v0 + 168);
  v22 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v23 = *(v0 + 128);
  (*(v2 + 16))();
  sub_22E6E3808(v0 + 16, v0 + 56);
  v7 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 2) = v6;
  *(v9 + 3) = v5;
  *(v9 + 4) = v4;
  *(v9 + 5) = v3;
  (*(v2 + 32))(&v9[v7], v22, v21);
  sub_22E7069EC((v0 + 56), &v9[v8]);
  *&v9[(v8 + 47) & 0xFFFFFFFFFFFFFFF8] = v23;
  dispatch thunk of XPCSession.send<A, B>(_:replyHandler:)();
  if (v24)
  {

    sub_22E6CF2F4((v0 + 16));
    *(v0 + 96) = v24;
    v10 = v24;
    CheckedContinuation.resume(throwing:)();
    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C(&qword_27DA6C470);
    }

    v11 = type metadata accessor for Logger();
    sub_22E6E3578(v11, qword_27DA6D5F8);
    v12 = v24;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = sub_22E70A098();
      *v15 = 138412290;
      v17 = v24;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_22E6C9000, v13, v14, "received %@ in sending message", v15, 0xCu);
      sub_22E6D3510(v16, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CC8();
      sub_22E7099AC();
    }

    else
    {
    }
  }

  else
  {

    sub_22E6CF2F4((v0 + 16));
  }

  sub_22E6E3AD8();

  return v19();
}

uint64_t sub_22E7123AC()
{
  v1 = v0[27];
  sub_22E6CF2F4(v0 + 2);
  v0[12] = v1;
  v2 = v1;
  CheckedContinuation.resume(throwing:)();
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C(&qword_27DA6C470);
  }

  v3 = type metadata accessor for Logger();
  sub_22E6E3578(v3, qword_27DA6D5F8);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = sub_22E70A098();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22E6C9000, v5, v6, "received %@ in sending message", v7, 0xCu);
    sub_22E6D3510(v8, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {
  }

  sub_22E6E3AD8();

  return v11();
}

uint64_t sub_22E71254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a3;
  v66 = a2;
  v8 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56 - v9;
  v10 = sub_22E6CF1CC(&qword_27DA6D638, &qword_22E72B180);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for XPCRichError();
  v62 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v56 - v17;
  v18 = *(a6 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v24 = type metadata accessor for Result();
  MEMORY[0x28223BE20](v24);
  v26 = (&v56 - v25);
  (*(v27 + 16))(&v56 - v25, a1, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v67[0] = *v26;
    v28 = *&v67[0];
    v29 = *&v67[0];
    if (swift_dynamicCast())
    {
      sub_22E6CF58C(v12, 0, 1, v13);
      v30 = v62;
      v31 = v65;
      (*(v62 + 32))(v65, v12, v13);
      if (qword_27DA6C470 != -1)
      {
        swift_once();
      }

      v60 = v28;
      v32 = type metadata accessor for Logger();
      sub_22E6E3578(v32, qword_27DA6D5F8);
      v33 = *(v30 + 16);
      v34 = v61;
      v33(v61, v31, v13);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      v37 = os_log_type_enabled(v35, v36);
      v59 = v33;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v38 = 138412290;
        sub_22E7156BC(&qword_27DA6D248, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
        swift_allocError();
        v58 = a6;
        v33(v39, v34, v13);
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v34;
        v42 = *(v30 + 8);
        v42(v41, v13);
        *(v38 + 4) = v40;
        v43 = v57;
        *v57 = v40;
        _os_log_impl(&dword_22E6C9000, v35, v36, "received xpc error %@ from xpc session", v38, 0xCu);
        sub_22E6D3510(v43, &qword_27DA6CA08, &qword_22E727840);
        MEMORY[0x2318ED210](v43, -1, -1);
        MEMORY[0x2318ED210](v38, -1, -1);
      }

      else
      {

        v49 = v34;
        v42 = *(v30 + 8);
        v42(v49, v13);
      }

      v50 = type metadata accessor for TaskPriority();
      v51 = v64;
      sub_22E6CF58C(v64, 1, 1, v50);
      sub_22E6E3808(v63, v67);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      sub_22E7069EC(v67, v52 + 32);
      sub_22E6FA5EC(0, 0, v51, &unk_22E72B190, v52);

      sub_22E7156BC(&qword_27DA6D248, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
      v53 = swift_allocError();
      v54 = v65;
      v59(v55, v65, v13);
      *&v67[0] = v53;
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(throwing:)();

      return (v42)(v54, v13);
    }

    else
    {
      sub_22E6CF58C(v12, 1, 1, v13);
      sub_22E6D3510(v12, &qword_27DA6D638, &qword_22E72B180);
      if (qword_27DA6C470 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_22E6E3578(v45, qword_27DA6D5F8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_22E6C9000, v46, v47, "error received from xpc session is not XPC error type.", v48, 2u);
        MEMORY[0x2318ED210](v48, -1, -1);
      }

      *&v67[0] = v28;
      type metadata accessor for CheckedContinuation();
      return CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    (*(v18 + 32))(v23, v26, a6);
    (*(v18 + 16))(v21, v23, a6);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    return (*(v18 + 8))(v23, a6);
  }
}

uint64_t sub_22E712D88()
{
  sub_22E6E3BDC();
  *(v0 + 24) = sub_22E6CF214(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E712DF0()
{
  sub_22E6E3BDC();
  sub_22E71A578();
  sub_22E709850();

  return v0();
}

uint64_t XPCMessageSender.send<A, B>(_:)()
{
  sub_22E6E3D08();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *v0;
  v8 = *(v6 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = swift_task_alloc();
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v9);
  v1[13] = swift_task_alloc();
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DB4();
  v10 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v1[14] = v10;
  sub_22E6E3A38(v10);
  v1[15] = v11;
  v1[16] = swift_task_alloc();
  sub_22E715DB4();
  v12 = type metadata accessor for AsyncThrowingStream.Continuation();
  v1[17] = v12;
  sub_22E6E3A38(v12);
  v1[18] = v13;
  v1[19] = *(v14 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v15 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22E713048()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v20 = *(v0 + 152);
  v26 = *(v0 + 96);
  v7 = *(v0 + 80);
  v19 = *(v0 + 88);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v22 = *(v0 + 56);
  v25 = *(v0 + 32);
  v21 = *(v0 + 40);
  v16 = *(v0 + 24);
  sub_22E710B8C(v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v3, v5);
  v8 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v6, 1, 1, v8);
  (*(v2 + 16))(v18, v1, v17);
  v9 = v7;
  (*(v7 + 16))(v26, v16, v25);
  v10 = v2;
  v11 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v12 = (v20 + *(v9 + 80) + v11) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v25;
  *(v13 + 40) = v21;
  *(v13 + 56) = v22;
  *(v13 + 64) = v23;
  (*(v10 + 32))(v13 + v11, v18, v17);
  (*(v9 + 32))(v13 + v12, v26, v25);
  *(v13 + ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;

  sub_22E6FA5EC(0, 0, v6, &unk_22E72B0B0, v13);

  (*(v10 + 8))(v1, v17);

  sub_22E709850();

  return v14();
}

uint64_t sub_22E7132E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v14;
  *(v8 + 72) = v13;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for XPCRichError();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = type metadata accessor for XPCAsyncSequenceRequest(0);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E71348C, 0, 0);
}

uint64_t sub_22E71348C()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 40);
  UUID.init()();
  *(v0 + 208) = *(v1 + 56);
  v2 = sub_22E709E18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E7134F4()
{
  sub_22E6E3BDC();
  sub_22E710C88();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E71355C()
{
  sub_22E6E3BDC();
  *(v0 + 216) = sub_22E715D24();
  v1 = sub_22E709E18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E7135BC()
{
  sub_22E6E3D08();
  *(v0 + 224) = sub_22E71A648();
  *(v0 + 232) = 0;

  return MEMORY[0x2822009F8](sub_22E713648, 0, 0);
}

uint64_t sub_22E713648()
{
  v120 = v0;
  v1 = *(v0 + 232);
  (*(*(v0 + 160) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 152));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v1;
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);

    sub_22E715DE8();
    v9();
    v10 = (v7 + *(v8 + 20));
    *v10 = v5;
    v10[1] = v6;
    sub_22E7156BC(&qword_27DA6D258, type metadata accessor for XPCAsyncSequenceRequest, &protocol conformance descriptor for XPCAsyncSequenceRequest);
    dispatch thunk of XPCSession.send<A>(_:)();
    v100 = *(v0 + 200);
    v101 = *(v0 + 152);
    v102 = *(v0 + 160);
    v103 = *(v0 + 144);

    sub_22E6D5F38(v103);
    (*(v102 + 8))(v100, v101);
    goto LABEL_21;
  }

  (*(*(v0 + 160) + 8))(*(v0 + 192), *(v0 + 152));

  *(v0 + 16) = v1;
  v11 = v1;
  *(v0 + 240) = sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if (!swift_dynamicCast())
  {

    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C(&qword_27DA6C470);
    }

    v55 = *(v0 + 200);
    v56 = *(v0 + 160);
    v57 = *(v0 + 168);
    v58 = *(v0 + 152);
    v59 = type metadata accessor for Logger();
    sub_22E6E3578(v59, qword_27DA6D5F8);
    (*(v56 + 16))(v57, v55, v58);
    v60 = v4;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = sub_22E709F90();
      v113 = sub_22E70A098();
      v115 = sub_22E709F3C();
      v119[0] = v115;
      *v63 = 136315394;
      sub_22E715BDC();
      sub_22E7156BC(v64, v65, MEMORY[0x277CC9628]);
      v110 = v62;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v4;
      v68 = v67;
      v69 = sub_22E715CC0();
      (v61)(v69);
      v70 = sub_22E706BF8(v66, v68, v119);
      v4 = v118;

      *(v63 + 4) = v70;
      *(v63 + 12) = 2112;
      v71 = v118;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v72;
      *v113 = v72;
      _os_log_impl(&dword_22E6C9000, v61, v110, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v63, 0x16u);
      sub_22E6D3510(v113, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E6CF2F4(v115);
      sub_22E6E3CE4();
      sub_22E6E3CC8();
    }

    else
    {

      v92 = sub_22E715CC0();
      (v61)(v92);
    }

    v93 = *(v0 + 200);
    v94 = *(v0 + 152);
    *(v0 + 24) = v4;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (v61)(v93, v94);
LABEL_21:
    sub_22E715C68();

    sub_22E709850();
    sub_22E709A8C();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);

  (*(v14 + 32))(v12, v13, v15);
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C(&qword_27DA6C470);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = type metadata accessor for Logger();
  *(v0 + 248) = sub_22E6E3578(v24, qword_27DA6D5F8);
  v25 = *(v19 + 16);
  *(v0 + 256) = v25;
  *(v0 + 264) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v17, v16, v18);
  v26 = *(v23 + 16);
  *(v0 + 272) = v26;
  *(v0 + 280) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v21, v20, v22);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 184);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  v33 = *(v0 + 104);
  v34 = *(v0 + 112);
  v117 = *(v0 + 96);
  if (v29)
  {
    v112 = v27;
    v35 = sub_22E709F90();
    v111 = sub_22E70A098();
    v114 = sub_22E709F3C();
    v119[0] = v114;
    *v35 = 136315394;
    sub_22E715BDC();
    sub_22E7156BC(v36, v37, MEMORY[0x277CC9628]);
    LODWORD(v109) = v28;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = v34;
    v34 = v39;
    v40 = v32;
    v41 = *(v31 + 8);
    v41(v30, v40);
    v42 = sub_22E706BF8(v38, v34, v119);

    *(v35 + 4) = v42;
    *(v35 + 12) = 2112;
    sub_22E715BF4();
    sub_22E7156BC(v43, v44, MEMORY[0x277D855F0]);
    v45 = swift_allocError();
    v47 = sub_22E715DD4(v45, v46);
    (v26)(v47);
    v48 = _swift_stdlib_bridgeErrorToNSError();
    v49 = *(v33 + 8);
    v49(v38, v117);
    *(v35 + 14) = v48;
    *v111 = v48;
    sub_22E715D78();
    _os_log_impl(v50, v51, v52, v53, v35, 0x16u);
    sub_22E6D3510(v111, &qword_27DA6CA08, &qword_22E727840);
    sub_22E7099AC();
    sub_22E6CF2F4(v114);
    sub_22E7099AC();
    v54 = v41;
    sub_22E6E3CE4();
  }

  else
  {

    v49 = *(v33 + 8);
    v49(v34, v117);
    v54 = *(v31 + 8);
    v54(v30, v32);
  }

  *(v0 + 288) = v49;
  *(v0 + 296) = v54;
  if (XPCRichError.canRetry.getter())
  {
    v116 = *(v0 + 288);
    v73 = *(v0 + 272);
    sub_22E715D64();
    v74 = *(v0 + 120);
    v75 = *(v0 + 96);
    sub_22E715BF4();
    v78 = sub_22E7156BC(v76, v77, MEMORY[0x277D855F0]);
    v79 = sub_22E715D08(v78, v78);
    v81 = sub_22E715D8C(v79, v80);
    v73(v81);
    *(v0 + 32) = v34;
    sub_22E715DE8();
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v82 = v116(v74, v75);
    v90 = sub_22E715DF4(v82, v83, v84, v85, v86, v87, v88, v89, v107, v108, v109, v111, v112);
    v91(v90);

    goto LABEL_21;
  }

  v95 = sub_22E715D24();
  sub_22E715C48(v95);
  sub_22E709A8C();

  return MEMORY[0x2822009F8](v96, v97, v98);
}

uint64_t sub_22E713E80()
{
  v106 = v0;
  v1 = *(v0 + 232);
  *(v0 + 16) = v1;
  v2 = v1;
  *(v0 + 240) = sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C(&qword_27DA6C470);
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 160);
    v49 = *(v0 + 168);
    v50 = *(v0 + 152);
    v51 = type metadata accessor for Logger();
    sub_22E6E3578(v51, qword_27DA6D5F8);
    (*(v48 + 16))(v49, v47, v50);
    v52 = v1;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v101 = v54;
      v55 = sub_22E709F90();
      v99 = sub_22E70A098();
      v104 = sub_22E709F3C();
      v105 = v104;
      *v55 = 136315394;
      sub_22E715BDC();
      sub_22E7156BC(v56, v57, MEMORY[0x277CC9628]);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = sub_22E715CD8();
      v53(v60);
      v61 = v53;
      v62 = sub_22E706BF8(v96, v59, &v105);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2112;
      v63 = v1;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v64;
      *v99 = v64;
      _os_log_impl(&dword_22E6C9000, v53, v101, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v55, 0x16u);
      sub_22E6D3510(v99, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E6CF2F4(v104);
      sub_22E6E3CE4();
      sub_22E6E3CE4();
    }

    else
    {

      v82 = sub_22E715CD8();
      v53(v82);
      v61 = v53;
    }

    v83 = *(v0 + 200);
    v84 = *(v0 + 152);
    *(v0 + 24) = v1;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (v61)(v83, v84);
LABEL_15:
    sub_22E715C68();

    sub_22E709850();
    sub_22E709A8C();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);

  (*(v5 + 32))(v4, v3, v6);
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C(&qword_27DA6C470);
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = type metadata accessor for Logger();
  *(v0 + 248) = sub_22E6E3578(v15, qword_27DA6D5F8);
  v16 = *(v10 + 16);
  *(v0 + 256) = v16;
  *(v0 + 264) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v8, v7, v9);
  v17 = *(v13 + 16);
  *(v0 + 272) = v17;
  *(v0 + 280) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v12, v11, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v103 = *(v0 + 96);
  if (v20)
  {
    v98 = v18;
    v26 = sub_22E709F90();
    v97 = sub_22E70A098();
    v100 = sub_22E709F3C();
    v105 = v100;
    *v26 = 136315394;
    sub_22E715BDC();
    sub_22E7156BC(v27, v28, MEMORY[0x277CC9628]);
    v94 = v25;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v95) = v19;
    v31 = v30;
    v32 = *(v22 + 8);
    v32(v21, v23);
    v33 = sub_22E706BF8(v29, v31, &v105);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2112;
    sub_22E715BF4();
    v36 = sub_22E7156BC(v34, v35, MEMORY[0x277D855F0]);
    v37 = sub_22E715D08(v36, v36);
    v39 = sub_22E715DD4(v37, v38);
    (v17)(v39);
    v40 = v32;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v42 = *(v24 + 8);
    v42(v22 + 8, v103);
    *(v26 + 14) = v41;
    *v97 = v41;
    sub_22E715D78();
    _os_log_impl(v43, v44, v45, v46, v26, 0x16u);
    sub_22E6D3510(v97, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E6CF2F4(v100);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {

    v42 = *(v24 + 8);
    v42(v25, v103);
    v40 = *(v22 + 8);
    v40(v21, v23);
  }

  *(v0 + 288) = v42;
  *(v0 + 296) = v40;
  if (XPCRichError.canRetry.getter())
  {
    v102 = *(v0 + 288);
    v65 = *(v0 + 272);
    sub_22E715D64();
    v66 = *(v0 + 120);
    v67 = *(v0 + 96);
    sub_22E715BF4();
    sub_22E7156BC(v68, v69, MEMORY[0x277D855F0]);
    v70 = swift_allocError();
    v65(v71, v66, v67);
    *(v0 + 32) = v70;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v72 = v102(v66, v67);
    v80 = sub_22E715DF4(v72, v73, v74, v75, v76, v77, v78, v79, v93, v94, v95, v97, v98);
    v81(v80);

    goto LABEL_15;
  }

  v87 = sub_22E715D24();
  sub_22E715C48(v87);
  sub_22E709A8C();

  return MEMORY[0x2822009F8](v88, v89, v90);
}

uint64_t sub_22E714570()
{
  sub_22E6E3BDC();
  sub_22E71A578();
  v0 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22E7145D0()
{
  v32 = v0;
  (*(v0 + 256))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 296);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  if (v4)
  {
    v29 = *(v0 + 296);
    v8 = swift_slowAlloc();
    v9 = sub_22E709F3C();
    v31 = v9;
    *v8 = 136315138;
    sub_22E715BDC();
    sub_22E7156BC(v10, v11, MEMORY[0x277CC9628]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v13;
    v29(v6, v7);
    v14 = sub_22E706BF8(v12, v1, &v31);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_22E6C9000, v2, v3, "[message id = %s] evict xpc session from cache as it is no longer usable", v8, 0xCu);
    sub_22E6CF2F4(v9);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {

    v5(v6, v7);
  }

  v28 = *(v0 + 288);
  v30 = *(v0 + 296);
  v15 = *(v0 + 272);
  v26 = *(v0 + 152);
  v27 = *(v0 + 200);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);
  sub_22E715BF4();
  v20 = sub_22E7156BC(v18, v19, MEMORY[0x277D855F0]);
  v21 = sub_22E715D08(v20, v20);
  v23 = sub_22E715D8C(v21, v22);
  v15(v23);
  *(v0 + 32) = v1;
  sub_22E715DE8();
  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v28(v16, v17);
  v30(v27, v26);

  sub_22E715C68();

  sub_22E709850();

  return v24();
}

uint64_t sub_22E714890()
{
  sub_22E6E3D08();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v1[1] = sub_22E6F4C30;
  v3 = sub_22E715C90();

  return sub_22E711814(v3, v4, v5, v6);
}

uint64_t sub_22E71493C(uint64_t a1)
{
  sub_22E715CF0(a1);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v2 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6E3A38(v2);
  sub_22E715CA4();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v11 = sub_22E715C0C(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22);

  return sub_22E7132E0(v11, v12, v13, v14, v15, v16, v17, v18);
}

unint64_t sub_22E714B14(uint64_t a1)
{
  sub_22E715D40(a1);
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_22E714CB0(v2, v1, v3);
}

unint64_t sub_22E714B78(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_22E715BDC();
  sub_22E7156BC(v2, v3, MEMORY[0x277CC9600]);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_22E714D64(a1, v4);
}

unint64_t sub_22E714C00(uint64_t a1)
{
  sub_22E715D40(a1);
  MEMORY[0x2318ECB90](v2);
  MEMORY[0x2318ECB90](v1);
  v3 = Hasher._finalize()();

  return sub_22E715030(v2, v1, v3);
}

unint64_t sub_22E714C6C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_22E7150A8(a1, v4);
}

unint64_t sub_22E714CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22E714D64(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_22E7156BC(&qword_27DA6D618, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22E714F20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v6 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6E3A38(v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = sub_22E715E08();
  sub_22E6D376C(v9);
  v11 = *(v1 + v2);
  v12 = v1 + ((v2 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_22E710F04(a1, v1 + v8, v11, v12, v5, v4);
}

unint64_t sub_22E715030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E7150A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_22E715634();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22E715168(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22E714B78(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v7 = *(*v1 + 24);
  sub_22E6CF1CC(&qword_27DA6D620, &qword_22E72B150);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v15 + 48);
  v9 = type metadata accessor for UUID();
  sub_22E6CF978();
  (*(v10 + 8))(v8 + *(v10 + 72) * v5, v9);
  v11 = *(*(v15 + 56) + 16 * v5);
  sub_22E6CF1CC(&qword_27DA6D610, &unk_22E72B070);
  sub_22E715BDC();
  sub_22E7156BC(v12, v13, MEMORY[0x277CC9600]);
  _NativeDictionary._delete(at:)();
  *v2 = v15;
  return v11;
}

void sub_22E7152B0()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  sub_22E6CF988();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  sub_22E714B78(v5);
  sub_22E715DA0();
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  sub_22E6CF1CC(&qword_27DA6D620, &qword_22E72B150);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v15))
  {
    goto LABEL_5;
  }

  v21 = sub_22E714B78(v5);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v19 = v21;
LABEL_5:
  v23 = *v1;
  if (v20)
  {
    v24 = (v23[7] + 16 * v19);
    v25 = v28;
    *v24 = v8;
    v24[1] = v25;
    sub_22E6EB538();
  }

  else
  {
    (*(v11 + 16))(v14, v5, v9);
    sub_22E715574(v19, v14, v8, v28, v23);
    sub_22E6EB538();
  }
}

id sub_22E715454(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  sub_22E714C6C(a2);
  sub_22E715DA0();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  sub_22E6CF1CC(&qword_27DA6D628, &unk_22E72B158);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v7))
  {
    goto LABEL_5;
  }

  v13 = sub_22E714C6C(a2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_22E715634();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_22E715678(v11, a2, a1, v15);

    return a2;
  }
}

uint64_t sub_22E715574(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_22E715634()
{
  result = qword_27DA6CA38;
  if (!qword_27DA6CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA6CA38);
  }

  return result;
}

unint64_t sub_22E715678(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_22E7156BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E715704(uint64_t a1)
{
  sub_22E715CF0(a1);
  sub_22E6F797C();
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v2 = type metadata accessor for CheckedContinuation();
  sub_22E6E3A38(v2);
  sub_22E715CA4();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v11 = sub_22E715C0C(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22);

  return sub_22E711EE4(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_22E715870(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v5 = type metadata accessor for CheckedContinuation();
  sub_22E6E3A38(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_22E71254C(a1, v1 + v10, v1 + v11, v12, v3, v4);
}

uint64_t sub_22E71595C()
{
  swift_unknownObjectRelease();
  sub_22E6CF2F4((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22E71599C()
{
  sub_22E6E3D08();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v1[1] = sub_22E6F4C30;
  v3 = sub_22E715C90();

  return sub_22E712D68(v3, v4, v5, v6);
}

uint64_t sub_22E715A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E715A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E715AFC()
{
  v1 = type metadata accessor for XPCAsyncSequenceResponse(0);
  sub_22E6D376C(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v4[1] = sub_22E6F48E8;
  v6 = sub_22E715C90();

  return sub_22E711698(v6, v7, v8, v2, v9);
}

uint64_t sub_22E715C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  v13[4] = a10;
  v13[2] = v12;
  v13[3] = a11;
  return v13[5];
}

uint64_t sub_22E715C68()
{
}

uint64_t sub_22E715D08(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void *sub_22E715D24()
{
  v2 = *(v0 + 40);
  v3 = *(v2 + 40);

  return sub_22E6CF214((v2 + 16), v3);
}

void *sub_22E715D40(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_22E715E08()
{

  return type metadata accessor for UUID();
}

void AssetExportSession.__allocating_init(avAsset:presetName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22E716190(a1, a2, a3, a4);
  v4 = sub_22E716174();

  sub_22E716000(v4, v5, v6, v7);
}

void AssetExportSession.init(avAsset:presetName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22E716190(a1, a2, a3, a4);
  v4 = sub_22E716174();

  sub_22E716070(v4, v5, v6, v7, v8);
}

id AssetExportSession.__allocating_init(asset:presetName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x2318EC5C0](a2, a3);

  v9 = [v7 initWithAsset:a1 presetName:v8];

  return v9;
}

id AssetExportSession.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AssetExportSession();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22E716000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AssetExportSession());

  sub_22E716070(a1, a2, a3, a4, v8);
}

void sub_22E716070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  *&a5[OBJC_IVAR____TtC10CloudAsset18AssetExportSession_delegate] = a4;
  swift_unknownObjectRetain();
  v9 = MEMORY[0x2318EC5C0](a2, a3);
  v11.receiver = a5;
  v11.super_class = type metadata accessor for AssetExportSession();
  v10 = objc_msgSendSuper2(&v11, sel_initWithAsset_presetName_, a1, v9);

  if (v10)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22E716190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getObjectType();
}

uint64_t sub_22E7161B4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AssetDownloadResponse(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_22E718140(v2, &v15 - v7);
  if (sub_22E6CF550(v8, 1, v3) == 1)
  {
    return MEMORY[0x2318ECB90](1);
  }

  sub_22E7181B0(v8, v5, type metadata accessor for AssetDownloadResponse);
  MEMORY[0x2318ECB90](0);
  type metadata accessor for UUID();
  sub_22E718210(&qword_27DA6C5F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v10 = &v5[*(v3 + 20)];
  type metadata accessor for URL();
  sub_22E718210(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Asset.ID(0);
  String.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  v11 = type metadata accessor for Asset(0);
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*&v10[*(v11 + 24)]);
  dispatch thunk of Hashable.hash(into:)();
  v12 = &v5[*(v3 + 28)];
  if (v12[16] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = *v12;
    v13 = *(v12 + 1);
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v14);
    MEMORY[0x2318ECB90](v13);
  }

  return sub_22E718258(v5, type metadata accessor for AssetDownloadResponse);
}

uint64_t static DownloadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  type metadata accessor for DownloadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v8);
  sub_22E718324();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_22E6CF1CC(&qword_27DA6D648, &qword_22E72B1E8);
  sub_22E6D374C();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = (&v29 + *(v13 + 56) - v14);
  sub_22E71681C(a1, &v29 - v14);
  sub_22E71681C(a2, v16);
  sub_22E718340();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E71681C(v15, v11);
    v19 = *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48);
    v21 = *&v11[v19];
    v20 = *&v11[v19 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_22E6D3510(v11, &qword_27DA6D200, &qword_22E72A550);
LABEL_7:
      sub_22E6D3510(v15, &qword_27DA6D648, &qword_22E72B1E8);
LABEL_17:
      v18 = 0;
      return v18 & 1;
    }

    v22 = v16 + v19;
    v24 = *(v16 + v19);
    v23 = *(v22 + 1);
    sub_22E716880(v16, v7);
    v25 = sub_22E70A664(v11, v7);
    sub_22E6D3510(v11, &qword_27DA6D200, &qword_22E72A550);
    if (v25)
    {
      if (v21 == v24 && v20 == v23)
      {

        sub_22E6D3510(v7, &qword_27DA6D200, &qword_22E72A550);
LABEL_20:
        sub_22E7182E8();
        v18 = 1;
        return v18 & 1;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_22E6D3510(v7, &qword_27DA6D200, &qword_22E72A550);
      if (v27)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_22E6D3510(v7, &qword_27DA6D200, &qword_22E72A550);
    }

    sub_22E7182E8();
    goto LABEL_17;
  }

  sub_22E71681C(v15, v2);
  v17 = *v2;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v18 = sub_22E6ECD4C(v17, *v16);

  sub_22E7182E8();
  return v18 & 1;
}

uint64_t type metadata accessor for DownloadResponseMessage(uint64_t a1)
{
  result = qword_27DA6D6B0;
  if (!qword_27DA6D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E71681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E716880(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7168F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022E72D400 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E7169C0(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_22E7169FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022E72D5D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E716AC8(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_22E716B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E7168F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E716B30(uint64_t a1)
{
  v2 = sub_22E717114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716B6C(uint64_t a1)
{
  v2 = sub_22E717114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E716BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E7169FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E716BD8(uint64_t a1)
{
  v2 = sub_22E7171BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716C14(uint64_t a1)
{
  v2 = sub_22E7171BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E716C50(uint64_t a1)
{
  v2 = sub_22E717168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716C8C(uint64_t a1)
{
  v2 = sub_22E717168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadResponseMessage.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6D650, &qword_22E72B1F8);
  sub_22E6CF988();
  v31 = v3;
  v32 = v2;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  sub_22E6CF1CC(&qword_27DA6D658, &qword_22E72B200);
  sub_22E6CF988();
  v34 = v8;
  v35 = v7;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v30 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6CF978();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  sub_22E71834C(v13, v30);
  type metadata accessor for DownloadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_22E6CF1CC(&qword_27DA6D660, &qword_22E72B208);
  sub_22E6CF988();
  v18 = v17;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  sub_22E6CF214(a1, a1[3]);
  sub_22E717114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E71681C(v36, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v16;
    v43 = 1;
    sub_22E717168();
    v23 = v37;
    sub_22E718360();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v22;
    sub_22E70BB68();
    v24 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v6, v24);
    (*(v18 + 8))(v21, v23);
  }

  else
  {
    v36 = v18;
    sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0);
    v26 = v33;
    sub_22E716880(v16, v33);
    v42 = 0;
    sub_22E7171BC();
    v27 = v37;
    sub_22E718360();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = 0;
    sub_22E717B0C(&qword_27DA6D680, &protocol conformance descriptor for XPCResult<A>);
    v28 = v35;
    v29 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v29)
    {
      v40 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v34 + 8))(v11, v28);
    sub_22E6D3510(v26, &qword_27DA6D200, &qword_22E72A550);
    return (*(v36 + 8))(v21, v27);
  }
}

unint64_t sub_22E717114()
{
  result = qword_27DA6D668;
  if (!qword_27DA6D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D668);
  }

  return result;
}

unint64_t sub_22E717168()
{
  result = qword_27DA6D670;
  if (!qword_27DA6D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D670);
  }

  return result;
}

unint64_t sub_22E7171BC()
{
  result = qword_27DA6D678;
  if (!qword_27DA6D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D678);
  }

  return result;
}

uint64_t DownloadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  type metadata accessor for DownloadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E71681C(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x2318ECB90](1);
    MEMORY[0x2318ECB90](0);
    sub_22E6F259C();
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0);
    sub_22E716880(v9, v6);
    MEMORY[0x2318ECB90](0);
    sub_22E7161B4(a1);
    sub_22E718340();
    String.hash(into:)();

    return sub_22E6D3510(v6, &qword_27DA6D200, &qword_22E72A550);
  }
}

Swift::Int DownloadResponseMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  DownloadResponseMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t DownloadResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_22E6CF1CC(&qword_27DA6D688, &qword_22E72B210);
  sub_22E6CF988();
  v59 = v5;
  v60 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v64 = sub_22E6CF1CC(&qword_27DA6D690, &qword_22E72B218);
  sub_22E6CF988();
  v61 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  sub_22E71834C(v10, v56);
  v11 = sub_22E6CF1CC(&qword_27DA6D698, &unk_22E72B220);
  sub_22E6CF988();
  v63 = v12;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for DownloadResponseMessage(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v17);
  sub_22E718324();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = a1[3];
  v66 = a1;
  sub_22E6CF214(a1, v24);
  sub_22E717114();
  v25 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_22E6CF2F4(v66);
  }

  v56 = v2;
  v57 = v23;
  v58 = v21;
  v67 = v16;
  v26 = v65;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v36 = v67;
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v39 = v36;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v15, v11);
    return sub_22E6CF2F4(v66);
  }

  if (v29 < (v30 >> 1))
  {
    v69 = *(v28 + v29);
    sub_22E6F3764();
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      if (v69)
      {
        v73 = 1;
        sub_22E717168();
        sub_22E718360();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_22E70CA00();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v35 = v63;
        swift_unknownObjectRelease();
        v40 = sub_22E71836C();
        v41(v40);
        (*(v35 + 8))(0, v11);
        v42 = v56;
        *v56 = v68;
        swift_storeEnumTagMultiPayload();
        sub_22E7182D0();
        v44 = v42;
      }

      else
      {
        v72 = 0;
        sub_22E7171BC();
        sub_22E718360();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
        v71 = 0;
        sub_22E717B0C(&qword_27DA6D6A0, &protocol conformance descriptor for XPCResult<A>);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v70 = 1;
        v60 = KeyedDecodingContainer.decode(_:forKey:)();
        v62 = v45;
        swift_unknownObjectRelease();
        v46 = sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0);
        v47 = v58;
        v48 = &v58[*(v46 + 48)];
        v49 = sub_22E718340();
        v50(v49);
        v51 = sub_22E718310();
        v52(v51);
        v53 = v62;
        *v48 = v60;
        v48[1] = v53;
        swift_storeEnumTagMultiPayload();
        sub_22E7182D0();
        v44 = v47;
      }

      v54 = v57;
      sub_22E7181B0(v44, v57, v43);
      sub_22E7182D0();
      sub_22E7181B0(v54, v26, v55);
      return sub_22E6CF2F4(v66);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

Swift::Int sub_22E717A9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  DownloadResponseMessage.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_22E717B0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D200, &qword_22E72A550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E717BA4(uint64_t a1)
{
  sub_22E717C18(319);
  if (v1 <= 0x3F)
  {
    sub_22E70CDE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22E717C18(uint64_t a1)
{
  if (!qword_27DA6D6C0)
  {
    sub_22E6CF2AC(&qword_27DA6D200, &qword_22E72A550);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA6D6C0);
    }
  }
}

_BYTE *sub_22E717CA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E717E2C()
{
  result = qword_27DA6D6C8;
  if (!qword_27DA6D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6C8);
  }

  return result;
}

unint64_t sub_22E717E84()
{
  result = qword_27DA6D6D0;
  if (!qword_27DA6D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6D0);
  }

  return result;
}

unint64_t sub_22E717EDC()
{
  result = qword_27DA6D6D8;
  if (!qword_27DA6D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6D8);
  }

  return result;
}

unint64_t sub_22E717F34()
{
  result = qword_27DA6D6E0;
  if (!qword_27DA6D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6E0);
  }

  return result;
}

unint64_t sub_22E717F8C()
{
  result = qword_27DA6D6E8;
  if (!qword_27DA6D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6E8);
  }

  return result;
}

unint64_t sub_22E717FE4()
{
  result = qword_27DA6D6F0;
  if (!qword_27DA6D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6F0);
  }

  return result;
}

unint64_t sub_22E71803C()
{
  result = qword_27DA6D6F8;
  if (!qword_27DA6D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6F8);
  }

  return result;
}

unint64_t sub_22E718094()
{
  result = qword_27DA6D700;
  if (!qword_27DA6D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D700);
  }

  return result;
}

unint64_t sub_22E7180EC()
{
  result = qword_27DA6D708;
  if (!qword_27DA6D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D708);
  }

  return result;
}

uint64_t sub_22E718140(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7181B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22E6CF978();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22E718210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E718258(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E7182E8()
{

  return sub_22E718258(v0, type metadata accessor for DownloadResponseMessage);
}

uint64_t sub_22E718380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C656979 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22E718484(char a1)
{
  if (!a1)
  {
    return 0x646C656979;
  }

  if (a1 == 1)
  {
    return 0x6873696E6966;
  }

  return 0x726F727265;
}

uint64_t sub_22E7184D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E718380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E718500(uint64_t a1)
{
  v2 = sub_22E718A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71853C(uint64_t a1)
{
  v2 = sub_22E718A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E718578(uint64_t a1)
{
  v2 = sub_22E718ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7185B4(uint64_t a1)
{
  v2 = sub_22E718ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7185F0(uint64_t a1)
{
  v2 = sub_22E718B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71862C(uint64_t a1)
{
  v2 = sub_22E718B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E718668(uint64_t a1)
{
  v2 = sub_22E718B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7186A4(uint64_t a1)
{
  v2 = sub_22E718B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceResponse.Event.encode(to:)(void *a1)
{
  v2 = v1;
  sub_22E6CF1CC(&qword_27DA6D710, &qword_22E72B6A0);
  sub_22E6CF988();
  v32 = v5;
  v33 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - v7;
  v30 = sub_22E6CF1CC(&qword_27DA6D718, &qword_22E72B6A8);
  sub_22E6CF988();
  v28 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v29 = sub_22E6CF1CC(&qword_27DA6D720, &qword_22E72B6B0);
  sub_22E6CF988();
  v27 = v12;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = sub_22E6CF1CC(&qword_27DA6D728, &qword_22E72B6B8);
  sub_22E6CF988();
  v18 = v17;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v22 = v2[1];
  v26 = *v2;
  sub_22E6CF214(a1, a1[3]);
  sub_22E718A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22 >> 60 == 11)
  {
    LOBYTE(v34[0]) = 2;
    sub_22E718ABC();
    v23 = v31;
    sub_22E71A428(&type metadata for XPCAsyncSequenceResponse.Event.ErrorCodingKeys, v34);
    (*(v32 + 8))(v23, v33);
    return (*(v18 + 8))(v21, v16);
  }

  if (v22 >> 60 == 15)
  {
    LOBYTE(v34[0]) = 1;
    sub_22E718B10();
    sub_22E71A428(&type metadata for XPCAsyncSequenceResponse.Event.FinishCodingKeys, v34);
    (*(v28 + 8))(v11, v30);
    return (*(v18 + 8))(v21, v16);
  }

  LOBYTE(v34[0]) = 0;
  sub_22E718B64();
  sub_22E71A428(&type metadata for XPCAsyncSequenceResponse.Event.YieldCodingKeys, v34);
  v34[0] = v26;
  v34[1] = v22;
  sub_22E6D0A5C();
  v25 = v29;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v27 + 8))(v15, v25);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_22E718A68()
{
  result = qword_27DA6D730;
  if (!qword_27DA6D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D730);
  }

  return result;
}

unint64_t sub_22E718ABC()
{
  result = qword_27DA6D738;
  if (!qword_27DA6D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D738);
  }

  return result;
}

unint64_t sub_22E718B10()
{
  result = qword_27DA6D740;
  if (!qword_27DA6D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D740);
  }

  return result;
}

unint64_t sub_22E718B64()
{
  result = qword_27DA6D748;
  if (!qword_27DA6D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D748);
  }

  return result;
}

uint64_t XPCAsyncSequenceResponse.Event.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v55 = a2;
  v59 = sub_22E6CF1CC(&qword_27DA6D750, &qword_22E72B6C0);
  sub_22E6CF988();
  v56 = v3;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  v58 = v49 - v5;
  v54 = sub_22E6CF1CC(&qword_27DA6D758, &qword_22E72B6C8);
  sub_22E6CF988();
  v52 = v6;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  v10 = sub_22E6CF1CC(&qword_27DA6D760, &qword_22E72B6D0);
  sub_22E6CF988();
  v53 = v11;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v15 = sub_22E6CF1CC(&qword_27DA6D768, &unk_22E72B6D8);
  sub_22E6CF988();
  v57 = v16;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  v19 = v49 - v18;
  sub_22E6CF214(a1, a1[3]);
  sub_22E718A68();
  v20 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_22E6CF2F4(a1);
  }

  v50 = v9;
  v51 = v14;
  v49[1] = v10;
  v22 = v58;
  v21 = v59;
  v61 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v25 == v26 >> 1)
  {
    goto LABEL_8;
  }

  v49[0] = 0;
  if (v25 < (v26 >> 1))
  {
    v27 = *(v24 + v25);
    sub_22E6F3764();
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v56;
    if (v29 == v31 >> 1)
    {
      if (!v27)
      {
        LOBYTE(v60) = 0;
        sub_22E718B64();
        sub_22E71A464(&type metadata for XPCAsyncSequenceResponse.Event.YieldCodingKeys, &v60);
        sub_22E6D0730();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v45 = sub_22E71A450();
        v46(v45);
        v47 = sub_22E71A444();
        v48(v47);
        v43 = v60;
        v34 = v55;
        goto LABEL_14;
      }

      if (v27 == 1)
      {
        LOBYTE(v60) = 1;
        sub_22E718B10();
        v33 = v50;
        sub_22E71A464(&type metadata for XPCAsyncSequenceResponse.Event.FinishCodingKeys, &v60);
        v34 = v55;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v33, v54);
        sub_22E71A41C();
        v41 = sub_22E71A444();
        v42(v41);
        v43 = xmmword_22E72B690;
LABEL_14:
        *v34 = v43;
        return sub_22E6CF2F4(v61);
      }

      LOBYTE(v60) = 2;
      sub_22E718ABC();
      v39 = v49[0];
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v55;
      if (!v39)
      {
        swift_unknownObjectRelease();
        (*(v32 + 8))(v22, v21);
        sub_22E71A41C();
        v44(v19, v15);
        v43 = xmmword_22E72B680;
        goto LABEL_14;
      }

      sub_22E71A41C();
      v40(v19, v15);
      swift_unknownObjectRelease();
      a1 = v61;
      return sub_22E6CF2F4(a1);
    }

LABEL_8:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v37 = &type metadata for XPCAsyncSequenceResponse.Event;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22E71A41C();
    v38(v19, v15);
    a1 = v61;
    return sub_22E6CF2F4(a1);
  }

  __break(1u);
  return result;
}

uint64_t XPCAsyncSequenceResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  sub_22E6CF978();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t XPCAsyncSequenceResponse.event.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22E7199EC(v4, v5);
}

uint64_t XPCAsyncSequenceResponse.init(id:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for UUID();
  sub_22E6CF978();
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for XPCAsyncSequenceResponse(0);
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t sub_22E719320(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E7193DC(char a1)
{
  if (a1)
  {
    return 0x746E657665;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22E71940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E719320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E719434(uint64_t a1)
{
  v2 = sub_22E719A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E719470(uint64_t a1)
{
  v2 = sub_22E719A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6D770, &qword_22E72B6E8);
  sub_22E6CF988();
  v7 = v6;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  sub_22E6CF214(a1, a1[3]);
  sub_22E719A04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_22E6D5FC8(&qword_27DA6C5D0, MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_22E7199EC(v15, v12);
    sub_22E719A58();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E708DF4(v15, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t XPCAsyncSequenceResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for UUID();
  sub_22E6CF988();
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF1CC(&qword_27DA6D788, &qword_22E72B6F0);
  sub_22E6CF988();
  v27 = v8;
  v28 = v9;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for XPCAsyncSequenceResponse(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF214(a1, a1[3]);
  sub_22E719A04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_22E6CF2F4(a1);
  }

  v24 = v11;
  v15 = v26;
  LOBYTE(v30) = 0;
  sub_22E6D5FC8(&qword_27DA6C608, MEMORY[0x277CC9618]);
  v16 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v15 + 32);
  v23 = v14;
  v17(v14, v7, v16);
  v31 = 1;
  sub_22E719AAC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = sub_22E6D6348();
  v19(v18);
  v20 = v23;
  *&v23[*(v24 + 20)] = v30;
  sub_22E715A34(v20, v25);
  sub_22E6CF2F4(a1);
  return sub_22E719B00(v20);
}

uint64_t type metadata accessor for XPCAsyncSequenceResponse(uint64_t a1)
{
  result = qword_27DA6D798;
  if (!qword_27DA6D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E7199EC(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_22E6CFB64(result, a2);
  }

  return result;
}

unint64_t sub_22E719A04()
{
  result = qword_27DA6D778;
  if (!qword_27DA6D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D778);
  }

  return result;
}

unint64_t sub_22E719A58()
{
  result = qword_27DA6D780;
  if (!qword_27DA6D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D780);
  }

  return result;
}

unint64_t sub_22E719AAC()
{
  result = qword_27DA6D790;
  if (!qword_27DA6D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D790);
  }

  return result;
}

uint64_t sub_22E719B00(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E719B84(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E719BF8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_22E719C20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22E719C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E719C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_22E719CDC(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E719FA4()
{
  result = qword_27DA6D7A8;
  if (!qword_27DA6D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7A8);
  }

  return result;
}

unint64_t sub_22E719FFC()
{
  result = qword_27DA6D7B0;
  if (!qword_27DA6D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7B0);
  }

  return result;
}

unint64_t sub_22E71A054()
{
  result = qword_27DA6D7B8;
  if (!qword_27DA6D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7B8);
  }

  return result;
}

unint64_t sub_22E71A0AC()
{
  result = qword_27DA6D7C0;
  if (!qword_27DA6D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7C0);
  }

  return result;
}

unint64_t sub_22E71A104()
{
  result = qword_27DA6D7C8;
  if (!qword_27DA6D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7C8);
  }

  return result;
}

unint64_t sub_22E71A15C()
{
  result = qword_27DA6D7D0;
  if (!qword_27DA6D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7D0);
  }

  return result;
}

unint64_t sub_22E71A1B4()
{
  result = qword_27DA6D7D8;
  if (!qword_27DA6D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7D8);
  }

  return result;
}

unint64_t sub_22E71A20C()
{
  result = qword_27DA6D7E0;
  if (!qword_27DA6D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7E0);
  }

  return result;
}

unint64_t sub_22E71A264()
{
  result = qword_27DA6D7E8;
  if (!qword_27DA6D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7E8);
  }

  return result;
}

unint64_t sub_22E71A2BC()
{
  result = qword_27DA6D7F0;
  if (!qword_27DA6D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7F0);
  }

  return result;
}

unint64_t sub_22E71A314()
{
  result = qword_27DA6D7F8;
  if (!qword_27DA6D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7F8);
  }

  return result;
}

unint64_t sub_22E71A36C()
{
  result = qword_27DA6D800;
  if (!qword_27DA6D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D800);
  }

  return result;
}

unint64_t sub_22E71A3C4()
{
  result = qword_27DA6D808;
  if (!qword_27DA6D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D808);
  }

  return result;
}

uint64_t sub_22E71A428(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E71A464(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E71A484()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D810);
  sub_22E6E3578(v0, qword_27DA6D810);
  type metadata accessor for XPCSessionCacheImplementation();
  sub_22E6CF1CC(&qword_27DA6D828, &qword_22E72BDD8);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

void *sub_22E71A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
  v4[18] = 0;
  return v4;
}

uint64_t sub_22E71A578()
{
  v1 = v0;
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D810);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = sub_22E71AD84();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_22E71AD90(&dword_22E6C9000, v6, v7, "evict xpc session");
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  *(v1 + 144) = 0;
}

uint64_t sub_22E71A648()
{
  if (*(v1 + 144))
  {
    v0 = *(v1 + 144);
  }

  else
  {
    v3 = sub_22E71A690();
    if (v2)
    {
      return v0;
    }

    v0 = v3;
  }

  return v0;
}

uint64_t sub_22E71A690()
{
  v2 = v0;
  v3 = type metadata accessor for XPCSession.InitializationOptions();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_22E6E3578(v4, qword_27DA6D810);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = sub_22E71AD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22E6C9000, v5, v6, "establish xpc session", v9, 2u);
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  type metadata accessor for XPCSession();

  static XPCSession.InitializationOptions.none.getter();
  type metadata accessor for XPCAsyncSequenceResponse(0);
  sub_22E71AD1C(&qword_27DA6D830, type metadata accessor for XPCAsyncSequenceResponse, &protocol conformance descriptor for XPCAsyncSequenceResponse);
  v10 = XPCSession.__allocating_init<A>(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
  v11 = v10;
  if (!v1)
  {
    *(v2 + 144) = v10;
  }

  return v11;
}

uint64_t sub_22E71A89C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_22E6E3578(v8, qword_27DA6D810);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = sub_22E71AD84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[1] = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    sub_22E71AD1C(&qword_27DA6D248, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v9(v17, v7, v4);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_22E6C9000, v10, v11, "cached xpc connection disconnected due to error %@", v15, 0xCu);
    sub_22E71ACB0(v16);
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_22E71A578();
}

uint64_t sub_22E71AB10()
{
  v1 = v0;
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D810);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = sub_22E71AD84();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_22E71AD90(&dword_22E6C9000, v6, v7, "cancel xpc session");
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  if (*(v1 + 144))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  return sub_22E71A578();
}

void *sub_22E71AC0C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22E71AC44()
{
  sub_22E71AC0C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22E71ACB0(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6CA08, &qword_22E727840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E71AD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22E71AD90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t Credential.Builder.__allocating_init(tenantName:requestorID:accessToken:)()
{
  sub_22E71C260();
  v0 = swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  return v0;
}

uint64_t Credential.Builder.build()@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 3);
  *a1 = *(v1 + 2);
  *(a1 + 1) = v3;
  v4 = *(v1 + 5);
  *(a1 + 2) = *(v1 + 4);
  *(a1 + 3) = v4;
  v5 = *(v1 + 7);
  *(a1 + 4) = *(v1 + 6);
  *(a1 + 5) = v5;
  v6 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  swift_beginAccess();
  v7 = *(type metadata accessor for Credential(0) + 28);
  type metadata accessor for Date();
  sub_22E6CF978();
  (*(v8 + 16))(&a1[v7], &v1[v6]);
}

void *Credential.Builder.init(tenantName:requestorID:accessToken:)()
{
  sub_22E71C260();
  v7 = type metadata accessor for Date();
  sub_22E6CF988();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22E6CF9C8();
  v13 = v12 - v11;
  v1[2] = v6;
  v1[3] = v5;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v3;
  static Date.distantFuture.getter();
  (*(v9 + 32))(v1 + OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate, v13, v7);
  return v1;
}

uint64_t Credential.Builder.setExpirationDate(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  swift_beginAccess();
  type metadata accessor for Date();
  sub_22E6CF978();
  (*(v4 + 24))(v1 + v3, a1);
  swift_endAccess();
}

char *Credential.Builder.deinit()
{

  v1 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  type metadata accessor for Date();
  sub_22E6CF978();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Credential.Builder.__deallocating_deinit()
{
  Credential.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22E71B144(uint64_t a1)
{
  v2 = sub_22E71B6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71B180(uint64_t a1)
{
  v2 = sub_22E71B6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Credential.tenantName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Credential.requestorID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Credential.accessToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22E71C27C();
  sub_22E6CF978();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t Credential.init(accessToken:expiryDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = 0x616C506572616853;
  *(a4 + 1) = 0xE900000000000079;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0xE000000000000000;
  *(a4 + 4) = a1;
  *(a4 + 5) = a2;
  sub_22E71C27C();
  sub_22E6CF978();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t Credential.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6CF988();
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v29 = v6 - v5;
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22E6CF9C8();
  type metadata accessor for CloudAssets_Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v8);
  sub_22E6CF9C8();
  v11 = (v10 - v9);
  v12 = sub_22E6CF1CC(&qword_27DA6D838, &qword_22E72BDE0);
  sub_22E6CF988();
  v32 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_22E6CF214(a1, a1[3]);
  sub_22E71B6A4();
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v27 = a1;
  }

  else
  {
    v39 = a1;
    v18 = v32;
    v19 = v33;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v38;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E71C248();
    sub_22E71BCB0(v20, v21, &unk_22E7282E8);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v23 = v11[1];
    *v19 = *v11;
    v19[1] = v23;
    v24 = v11[3];
    v19[2] = v11[2];
    v19[3] = v24;
    v25 = v11[5];
    v19[4] = v11[4];
    v19[5] = v25;

    v26 = v29;
    sub_22E6E4AE4(v29);
    type metadata accessor for Credential(0);
    Google_Protobuf_Timestamp.date.getter();
    (*(v31 + 8))(v26, v30);
    sub_22E71B6F8(v11);
    (*(v18 + 8))(v16, v12);
    v27 = v39;
  }

  return sub_22E6CF2F4(v27);
}

unint64_t sub_22E71B6A4()
{
  result = qword_27DA6D840;
  if (!qword_27DA6D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D840);
  }

  return result;
}

uint64_t sub_22E71B6F8(uint64_t a1)
{
  v2 = type metadata accessor for CloudAssets_Credential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v42 = type metadata accessor for Date();
  sub_22E6CF988();
  v40 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v39 = v7 - v6;
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6CF988();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22E6CF9C8();
  v13 = v12 - v11;
  v14 = type metadata accessor for CloudAssets_Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v15);
  sub_22E6CF9C8();
  v18 = (v17 - v16);
  sub_22E6CF1CC(&qword_27DA6D848, &qword_22E72BDE8);
  sub_22E6CF988();
  v44 = v20;
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  sub_22E6CF214(a1, a1[3]);
  sub_22E71B6A4();
  v43 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  UnknownStorage.init()();
  v23 = *(v14 + 32);
  sub_22E6CF58C(&v18[v23], 1, 1, v8);
  v24 = *(v2 + 1);
  *v18 = *v2;
  *(v18 + 1) = v24;
  v25 = *(v2 + 3);
  *(v18 + 2) = *(v2 + 2);
  *(v18 + 3) = v25;
  v26 = *(v2 + 5);
  *(v18 + 4) = *(v2 + 4);
  *(v18 + 5) = v26;
  v27 = type metadata accessor for Credential(0);
  (*(v40 + 16))(v39, &v2[*(v27 + 28)], v42);

  Google_Protobuf_Timestamp.init(date:)();
  sub_22E71BAF4(&v18[v23]);
  (*(v41 + 32))(&v18[v23], v13, v8);
  sub_22E6CF58C(&v18[v23], 0, 1, v8);
  sub_22E71C248();
  sub_22E71BCB0(v28, v29, &unk_22E7282E8);
  v30 = v48;
  v31 = Message.serializedData(partial:)();
  if (v30)
  {
    (*(v44 + 8))(v43, v45);
    return sub_22E71B6F8(v18);
  }

  else
  {
    v34 = v31;
    v35 = v32;
    sub_22E71B6F8(v18);
    v46 = v34;
    v47 = v35;
    sub_22E6D0A5C();
    v36 = v45;
    v37 = v43;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v46, v47);
    return (*(v44 + 8))(v37, v36);
  }
}

uint64_t sub_22E71BAF4(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Credential.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Credential(0);

  return static Date.== infix(_:_:)();
}

uint64_t Credential.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Credential(0);
  type metadata accessor for Date();
  sub_22E71C230();
  sub_22E71BCB0(v1, v2, MEMORY[0x277CC9588]);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_22E71BCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int Credential.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_22E71C27C();
  sub_22E71C230();
  sub_22E71BCB0(v0, v1, MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E71BDA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_22E71BCB0(&qword_27DA6C768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E71BF04(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E71BFB0(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for Credential.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E71C12C()
{
  result = qword_27DA6D858;
  if (!qword_27DA6D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D858);
  }

  return result;
}

unint64_t sub_22E71C184()
{
  result = qword_27DA6D860;
  if (!qword_27DA6D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D860);
  }

  return result;
}

unint64_t sub_22E71C1DC()
{
  result = qword_27DA6D868;
  if (!qword_27DA6D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D868);
  }

  return result;
}

uint64_t sub_22E71C27C()
{
  type metadata accessor for Credential(0);

  return type metadata accessor for Date();
}

id PlayerItem.__allocating_init(avAsset:delegate:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_22E71D300();

  return sub_22E71CD58(v2, v3);
}

uint64_t sub_22E71C2F4()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D870);
  sub_22E6E3578(v0, qword_27DA6D870);
  type metadata accessor for PlayerItem(0);
  sub_22E6CF1CC(&qword_27DA6D888, "R/");
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

id PlayerItem.init(avAsset:delegate:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_22E71D300();

  return sub_22E71CDB4(v2, v3, v4);
}

id sub_22E71C3E0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  sub_22E6CF988();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = dispatch_semaphore_create(0);
  type metadata accessor for PlayerItem.UnsafeSendablePlayerItemBox();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v12, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v13;

  v17 = a1;
  swift_unknownObjectRetain();
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v14;
  v19[6] = v17;
  v19[7] = a2;
  sub_22E6E1B80(0, 0, v12, &unk_22E72C048, v19);

  static DispatchTime.distantFuture.getter();
  MEMORY[0x2318EC8B0](v9);
  result = (*(v6 + 8))(v9, v4);
  v22 = *(v14 + 16);
  if (v22)
  {
    v23 = v22;

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22E71C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](sub_22E71C69C, v9, v8);
}

uint64_t sub_22E71C69C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  type metadata accessor for PlayerItem(0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = sub_22E71CD58(v2, v1);
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;

  OS_dispatch_semaphore.signal()();
  v6 = v0[1];

  return v6();
}

id PlayerItem.__deallocating_deinit()
{
  v1 = type metadata accessor for UUID();
  sub_22E6CF988();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA6C480 != -1)
  {
    sub_22E71D2E0(&qword_27DA6C480);
  }

  v7 = type metadata accessor for Logger();
  sub_22E6E3578(v7, qword_27DA6D870);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    (*(v3 + 16))(v6, v8 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v1);
    sub_22E71D1A8();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v3 + 8))(v6, v1);
    v16 = sub_22E706BF8(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_22E6C9000, v9, v10, "deinit PlayerItem with id %s", v11, 0xCu);
    sub_22E6CF2F4(v12);
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  v17 = type metadata accessor for PlayerItem(0);
  v21.receiver = v8;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

id sub_22E71CA1C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27DA6C480 != -1)
  {
    sub_22E71D2E0(&qword_27DA6C480);
  }

  v3 = type metadata accessor for Logger();
  sub_22E6E3578(v3, qword_27DA6D870);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    sub_22E71D1A8();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_22E706BF8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22E6C9000, v5, v6, "copy PlayerItem with id %s", v7, 0xCu);
    sub_22E6CF2F4(v8);
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  v12 = type metadata accessor for PlayerItem(0);
  v13 = [v4 asset];
  v14 = *&v4[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate];
  swift_getObjectType();
  swift_unknownObjectRetain();
  result = sub_22E71CD58(v13, v14);
  a1[3] = v12;
  *a1 = result;
  return result;
}

id PlayerItem.__allocating_init(asset:automaticallyLoadedAssetKeys:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [objc_allocWithZone(v3) initWithAsset:a1 automaticallyLoadedAssetKeys:v5.super.isa];

  return v6;
}

uint64_t sub_22E71CD20()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_22E71CD58(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for PlayerItem(0));

  return sub_22E71CDB4(a1, a2, v4);
}

id sub_22E71CDB4(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v7 + 32))(&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_id], v9, v6);
  *&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate] = a2;
  v10 = type metadata accessor for PlayerItem(0);
  v27.receiver = a3;
  v27.super_class = v10;
  v11 = objc_msgSendSuper2(&v27, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v12 = qword_27DA6C480;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_22E6E3578(v14, qword_27DA6D870);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    (*(v7 + 16))(v9, v13 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v6);
    sub_22E71D1A8();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_22E706BF8(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22E6C9000, v15, v16, "initialize PlayerItem with id %s", v18, 0xCu);
    sub_22E6CF2F4(v19);
    MEMORY[0x2318ED210](v19, -1, -1);
    MEMORY[0x2318ED210](v18, -1, -1);
  }

  else
  {
  }

  return v13;
}

uint64_t sub_22E71D088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22E6D9C8C;

  return sub_22E71C600(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for PlayerItem(uint64_t a1)
{
  result = qword_281468810;
  if (!qword_281468810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E71D1A8()
{
  result = qword_27DA6C948;
  if (!qword_27DA6C948)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C948);
  }

  return result;
}

uint64_t sub_22E71D208(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_22E71D2E0(uint64_t a1)
{

  return swift_once();
}

uint64_t AssetUploadRequest.id.getter()
{
  sub_22E6D9170();
  type metadata accessor for UUID();
  sub_22E6CF978();
  v0 = sub_22E6D368C();

  return v1(v0);
}

uint64_t AssetUploadRequest.tenantName.getter()
{
  type metadata accessor for AssetUploadRequest(0);

  return sub_22E6D368C();
}

uint64_t type metadata accessor for AssetUploadRequest(uint64_t a1)
{
  result = qword_27DA6D8D0;
  if (!qword_27DA6D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetUploadRequest.tenantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AssetUploadRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AssetUploadRequest.tenantName.modify())()
{
  v0 = sub_22E6D3848();
  type metadata accessor for AssetUploadRequest(v0);
  return nullsub_1;
}

uint64_t AssetUploadRequest.workingDirectory.getter()
{
  v0 = sub_22E6D9170();
  type metadata accessor for AssetUploadRequest(v0);
  type metadata accessor for URL();
  sub_22E6CF978();
  v1 = sub_22E6EB498();

  return v2(v1);
}

uint64_t AssetUploadRequest.workingDirectory.setter()
{
  v2 = sub_22E6D3848();
  v3 = *(type metadata accessor for AssetUploadRequest(v2) + 24);
  type metadata accessor for URL();
  sub_22E6CF978();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*AssetUploadRequest.workingDirectory.modify())()
{
  v0 = sub_22E6D3848();
  type metadata accessor for AssetUploadRequest(v0);
  return nullsub_1;
}

uint64_t AssetUploadRequest.fileURL.getter()
{
  v0 = sub_22E6D9170();
  type metadata accessor for AssetUploadRequest(v0);
  type metadata accessor for URL();
  sub_22E6CF978();
  v1 = sub_22E6EB498();

  return v2(v1);
}

uint64_t AssetUploadRequest.storageLocation.getter()
{
  v0 = sub_22E6D9170();
  type metadata accessor for AssetUploadRequest(v0);
  type metadata accessor for URL();
  sub_22E6CF978();
  v1 = sub_22E6EB498();

  return v2(v1);
}

uint64_t AssetUploadRequest.protector.getter()
{
  v2 = sub_22E6D9170();
  v3 = (v1 + *(type metadata accessor for AssetUploadRequest(v2) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  sub_22E6CFB64(v4, v5);

  return sub_22E6CFB64(v6, v7);
}

uint64_t AssetUploadRequest.credential.getter()
{
  v2 = sub_22E6D9170();
  v3 = type metadata accessor for AssetUploadRequest(v2);
  return sub_22E71ED30(v1 + *(v3 + 40), v0, type metadata accessor for Credential);
}

uint64_t AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for AssetUploadRequest(0);
  v11 = (a5 + v10[5]);
  *v11 = 0x616C506572616853;
  v11[1] = 0xE900000000000079;
  sub_22E6D8FE4();
  v12 = v10[7];
  v13 = type metadata accessor for URL();
  sub_22E6CF978();
  v15 = *(v14 + 32);
  v19 = a3[1];
  v20 = *a3;
  v15(a5 + v12, a1, v13);
  v15(a5 + v10[8], a2, v13);
  v16 = (a5 + v10[9]);
  *v16 = v20;
  v16[1] = v19;
  v17 = a5 + v10[10];

  return sub_22E71D840(a4, v17);
}

uint64_t sub_22E71D840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetUploadRequest.init(tenantName:fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  UUID.init()();
  v14 = type metadata accessor for AssetUploadRequest(0);
  v15 = (a7 + v14[5]);
  *v15 = a1;
  v15[1] = a2;

  sub_22E6D8FE4();

  v16 = v14[7];
  v17 = type metadata accessor for URL();
  sub_22E6CF978();
  v19 = *(v18 + 32);
  v23 = a5[1];
  v24 = *a5;
  v19(a7 + v16, a3, v17);
  v19(a7 + v14[8], a4, v17);
  v20 = (a7 + v14[9]);
  *v20 = v24;
  v20[1] = v23;
  v21 = a7 + v14[10];

  return sub_22E71D840(a6, v21);
}

uint64_t static AssetUploadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetUploadRequest(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[6]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[7]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[8]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v23 = v15[3];
  sub_22E6CFB64(v11, v12);
  sub_22E6CFB64(v13, v14);
  sub_22E6CFB64(v17, v16);
  sub_22E6CFB64(v18, v23);
  if ((MEMORY[0x2318EC160](v11, v12, v17, v16) & 1) == 0)
  {
    sub_22E6CFBBC(v17, v16);
    sub_22E6CFBBC(v18, v23);
    sub_22E6CFBBC(v11, v12);
    sub_22E6CFBBC(v13, v14);
    return 0;
  }

  v22 = MEMORY[0x2318EC160](v13, v14, v18, v23);
  sub_22E6CFBBC(v17, v16);
  sub_22E6CFBBC(v18, v23);
  sub_22E6CFBBC(v11, v12);
  sub_22E6CFBBC(v13, v14);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v19 = sub_22E6D919C(v4[10]);

  return static Credential.== infix(_:_:)(v19, v20);
}

uint64_t sub_22E71DBC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72CC60 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C656761726F7473 && a2 == 0xEF6E6F697461636FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F746365746F7270 && a2 == 0xE900000000000072;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22E71DE18(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4C5255656C6966;
      break;
    case 4:
      result = 0x4C656761726F7473;
      break;
    case 5:
      result = 0x6F746365746F7270;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E71DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E71DBC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E71DF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E71DE10();
  *a1 = result;
  return result;
}

uint64_t sub_22E71DF50(uint64_t a1)
{
  v2 = sub_22E71E2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71DF8C(uint64_t a1)
{
  v2 = sub_22E71E2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6D890, &qword_22E72C0D0);
  sub_22E6CF988();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  sub_22E6CF214(a1, a1[3]);
  sub_22E71E2C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v28) = 0;
  type metadata accessor for UUID();
  sub_22E71F328();
  sub_22E71EF04(v11, v12, MEMORY[0x277CC95F8]);
  sub_22E6E3ED4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AssetUploadRequest(0);
    LOBYTE(v28) = 1;
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v13[6];
    LOBYTE(v28) = 2;
    type metadata accessor for URL();
    sub_22E71F310();
    sub_22E71EF04(v15, v16, MEMORY[0x277CC9268]);
    sub_22E71F350(v3 + v14);
    v17 = v13[7];
    LOBYTE(v28) = 3;
    sub_22E71F350(v3 + v17);
    v18 = v13[8];
    LOBYTE(v28) = 4;
    sub_22E71F350(v3 + v18);
    v19 = (v3 + v13[9]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v28 = *v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = 5;
    sub_22E6CFB64(v28, v20);
    sub_22E6CFB64(v21, v22);
    sub_22E71E31C();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v30;
    v24 = v31;
    sub_22E6CFBBC(v28, v29);
    sub_22E6CFBBC(v23, v24);
    LOBYTE(v28) = 6;
    type metadata accessor for Credential(0);
    sub_22E71F378();
    sub_22E71EF04(v25, v26, &protocol conformance descriptor for Credential);
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_22E71E2C8()
{
  result = qword_27DA6D898;
  if (!qword_27DA6D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D898);
  }

  return result;
}

unint64_t sub_22E71E31C()
{
  result = qword_27DA6D8A0;
  if (!qword_27DA6D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8A0);
  }

  return result;
}

uint64_t AssetUploadRequest.hash(into:)()
{
  sub_22E6D3848();
  type metadata accessor for UUID();
  sub_22E71F328();
  sub_22E71EF04(v0, v1, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for AssetUploadRequest(0);
  String.hash(into:)();
  type metadata accessor for URL();
  sub_22E71F310();
  sub_22E71EF04(v2, v3, MEMORY[0x277CC9270]);
  sub_22E71F3C0();
  sub_22E71F3C0();
  sub_22E71F3C0();
  Data.hash(into:)();
  sub_22E6D368C();
  Data.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Credential(0);
  type metadata accessor for Date();
  sub_22E71EF04(&qword_27DA6C768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AssetUploadRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetUploadRequest.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AssetUploadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v80 = v5 - v4;
  v87 = type metadata accessor for URL();
  sub_22E6CF988();
  v84 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v75 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v75 - v14;
  v16 = type metadata accessor for UUID();
  sub_22E6CF988();
  v83 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22E6CF9C8();
  v21 = v20 - v19;
  v81 = sub_22E6CF1CC(&qword_27DA6D8A8, &qword_22E72C0D8);
  sub_22E6CF988();
  v79 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v75 - v24;
  v88 = type metadata accessor for AssetUploadRequest(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v26);
  sub_22E6CF9C8();
  v89 = v28 - v27;
  v29 = a1[3];
  v86 = a1;
  sub_22E6CF214(a1, v29);
  sub_22E71E2C8();
  v82 = v25;
  v30 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return sub_22E6CF2F4(v86);
  }

  v75[3] = v13;
  v76 = v15;
  v75[2] = v10;
  v31 = v80;
  LOBYTE(v90[0]) = 0;
  sub_22E71F328();
  sub_22E71EF04(v32, v33, MEMORY[0x277CC9618]);
  v34 = v81;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v16;
  v36 = v89;
  (*(v83 + 32))(v89, v21, v35);
  LOBYTE(v90[0]) = 1;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = (v36 + v88[5]);
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v90[0]) = 2;
  sub_22E71F310();
  sub_22E71EF04(v40, v41, MEMORY[0x277CC9280]);
  v42 = v76;
  v43 = v87;
  v44 = sub_22E71F390();
  *(v46 - 256) = v45;
  sub_22E71F3DC(v44, v47, v48, v49, v45);
  v85 = v35;
  v50 = *(v84 + 32);
  v51 = v36 + v88[6];
  v76 = (v84 + 32);
  v75[0] = v50;
  v50(v51, v42, v43);
  LOBYTE(v90[0]) = 3;
  v52 = sub_22E71F390();
  sub_22E71F3DC(v52, v54, v55, v56, *(v53 - 256));
  v57 = sub_22E71F3A4(v88[7]);
  v58(v57);
  LOBYTE(v90[0]) = 4;
  v59 = sub_22E71F390();
  sub_22E71F3DC(v59, v61, v62, v63, *(v60 - 256));
  v64 = sub_22E71F3A4(v88[8]);
  v65(v64);
  v91 = 5;
  v66 = sub_22E71ECDC();
  sub_22E71F3DC(&type metadata for Asset.Protector, &v91, v34, &type metadata for Asset.Protector, v66);
  v67 = (v36 + v88[9]);
  v68 = v90[1];
  *v67 = v90[0];
  v67[1] = v68;
  LOBYTE(v90[0]) = 6;
  sub_22E71F378();
  v71 = sub_22E71EF04(v69, v70, &protocol conformance descriptor for Credential);
  sub_22E71F3DC(v78, v90, v34, v78, v71);
  v72 = sub_22E71F340();
  v73(v72);
  sub_22E71D840(v31, v36 + v88[10]);
  sub_22E71ED30(v36, v77, type metadata accessor for AssetUploadRequest);
  sub_22E6CF2F4(v86);
  return sub_22E71ED8C(v36);
}

Swift::Int sub_22E71ECA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  AssetUploadRequest.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E71ECDC()
{
  result = qword_27DA6D8B0;
  if (!qword_27DA6D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8B0);
  }

  return result;
}

uint64_t sub_22E71ED30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22E6CF978();
  v4 = sub_22E6D368C();
  v5(v4);
  return a2;
}

uint64_t sub_22E71ED8C(uint64_t a1)
{
  v2 = type metadata accessor for AssetUploadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E71EDE8(void *a1)
{
  a1[1] = sub_22E71EF04(&qword_27DA6D4B8, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  a1[2] = sub_22E71EF04(&qword_27DA6D488, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  a1[3] = sub_22E71EF04(&qword_27DA6D8B8, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  result = sub_22E71EF04(&qword_27DA6D8C0, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  a1[4] = result;
  return result;
}

uint64_t sub_22E71EF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E71EFF4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Credential(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetUploadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E71F20C()
{
  result = qword_27DA6D8E0;
  if (!qword_27DA6D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8E0);
  }

  return result;
}

unint64_t sub_22E71F264()
{
  result = qword_27DA6D8E8;
  if (!qword_27DA6D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8E8);
  }

  return result;
}

unint64_t sub_22E71F2BC()
{
  result = qword_27DA6D8F0;
  if (!qword_27DA6D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8F0);
  }

  return result;
}

uint64_t sub_22E71F350(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_22E71F3C0()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_22E71F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_22E71F3F4(uint64_t a1)
{
  v7 = sub_22E6CF1CC(&qword_27DA6D938, &qword_22E72C3E8);
  v8 = sub_22E722390();
  v6[0] = a1;
  v2 = sub_22E6CF214(v6, v7);
  sub_22E721B94(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_22E6CF2F4(v6);
  return v3;
}

uint64_t sub_22E71F4B0()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D900);
  sub_22E6E3578(v0, qword_27DA6D900);
  type metadata accessor for LoadingRequestHandler(0);
  sub_22E6CF1CC(&qword_27DA6D928, &qword_22E72C3C0);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E71F56C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_22E721D2C(a1, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a4(v13, a2, a3, v4, v9, v10);
  sub_22E6CF2F4(a1);
  return v15;
}

id sub_22E71F678(void *a1)
{
  v2 = v1;
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_22E722320(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type, &v16 - v5);
  v7 = type metadata accessor for UTType();
  if (sub_22E6CF550(v6, 1, v7) == 1)
  {
    sub_22E7222C0(v6, &qword_27DA6CA30, &unk_22E727860);
    v8 = 0;
  }

  else
  {
    v9 = UTType.identifier.getter();
    v11 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = MEMORY[0x2318EC5C0](v9, v11);
  }

  [a1 setContentType_];

  v12 = (v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle);
  v13 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle + 24);
  v14 = v12[4];
  sub_22E6CF214(v12, v13);
  [a1 setContentLength_];
  return [a1 setByteRangeAccessSupported_];
}

uint64_t sub_22E71F820(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E71F954, 0, 0);
}

char *sub_22E71F954()
{
  v26 = v0;
  if (qword_27DA6C488 != -1)
  {
    sub_22E72243C(&qword_27DA6C488);
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D900);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = sub_22E709F3C();
    v9 = sub_22E709F3C();
    v25 = v9;
    *v8 = 136315650;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_22E706BF8(v12, v14, &v25);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2048;
    v16 = [v10 requestedOffset];

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    v17 = [v10 requestedLength];

    *(v8 + 24) = v17;
    _os_log_impl(&dword_22E6C9000, v4, v5, "LoadingRequestHandler.handleDataRequest:%s offset:%lld length:%ld", v8, 0x20u);
    sub_22E6CF2F4(v9);
    sub_22E7099AC();
    sub_22E6E3CE4();
  }

  else
  {
  }

  v18 = v0[5];
  v19 = [v18 requestedOffset];
  result = [v18 requestedLength];
  if (__OFADD__(v19, result))
  {
    __break(1u);
  }

  else if (&result[v19] >= v19)
  {
    sub_22E6CF214((v0[6] + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle), *(v0[6] + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle + 24));
    swift_task_alloc();
    sub_22E6ECB74();
    v0[13] = v21;
    *v21 = v22;
    v21[1] = sub_22E71FC5C;
    sub_22E709BF0();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E71FC5C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;
  *(v4 + 112) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E71FD5C()
{
  sub_22E6E3BDC();
  MEMORY[0x2318EC7E0](*(v0 + 80));
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 120) = v1;
  *v1 = v2;
  sub_22E72245C(v1);
  sub_22E6ECBB8();

  return MEMORY[0x2822005A8](v3, v4, v5, v6, v7);
}

uint64_t sub_22E71FDE8()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E71FEE4()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v4 + 8))(v3, v5);

    sub_22E6E3AD8();

    return v6();
  }

  else
  {
    v8 = v0[5];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v8 respondWithData_];

    sub_22E6EC710(v1, v2);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[15] = v10;
    *v10 = v11;
    sub_22E72245C(v10);
    sub_22E6ECBB8();

    return MEMORY[0x2822005A8](v12, v13, v14, v15, v16);
  }
}

uint64_t sub_22E720044()
{
  sub_22E6E3BDC();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E7200AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  sub_22E6E3AD8();

  return v4();
}

uint64_t sub_22E720154(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E7202C0, 0, 0);
}

uint64_t sub_22E7202C0()
{
  v88 = v0;
  if (qword_27DA6C488 != -1)
  {
    sub_22E72243C(&qword_27DA6C488);
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  *(v0 + 136) = sub_22E6E3578(v2, qword_27DA6D900);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = sub_22E709FA8();
    v87 = sub_22E709F3C();
    *v7 = 136315138;
    *(v0 + 40) = v6;
    v8 = _Pointer.debugDescription.getter();
    v10 = sub_22E706BF8(v8, v9, &v87);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_22E6C9000, v4, v5, "LoadingRequestHandler.handle, entering - loadingRequest:%s", v7, 0xCu);
    sub_22E722484();
    sub_22E6E3CC8();
  }

  v11 = [*(v0 + 48) contentInformationRequest];
  if (v11)
  {
    v12 = v11;
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    sub_22E71F678(v11);
    v19 = [v18 request];
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    URLRequest.url.getter();
    (*(v16 + 8))(v14, v15);
    if (sub_22E6CF550(v17, 1, v13) == 1)
    {
      v20 = *(v0 + 64);

      sub_22E7222C0(v20, &qword_27DA6C940, &qword_22E7273D0);
    }

    else
    {
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = *(v0 + 104);
      v24 = *(v0 + 112);
      v25 = *(v0 + 48);
      (*(v24 + 32))(v21, *(v0 + 64), v23);
      (*(v24 + 16))(v22, v21, v23);
      v26 = Dictionary.init(dictionaryLiteral:)();
      v27 = objc_allocWithZone(MEMORY[0x277CCAA40]);
      v29 = sub_22E721A7C(v22, 206, 0, 0, v26, v28);
      [v25 setResponse_];

      v30 = v25;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 48);
        v34 = sub_22E709FA8();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = [v33 response];
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&dword_22E6C9000, v31, v32, "Returning Response w/ ETag for AVAssetCache %@", v34, 0xCu);
        sub_22E7222C0(v35, &qword_27DA6CA08, &qword_22E727840);
        sub_22E6E3CE4();
        sub_22E6E3CE4();
      }

      v37 = *(v0 + 128);
      v38 = *(v0 + 104);
      v39 = *(v0 + 112);

      (*(v39 + 8))(v37, v38);
    }
  }

  v40 = [*(v0 + 48) dataRequest];
  *(v0 + 144) = v40;
  if (!v40)
  {
    v72 = *(v0 + 48);
    [v72 finishLoading];
    v73 = v72;
    v61 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v74))
    {
      v75 = *(v0 + 48);
      v76 = sub_22E709FA8();
      v77 = sub_22E709F3C();
      v87 = v77;
      *v76 = 136315138;
      *(v0 + 16) = v75;
      v78 = _Pointer.debugDescription.getter();
      v80 = sub_22E706BF8(v78, v79, &v87);

      *(v76 + 4) = v80;
      sub_22E7224D4(&dword_22E6C9000, v81, v82, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
      sub_22E6CF2F4(v77);
      sub_22E6E3CC8();
      sub_22E7099AC();
    }

LABEL_24:

    sub_22E7224B8();

    sub_22E6E3AD8();
    sub_22E709BF0();

    __asm { BRAA            X1, X16 }
  }

  v41 = v40;
  if (![v40 requestedOffset] && objc_msgSend(v41, sel_requestedLength) == 2)
  {
    v42 = *(v0 + 48);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v85 = v44;
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 72);
      v48 = *(v0 + 48);
      v49 = sub_22E709FA8();
      v86 = sub_22E709F3C();
      v87 = v86;
      *v49 = 136315138;
      v50 = [v48 request];
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      sub_22E7223F4(&qword_27DA6D930, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v46 + 8))(v45, v47);
      v54 = sub_22E706BF8(v51, v53, &v87);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_22E6C9000, v43, v85, "Returning zero-filled bytes for the first two bytes of a video request %s. These two-bytes are always requested even when the payload can be served from cache.", v49, 0xCu);
      sub_22E6CF2F4(v86);
      sub_22E6E3CE4();
      sub_22E6E3CE4();
    }

    v55 = *(v0 + 48);
    v56 = sub_22E71F3F4(&unk_284338F80);
    v58 = v57;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_22E6CFBBC(v56, v58);
    [v41 respondWithData_];

    [v55 finishLoading];
    v60 = v55;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 48);
      v64 = sub_22E709FA8();
      v87 = sub_22E709F3C();
      *v64 = 136315138;
      *(v0 + 32) = v63;
      v65 = _Pointer.debugDescription.getter();
      v67 = sub_22E706BF8(v65, v66, &v87);

      *(v64 + 4) = v67;
      _os_log_impl(&dword_22E6C9000, v61, v62, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with synthetic response", v64, 0xCu);
      sub_22E722484();
      sub_22E6E3CC8();
    }

    goto LABEL_24;
  }

  v68 = swift_task_alloc();
  *(v0 + 152) = v68;
  *v68 = v0;
  v68[1] = sub_22E720A88;
  sub_22E709BF0();

  return sub_22E71F820(v69);
}

uint64_t sub_22E720A88()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;
  *(v4 + 160) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E720B88()
{
  v16 = v0;

  v1 = *(v0 + 48);
  [v1 finishLoading];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = sub_22E709FA8();
    v7 = sub_22E709F3C();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    v8 = _Pointer.debugDescription.getter();
    v10 = sub_22E706BF8(v8, v9, &v15);

    *(v6 + 4) = v10;
    sub_22E7224D4(&dword_22E6C9000, v11, v12, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
    sub_22E6CF2F4(v7);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  sub_22E7224B8();

  sub_22E6E3AD8();

  return v13();
}

uint64_t sub_22E720CE8()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 48);
  v3 = _convertErrorToNSError(_:)();
  [v2 finishLoadingWithError_];

  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = sub_22E709F3C();
    *v11 = 136315394;
    *(v0 + 24) = v10;
    v13 = _Pointer.debugDescription.getter();
    v15 = sub_22E706BF8(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_22E6C9000, v6, v7, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with error %@", v11, 0x16u);
    sub_22E7222C0(v12, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CE4();
    sub_22E722484();
    sub_22E7099AC();
  }

  else
  {
    v18 = *(v0 + 160);
  }

  sub_22E7224B8();

  sub_22E6E3AD8();

  return v19();
}

Swift::Bool __swiftcall LoadingRequestHandler.resourceLoader(_:shouldWaitForLoadingOfRequestedResource:)(AVAssetResourceLoader _, AVAssetResourceLoadingRequest shouldWaitForLoadingOfRequestedResource)
{
  resourceLoader = _._resourceLoader;
  v4 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = resourceLoader;
  v9 = v2;
  v10 = resourceLoader;
  v11 = sub_22E6E1B80(0, 0, v6, &unk_22E72C360, v8);
  v12 = *&v9[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping];
  v15 = v10;
  v16 = v11;
  os_unfair_lock_lock((v12 + 24));
  sub_22E722104((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  return 1;
}

uint64_t sub_22E721038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;

  return MEMORY[0x2822009F8](sub_22E7210C8, 0, 0);
}

uint64_t sub_22E7210C8()
{
  v1 = *(v0[3].opaque[0] + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity);
  os_unfair_lock_lock((v1 + 24));
  v0[2].opaque[1] = 0;
  v0[2].opaque[0] = 0;
  os_activity_scope_enter(*(v1 + 16), v0 + 2);
  v2 = v0[2].opaque[0];
  v3 = v0[2].opaque[1];
  os_unfair_lock_unlock((v1 + 24));
  v0[1].opaque[0] = v2;
  v0[1].opaque[1] = v3;
  v4 = swift_task_alloc();
  v0[4].opaque[0] = v4;
  *v4 = v0;
  v4[1] = sub_22E7211D4;
  v5 = v0[3].opaque[1];

  return sub_22E720154(v5);
}

uint64_t sub_22E7211D4()
{
  sub_22E6E3BDC();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E7212EC()
{
  sub_22E6E3BDC();
  os_activity_scope_leave(v0 + 1);
  sub_22E6E3AD8();

  return v1();
}

id sub_22E721370(uint64_t *a1, void *a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_22E715454(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

Swift::Void __swiftcall LoadingRequestHandler.resourceLoader(_:didCancel:)(AVAssetResourceLoader _, AVAssetResourceLoadingRequest didCancel)
{
  resourceLoader = _._resourceLoader;
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping);
  os_unfair_lock_lock((v4 + 24));
  sub_22E722120((v4 + 16), &state);
  os_unfair_lock_unlock((v4 + 24));
  v5 = state.opaque[0];
  if (state.opaque[0])
  {
    v6 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity);
    os_unfair_lock_lock((v6 + 24));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v6 + 16), &state);
    v7 = state.opaque[0];
    v8 = state.opaque[1];
    os_unfair_lock_unlock((v6 + 24));
    state.opaque[0] = v7;
    state.opaque[1] = v8;
    if (qword_27DA6C488 != -1)
    {
      sub_22E72243C(&qword_27DA6C488);
    }

    v9 = type metadata accessor for Logger();
    sub_22E6E3578(v9, qword_27DA6D900);
    v10 = resourceLoader;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_22E709FA8();
      v27[0] = sub_22E709F3C();
      *v13 = 136315138;
      v14 = _Pointer.debugDescription.getter();
      v16 = sub_22E706BF8(v14, v15, v27);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_22E6C9000, v11, v12, "LoadingRequestHandler.didCancel - loadingRequest:%s", v13, 0xCu);
      sub_22E722484();
      sub_22E7099AC();
    }

    MEMORY[0x2318EC740](v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    os_activity_scope_leave(&state);
  }

  else
  {
    if (qword_27DA6C488 != -1)
    {
      sub_22E72243C(&qword_27DA6C488);
    }

    v17 = type metadata accessor for Logger();
    sub_22E6E3578(v17, qword_27DA6D900);
    v18 = resourceLoader;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_22E709FA8();
      v22 = sub_22E709F3C();
      state.opaque[0] = v22;
      *v21 = 136315138;
      v27[0] = v18;
      v23 = _Pointer.debugDescription.getter();
      v25 = sub_22E706BF8(v23, v24, &state);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22E6C9000, v19, v20, "LoadingRequestHandler.didCancel - loadingRequest:%s - missing task!", v21, 0xCu);
      sub_22E6CF2F4(v22);
      sub_22E6E3CC8();
      sub_22E6E3CE4();
    }
  }
}

uint64_t sub_22E72173C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_22E714C6C(a2), (v4 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

Swift::Bool __swiftcall LoadingRequestHandler.resourceLoader(_:shouldWaitForResponseTo:)(AVAssetResourceLoader _, NSURLAuthenticationChallenge shouldWaitForResponseTo)
{
  resourceLoader = _._resourceLoader;
  v3 = [(AVAssetResourceLoaderInternal *)_._resourceLoader sender:shouldWaitForResponseTo.super.isa];
  if (v3)
  {
    [v3 continueWithoutCredentialForAuthenticationChallenge_];
    swift_unknownObjectRelease();
  }

  return 1;
}

id LoadingRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LoadingRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22E721A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSURL *a6@<X8>)
{
  v7 = v6;
  URL._bridgeToObjectiveC()(a6);
  v14 = v13;
  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16.super.isa = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x2318EC5C0](a3, a4);

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v17 = [v7 initWithURL:v14 statusCode:a2 HTTPVersion:v15 headerFields:v16.super.isa];

  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t sub_22E721B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318EC120]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318EC130]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_22E721C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v14);
  (*(v11 + 16))(v13, a1, a5);
  v16 = sub_22E721D7C(v13, a2, a3, v15, a5, a6);
  (*(v11 + 8))(a1, a5);
  return v16;
}

uint64_t sub_22E721D2C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_22E721D7C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v24[3] = a5;
  v24[4] = a6;
  v15 = sub_22E6DA66C(v24);
  (*(*(a5 - 8) + 32))(v15, a1, a5);
  sub_22E6E3808(v24, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle]);
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  sub_22E6E386C(v14, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type]);
  sub_22E715634();
  sub_22E6CF1CC(&qword_27DA6CA40, &unk_22E72C400);
  sub_22E7223F4(&qword_27DA6CA48, sub_22E715634, MEMORY[0x277D85378]);
  v16 = Dictionary.init(dictionaryLiteral:)();
  sub_22E6CF1CC(&qword_27DA6CA50, &unk_22E727870);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping] = v17;
  if (qword_27DA6C448 != -1)
  {
    swift_once();
  }

  v18 = _os_activity_create(&dword_22E6C9000, "asset-streaming/loading-request-handler", qword_27DA6CDA0, OS_ACTIVITY_FLAG_DEFAULT);
  sub_22E6CF1CC(&qword_27DA6CA58, &unk_22E727880);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity] = v19;
  v23.receiver = a4;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  sub_22E6CF2F4(v24);
  return v20;
}

uint64_t sub_22E722048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  sub_22E6ECB74();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22E6E1F30;

  return sub_22E721038(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for LoadingRequestHandler(uint64_t a1)
{
  result = qword_2814686B8;
  if (!qword_2814686B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E722190(uint64_t a1)
{
  sub_22E722268(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22E722268(uint64_t a1)
{
  if (!qword_2814681E8[0])
  {
    type metadata accessor for UTType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_2814681E8);
    }
  }
}

uint64_t sub_22E7222C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22E6CF1CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22E722320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22E722390()
{
  result = qword_27DA6D940;
  if (!qword_27DA6D940)
  {
    sub_22E6CF2AC(&qword_27DA6D938, &qword_22E72C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D940);
  }

  return result;
}

uint64_t sub_22E7223F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E72243C(uint64_t a1)
{

  return swift_once();
}

void sub_22E722484()
{
  sub_22E6CF2F4(v0);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E7224B8()
{
}

void sub_22E7224D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22E722508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022E72D930 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636552726F727265 && a2 == 0xED00006465766965;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72D950 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEF746E696F70646ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22E7226DC(char a1)
{
  result = 0x636552726F727265;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x456E776F6E6B6E75;
      break;
    case 4:
      result = 0x6C616E7265746E69;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_22E7227B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E722508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E7227DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E7226D4();
  *a1 = result;
  return result;
}

uint64_t sub_22E722804(uint64_t a1)
{
  v2 = sub_22E722F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722840(uint64_t a1)
{
  v2 = sub_22E722F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E72287C(uint64_t a1)
{
  v2 = sub_22E723024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7228B8(uint64_t a1)
{
  v2 = sub_22E723024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7228F4(uint64_t a1)
{
  v2 = sub_22E723078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722930(uint64_t a1)
{
  v2 = sub_22E723078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E72296C(uint64_t a1)
{
  v2 = sub_22E7230CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7229A8(uint64_t a1)
{
  v2 = sub_22E7230CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7229E4(uint64_t a1)
{
  v2 = sub_22E722F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722A20(uint64_t a1)
{
  v2 = sub_22E722F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E722A5C(uint64_t a1)
{
  v2 = sub_22E722FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722A98(uint64_t a1)
{
  v2 = sub_22E722FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCError.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6D958, &qword_22E72C410);
  sub_22E6CF988();
  v49 = v4;
  v50 = v3;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  sub_22E6EB4DC();
  v48 = v6;
  sub_22E6CF1CC(&qword_27DA6D960, &qword_22E72C418);
  sub_22E6CF988();
  v46 = v8;
  v47 = v7;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  sub_22E6EB4DC();
  v45 = v10;
  sub_22E6CF1CC(&qword_27DA6D968, &qword_22E72C420);
  sub_22E6CF988();
  v43 = v12;
  v44 = v11;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v42 = v14;
  sub_22E6CF1CC(&qword_27DA6D970, &qword_22E72C428);
  sub_22E6CF988();
  v40 = v16;
  v41 = v15;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  sub_22E6EB4DC();
  v39 = v18;
  sub_22E6CF1CC(&qword_27DA6D978, &qword_22E72C430);
  sub_22E6CF988();
  v37 = v20;
  v38 = v19;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = sub_22E6CF1CC(&qword_27DA6D980, &qword_22E72C438);
  sub_22E6CF988();
  v26 = v25;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  v29 = &v36 - v28;
  v30 = *v1;
  sub_22E6CF214(a1, a1[3]);
  sub_22E722F28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v52 = 1;
      sub_22E723078();
      v32 = v39;
      sub_22E723F18(&type metadata for XPCError.ErrorReceivedCodingKeys, &v52);
      v34 = v40;
      v33 = v41;
      goto LABEL_7;
    case 2:
      v53 = 2;
      sub_22E723024();
      v32 = v42;
      sub_22E723F18(&type metadata for XPCError.CorruptedMessageCodingKeys, &v53);
      v34 = v43;
      v33 = v44;
      goto LABEL_7;
    case 3:
      v54 = 3;
      sub_22E722FD0();
      v32 = v45;
      sub_22E723F18(&type metadata for XPCError.UnknownEndpointCodingKeys, &v54);
      v34 = v46;
      v33 = v47;
      goto LABEL_7;
    case 4:
      v55 = 4;
      sub_22E722F7C();
      v32 = v48;
      sub_22E723F18(&type metadata for XPCError.InternalErrorCodingKeys, &v55);
      v34 = v49;
      v33 = v50;
LABEL_7:
      (*(v34 + 8))(v32, v33);
      break;
    default:
      v51 = 0;
      sub_22E7230CC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v23, v38);
      break;
  }

  return (*v31)(v29, v24);
}

unint64_t sub_22E722F28()
{
  result = qword_27DA6D988;
  if (!qword_27DA6D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D988);
  }

  return result;
}

unint64_t sub_22E722F7C()
{
  result = qword_27DA6D990;
  if (!qword_27DA6D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D990);
  }

  return result;
}

unint64_t sub_22E722FD0()
{
  result = qword_27DA6D998;
  if (!qword_27DA6D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D998);
  }

  return result;
}

unint64_t sub_22E723024()
{
  result = qword_27DA6D9A0;
  if (!qword_27DA6D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9A0);
  }

  return result;
}

unint64_t sub_22E723078()
{
  result = qword_27DA6D9A8;
  if (!qword_27DA6D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9A8);
  }

  return result;
}

unint64_t sub_22E7230CC()
{
  result = qword_27DA6D9B0;
  if (!qword_27DA6D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9B0);
  }

  return result;
}

Swift::Int XPCError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  return Hasher._finalize()();
}

uint64_t XPCError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  sub_22E6CF1CC(&qword_27DA6D9B8, &qword_22E72C440);
  sub_22E6CF988();
  v64 = v3;
  v65 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  sub_22E6EB4DC();
  v70 = v6;
  sub_22E6CF1CC(&qword_27DA6D9C0, &qword_22E72C448);
  sub_22E6CF988();
  v62 = v7;
  v63 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  sub_22E6EB4DC();
  v69 = v10;
  sub_22E6CF1CC(&qword_27DA6D9C8, &qword_22E72C450);
  sub_22E6CF988();
  v60 = v12;
  v61 = v11;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v66 = v14;
  sub_22E6CF1CC(&qword_27DA6D9D0, &qword_22E72C458);
  sub_22E6CF988();
  v58 = v16;
  v59 = v15;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = sub_22E6CF1CC(&qword_27DA6D9D8, &qword_22E72C460);
  sub_22E6CF988();
  v57 = v21;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v25 = sub_22E6CF1CC(&qword_27DA6D9E0, &unk_22E72C468);
  sub_22E6CF988();
  v68 = v26;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  sub_22E6CF214(a1, a1[3]);
  sub_22E722F28();
  v30 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return sub_22E6CF2F4(a1);
  }

  v55 = v20;
  v56 = v24;
  v71 = v19;
  v31 = v69;
  v32 = v70;
  v33 = v29;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C();
  if (v36 == v37 >> 1)
  {
    v38 = v68;
LABEL_9:
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v49 = &type metadata for XPCError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v33, v25);
    return sub_22E6CF2F4(a1);
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
  }

  else
  {
    v53 = *(v35 + v36);
    v39 = sub_22E6F3764();
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v54 = v39;
    if (v41 != v43 >> 1)
    {
      v38 = v68;
      v33 = v29;
      goto LABEL_9;
    }

    v44 = v67;
    v45 = v68;
    switch(v53)
    {
      case 1:
        v73 = 1;
        sub_22E723078();
        v31 = v71;
        sub_22E723EF4(&type metadata for XPCError.ErrorReceivedCodingKeys, &v73);
        swift_unknownObjectRelease();
        v51 = v58;
        v50 = v59;
        goto LABEL_15;
      case 2:
        v74 = 2;
        sub_22E723024();
        v31 = v66;
        sub_22E723EF4(&type metadata for XPCError.CorruptedMessageCodingKeys, &v74);
        swift_unknownObjectRelease();
        v51 = v60;
        v50 = v61;
        goto LABEL_15;
      case 3:
        v75[0] = 3;
        sub_22E722FD0();
        sub_22E723EF4(&type metadata for XPCError.UnknownEndpointCodingKeys, v75);
        swift_unknownObjectRelease();
        v50 = v62;
        v51 = v63;
LABEL_15:
        (*(v51 + 8))(v31, v50);
        break;
      case 4:
        v75[1] = 4;
        sub_22E722F7C();
        v39 = v29;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v65 + 8))(v32, v64);
        break;
      default:
        v72 = 0;
        sub_22E7230CC();
        v46 = v56;
        sub_22E723EF4(&type metadata for XPCError.InitializationFailureCodingKeys, &v72);
        swift_unknownObjectRelease();
        (*(v57 + 8))(v46, v55);
        break;
    }

    (*(v45 + 8))(v39, v25);
    *v44 = v53;
    return sub_22E6CF2F4(a1);
  }

  return result;
}

unint64_t sub_22E723858()
{
  result = qword_27DA6D9E8;
  if (!qword_27DA6D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9E8);
  }

  return result;
}

uint64_t sub_22E7238BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22E723944(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E723A74()
{
  result = qword_27DA6D9F0;
  if (!qword_27DA6D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9F0);
  }

  return result;
}

unint64_t sub_22E723ACC()
{
  result = qword_27DA6D9F8;
  if (!qword_27DA6D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9F8);
  }

  return result;
}

unint64_t sub_22E723B24()
{
  result = qword_27DA6DA00;
  if (!qword_27DA6DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA00);
  }

  return result;
}

unint64_t sub_22E723B7C()
{
  result = qword_27DA6DA08;
  if (!qword_27DA6DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA08);
  }

  return result;
}

unint64_t sub_22E723BD4()
{
  result = qword_27DA6DA10;
  if (!qword_27DA6DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA10);
  }

  return result;
}

unint64_t sub_22E723C2C()
{
  result = qword_27DA6DA18;
  if (!qword_27DA6DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA18);
  }

  return result;
}

unint64_t sub_22E723C84()
{
  result = qword_27DA6DA20;
  if (!qword_27DA6DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA20);
  }

  return result;
}

unint64_t sub_22E723CDC()
{
  result = qword_27DA6DA28;
  if (!qword_27DA6DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA28);
  }

  return result;
}

unint64_t sub_22E723D34()
{
  result = qword_27DA6DA30;
  if (!qword_27DA6DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA30);
  }

  return result;
}

unint64_t sub_22E723D8C()
{
  result = qword_27DA6DA38;
  if (!qword_27DA6DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA38);
  }

  return result;
}

unint64_t sub_22E723DE4()
{
  result = qword_27DA6DA40;
  if (!qword_27DA6DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA40);
  }

  return result;
}

unint64_t sub_22E723E3C()
{
  result = qword_27DA6DA48;
  if (!qword_27DA6DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA48);
  }

  return result;
}

unint64_t sub_22E723E94()
{
  result = qword_27DA6DA50;
  if (!qword_27DA6DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA50);
  }

  return result;
}

uint64_t sub_22E723EF4(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E723F18(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E723F38()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[7] = sub_22E6E3EA4();
  sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  v1[8] = sub_22E6E3EA4();
  v3 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = sub_22E6E3EA4();
  v4 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = sub_22E6E3EA4();

  return MEMORY[0x2822009F8](sub_22E7240BC, v0, 0);
}

uint64_t sub_22E7240BC(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 120) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E7240D8()
{
  sub_22E6E3BDC();
  v1 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[15] + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results, v0[9]);

  return MEMORY[0x2822009F8](sub_22E724160, v1, 0);
}

uint64_t sub_22E724160()
{
  sub_22E6E3D08();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  MEMORY[0x2318EC7E0](v3);
  (*(v2 + 8))(v1, v3);
  v5 = sub_22E7245B8();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_22E724248;
  v7 = v0[12];
  v8 = v0[8];

  return MEMORY[0x2822005A8](v8, v4, v5, v7, v0 + 2);
}

uint64_t sub_22E724248()
{
  sub_22E6E3BDC();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_22E72451C;
  }

  else
  {
    v5 = sub_22E724350;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22E724350()
{
  v1 = v0[8];
  if (sub_22E6CF550(v1, 1, v0[6]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
LABEL_5:

    sub_22E6E3AD8();
    goto LABEL_7;
  }

  sub_22E6F4678(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  v7 = v0[7];
  v8 = v0[4];
  (*(v4 + 8))(v0[14], v0[12]);
  sub_22E6CE328(v7, v8);

  sub_22E6E3AD8();
LABEL_7:

  return v6();
}

uint64_t sub_22E72451C()
{
  sub_22E6E3D08();
  (*(v0[13] + 8))(v0[14], v0[12]);

  sub_22E6E3AD8();

  return v1();
}

unint64_t sub_22E7245B8()
{
  result = qword_27DA6DA58;
  if (!qword_27DA6DA58)
  {
    type metadata accessor for AssetDownloadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA58);
  }

  return result;
}

uint64_t sub_22E724630(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return sub_22E6F4C34(a1, v1);
}

uint64_t sub_22E72464C()
{
  sub_22E6E3BDC();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22E7246E8;

  return sub_22E6D92AC(v0 + 2);
}

uint64_t sub_22E7246E8()
{
  sub_22E6E3BDC();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_22E72480C, v4, 0);
  }

  else
  {
    sub_22E6E3AD8();

    return v5();
  }
}

uint64_t AssetDownloadCoordinator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetDownloadCoordinator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()()
{
  sub_22E6E3D08();
  v3 = v2;
  v6 = (*(*v0 + 104) + **(*v0 + 104));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22E6F48E8;

  return v6(v3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)()
{
  sub_22E6E3D08();
  v3 = v2;
  v6 = (*(*v0 + 112) + **(*v0 + 112));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22E6F4C30;

  return v6(v3);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA48]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB88]();
}