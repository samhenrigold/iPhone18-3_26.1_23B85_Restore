uint64_t FMImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A77A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CF54();

  return sub_24A77A114(a1, v6, a2, a3);
}

unint64_t sub_24A77A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24A82CF84();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_24A77A29C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24A77A2BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A77A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24A82D2D4())
  {
    sub_24A82D984();
    v13 = sub_24A82D974();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24A82D2D4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24A82D2B4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24A82D864();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24A77A0B8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_24A77A604()
{
  result = qword_27EF5E480[0];
  if (!qword_27EF5E480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5E480);
  }

  return result;
}

uint64_t sub_24A77A764(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E190, &unk_24A838C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A77A834()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24A7779EC(*(v0 + 48), v0 + v1, *v2, v2[1]);
}

void sub_24A77A8CC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_24A67E0F0(a1, a2);
  }
}

void *sub_24A77A8D8()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24A778144(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v0[2], v0[3], v0[4], v0[5]);
}

id sub_24A77A978(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_24A681458(a1, a2);
  }
}

void sub_24A77A9CC()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_24A77571C(v0 + v1, *v2, *(v2 + 8));
}

uint64_t type metadata accessor for FMIPRepairRequest(uint64_t a1)
{
  result = qword_27EF5E510;
  if (!qword_27EF5E510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A77AB10()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78DE0) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v12 = MEMORY[0x277D837D0];
  *&v11 = v4;
  *(&v11 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);

  sub_24A6A50DC(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v10, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v5);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A77AC48()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

FMIPCore::FMIPActionStatus sub_24A77ACC4@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = type metadata accessor for FMIPDevice(0);
    sub_24A77B054(v7 + *(v9 + 124) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v6);
    v10 = type metadata accessor for FMIPEraseMetadata(0);
    if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
    {
      result = sub_24A77B0C4(v6);
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_8;
    }

    v11 = *v6;
    sub_24A77B12C(v6);
    result = FMIPActionStatus.init(rawValue:)(qword_24A8383F8[v11]).value;
    LOBYTE(v8) = v13;
    if (v13 == 18)
    {
      LOBYTE(v8) = 0;
    }
  }

LABEL_8:
  *a1 = v8;
  return result;
}

unint64_t sub_24A77AE6C(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPEraseResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A77B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A77B0C4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A77B12C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPEraseMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItem.init(unknownItem:locations:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FMIPUnknownItem(0);
  *(a3 + v6[15]) = *(a1 + v6[15]);
  *(a3 + v6[13]) = *(a1 + v6[13]);
  v7 = v6[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a3 + v7);
  *v10 = v8;
  v10[1] = v9;
  v11 = sub_24A82CAA4();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  *(a3 + v6[16]) = *(a1 + v6[16]);
  *(a3 + v6[7]) = *(a1 + v6[7]);
  v21 = a2;

  sub_24A7883D8(&v21);

  *(a3 + v6[8]) = v21;
  sub_24A78B768(a1 + v6[9], a3 + v6[9], type metadata accessor for FMIPProductType);
  *(a3 + v6[10]) = *(a1 + v6[10]);
  *(a3 + v6[14]) = *(a1 + v6[14]);
  v12 = v6[12];
  v13 = *(a1 + v12);
  *(a3 + v12) = v13;
  sub_24A67E964(a1 + v6[11], a3 + v6[11], &qword_27EF5E520, &qword_24A8384B0);
  v14 = v6[5];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a3 + v14);
  *v17 = v15;
  v17[1] = v16;
  *(a3 + v6[17]) = *(a1 + v6[17]);
  *(a3 + v6[18]) = *(a1 + v6[18]);
  v18 = *(a1 + v6[19]);
  v19 = v13;

  result = sub_24A78B838(a1, type metadata accessor for FMIPUnknownItem);
  *(a3 + v6[19]) = v18;
  return result;
}

uint64_t sub_24A77B3B0()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77B3F8(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v2);
  return sub_24A82DD24();
}

FMIPCore::FMIPUnknownItemAlertState_optional __swiftcall FMIPUnknownItemAlertState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

FMIPCore::FMIPUnknownItemObservationType_optional __swiftcall FMIPUnknownItemObservationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPUnknownItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82CAA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPUnknownItem.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPUnknownItem(0) + 20));

  return v1;
}

uint64_t FMIPUnknownItem.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPUnknownItem(0) + 24));

  return v1;
}

double FMIPUnknownItem.locations.getter()
{
  type metadata accessor for FMIPUnknownItem(0);

  return result;
}

uint64_t FMIPUnknownItem.observationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

void *FMIPUnknownItem.unknownBeacon.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPUnknownItem(0) + 48));
  v2 = v1;
  return v1;
}

uint64_t FMIPUnknownItem.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t FMIPUnknownItem.state.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t FMIPUnknownItem.alertState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

void *FMIPUnknownItem.isRequestable.getter()
{
  result = *(v0 + *(type metadata accessor for FMIPUnknownItem(0) + 48));
  if (result)
  {
    return (([result capabilities] >> 13) & 1);
  }

  return result;
}

unint64_t sub_24A77B988(char a1)
{
  result = 0x6174537472656C61;
  switch(a1)
  {
    case 1:
      result = 0x696C696261706163;
      break;
    case 2:
      result = 0x656C646E6168;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x65726F6E67497369;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x54746375646F7270;
      break;
    case 9:
      result = 0x746176726573626FLL;
      break;
    case 10:
      result = 0x6574617473;
      break;
    case 11:
      result = 0x426E776F6E6B6E75;
      break;
    case 12:
      result = 0x61646174654D7475;
      break;
    case 13:
      result = 0x794D646E69467369;
      break;
    case 14:
      result = 0x68736F507369;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A77BB68(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A77B988(*a1);
  v5 = v4;
  if (v3 == sub_24A77B988(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A77BBF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A77B988(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A77BC54(uint64_t a1)
{
  sub_24A77B988(*v1);
  sub_24A82D094();
}

uint64_t sub_24A77BCA8(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A77B988(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A77BD08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A78B604(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A77BD38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A77B988(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A77BD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A78B604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A77BDB4(uint64_t a1)
{
  v2 = sub_24A7882DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A77BDF0(uint64_t a1)
{
  v2 = sub_24A7882DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v57);
  v54 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24A82CAA4();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A6BBA94(&qword_27EF5E528, &qword_24A8384B8);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37[-v9];
  v11 = type metadata accessor for FMIPUnknownItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v59 = a1;
  sub_24A67DF6C(a1, v14);
  sub_24A7882DC();
  v15 = v58;
  sub_24A82DD64();
  if (!v15)
  {
    v48 = v13;
    v49 = v5;
    v58 = v7;
    v16 = v56;
    v61 = 0;
    sub_24A788330();
    sub_24A82DA84();
    v17 = v60;
    v61 = 1;
    sub_24A70B3A4();
    sub_24A82DA84();
    v47 = v17;
    v19 = v60;
    LOBYTE(v60) = 2;
    v20 = sub_24A82DA44();
    v44 = v19;
    v45 = v20;
    v46 = v21;
    LOBYTE(v60) = 3;
    sub_24A67F050(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_24A82DA84();
    LOBYTE(v60) = 4;
    v43 = sub_24A82DA54();
    LOBYTE(v60) = 5;
    v42 = sub_24A82DA54();
    sub_24A6BBA94(&qword_27EF5E540, &unk_24A8384C0);
    v61 = 6;
    sub_24A78A2F8(&qword_27EF5E548, sub_24A687EF0, MEMORY[0x277D83978]);
    sub_24A82DA84();
    v41 = v60;
    LOBYTE(v60) = 7;
    v39 = sub_24A82DA44();
    v40 = v22;
    LOBYTE(v60) = 8;
    sub_24A67F050(&qword_27EF5E550, type metadata accessor for FMIPProductType, &protocol conformance descriptor for FMIPProductType);
    sub_24A82DA84();
    v61 = 9;
    sub_24A788384();
    v57 = v8;
    v23 = v10;
    sub_24A82DA84();
    v24 = v60;
    LOBYTE(v60) = 12;
    sub_24A67F050(&qword_27EF5E560, type metadata accessor for FMIPUnknownItemUTMetadata, &protocol conformance descriptor for FMIPUnknownItemUTMetadata);
    sub_24A82DA84();
    LOBYTE(v60) = 13;
    v25 = sub_24A82DA54();
    LOBYTE(v60) = 14;
    v38 = sub_24A82DA54();
    LOBYTE(v60) = 15;
    sub_24A82DA64();
    v27 = v26;
    v29 = v48;
    v28 = v49;
    v48[v11[15]] = v47;
    v30 = v45;
    *&v29[v11[13]] = v44;
    v31 = &v29[v11[6]];
    v32 = v46;
    *v31 = v30;
    v31[1] = v32;
    (*(v55 + 16))(v29, v58, v28);
    v29[v11[16]] = v43 & 1;
    v29[v11[7]] = v42 & 1;
    v60 = v41;

    sub_24A7883D8(&v60);

    (*(v55 + 8))(v58, v49);
    (*(v16 + 8))(v23, v57);
    v33 = v48;
    *&v48[v11[8]] = v60;
    v34 = (v33 + v11[5]);
    v35 = v40;
    *v34 = v39;
    v34[1] = v35;
    sub_24A78B7D0(v54, v33 + v11[9], type metadata accessor for FMIPProductType);
    *(v33 + v11[10]) = v24;
    *(v33 + v11[14]) = 0;
    *(v33 + v11[12]) = 0;
    v36 = v11[11];
    sub_24A78B7D0(v53, v33 + v36, type metadata accessor for FMIPUnknownItemUTMetadata);
    (*(v50 + 56))(v33 + v36, 0, 1, v52);
    *(v33 + v11[17]) = v25 & 1;
    *(v33 + v11[18]) = v38 & 1;
    *(v33 + v11[19]) = v27;
    sub_24A78B7D0(v33, v51, type metadata accessor for FMIPUnknownItem);
  }

  return sub_24A6876E8(v59);
}

void FMIPUnknownItem.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A838490;
  v4 = *MEMORY[0x277D497D0];
  *(inited + 32) = *MEMORY[0x277D497D0];
  v5 = *MEMORY[0x277D49790];
  *(inited + 40) = 4;
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D497A0];
  *(inited + 56) = 256;
  *(inited + 64) = v6;
  *(inited + 72) = 64;
  v157 = v4;
  v7 = v5;
  v8 = v6;
  v9 = sub_24A78A1B8(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  v10 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v167[0] = v9;
  sub_24A784AB0(0x2000, v10, isUniquelyReferenced_nonNull_native);
  v12 = v9 + 64;
  v13 = 1 << v9[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v167[0] + 8);
  v16 = (v13 + 63) >> 6;
  v159 = v167[0];

  v156 = MEMORY[0x277D84F90];
  for (i = 0; v15; *&v156[8 * v27 + 32] = v2)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (i << 9) | (8 * v20);
      v2 = *(*(v159 + 7) + v21);
      v22 = *(*(v159 + 6) + v21);
      v23 = [a1 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
      v24 = sub_24A82CEF4();

      if (*(v24 + 16))
      {
        sub_24A77EF00(v22);
        if (v25)
        {
          break;
        }
      }

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v156 = sub_24A7801A0(0, *(v156 + 2) + 1, 1, v156, &qword_27EF5E780, &qword_24A838D88);
    }

    v27 = *(v156 + 2);
    v26 = *(v156 + 3);
    if (v27 >= v26 >> 1)
    {
      v156 = sub_24A7801A0((v26 > 1), v27 + 1, 1, v156, &qword_27EF5E780, &qword_24A838D88);
    }

    *(v156 + 2) = v27 + 1;
  }

  while (1)
  {
LABEL_6:
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = v12[v19];
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_10;
    }
  }

  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24A8327A0;
  *(v28 + 32) = v157;
  v29 = v28 + 32;
  *(v28 + 40) = xmmword_24A835E90;
  v30 = sub_24A78A0C0(v28);
  swift_setDeallocating();
  sub_24A67F378(v29, &qword_27EF5DD08, &unk_24A8384E0);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v162 = MEMORY[0x277D84F90];
  while (v33)
  {
LABEL_27:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v35 << 6);
    v39 = *(*(v30 + 48) + 8 * v38);
    v40 = *(v30 + 56) + 16 * v38;
    v2 = *v40;
    v164 = *(v40 + 8);
    v41 = v39;
    v42 = [a1 taskInformation];
    type metadata accessor for SPBeaconTaskName(0);
    v12 = sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
    sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
    v43 = sub_24A82CEF4();

    if (*(v43 + 16) && (v44 = sub_24A77EF00(v41), (v45 & 1) != 0))
    {
      v46 = *(*(v43 + 56) + 8 * v44);

      v47 = [v46 state];

      if (v47 == v2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_24A7801A0(0, *(v162 + 2) + 1, 1, v162, &qword_27EF5E770, &qword_24A838D78);
        }

        v49 = *(v162 + 2);
        v48 = *(v162 + 3);
        if (v49 >= v48 >> 1)
        {
          v162 = sub_24A7801A0((v48 > 1), v49 + 1, 1, v162, &qword_27EF5E770, &qword_24A838D78);
        }

        *(v162 + 2) = v49 + 1;
        *&v162[8 * v49 + 32] = v164;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_63;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 64 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_27;
    }
  }

  v167[0] = byte_285DBD668;
  sub_24A77E918(v162);
  v2 = byte_285DBD668;
  v12 = a1;
  v50 = [a1 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
  sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
  v51 = sub_24A82CEF4();

  if (*(v51 + 16) && (v52 = sub_24A77EF00(v157), (v53 & 1) != 0))
  {
    v54 = *(*(v51 + 56) + 8 * v52);

    v55 = [v54 state];

    if (v55 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24A7801A0(0, unk_285DBD678 + 1, 1, byte_285DBD668, &qword_27EF5E770, &qword_24A838D78);
      }

      v57 = *(v2 + 2);
      v56 = *(v2 + 3);
      if (v57 >= v56 >> 1)
      {
        v2 = sub_24A7801A0((v56 > 1), v57 + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
      }

      *(v2 + 2) = v57 + 1;
      *&v2[8 * v57 + 32] = 2048;
    }
  }

  else
  {
  }

  if (![a1 connected])
  {
    goto LABEL_49;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v59 = *(v2 + 2);
    v58 = *(v2 + 3);
    if (v59 >= v58 >> 1)
    {
      v2 = sub_24A7801A0((v58 > 1), v59 + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
    }

    *(v2 + 2) = v59 + 1;
    *&v2[8 * v59 + 32] = 64;
LABEL_49:
    v60 = [v12 beaconLocations];
    sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
    v61 = sub_24A82D244();

    v17 = v61;
    if (v61 >> 62)
    {
LABEL_64:
      v76 = v17;
      v62 = sub_24A82D744();
      v17 = v76;
      v155 = v2;
      if (!v62)
      {
LABEL_65:
        v64 = MEMORY[0x277D84F90];
        goto LABEL_66;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v155 = v2;
      if (!v62)
      {
        goto LABEL_65;
      }
    }

    if (v62 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_117:
    v2 = sub_24A7801A0(0, *(v2 + 2) + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
  }

  v63 = 0;
  v161 = v17 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  v163 = v62;
  v165 = v17;
  do
  {
    if (v161)
    {
      v65 = MEMORY[0x24C21D180](v63);
    }

    else
    {
      v65 = *(v17 + 8 * v63 + 32);
    }

    v66 = v65;
    FMIPLocation.init(beaconLocation:)(v66, v167);
    v67 = v167[0];
    v68 = BYTE1(v167[0]);
    v69 = BYTE2(v167[0]);
    v70 = BYTE3(v167[0]);
    v71 = v167[1];
    v72 = v167[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_24A77FE20(0, *(v64 + 2) + 1, 1, v64);
    }

    v74 = *(v64 + 2);
    v73 = *(v64 + 3);
    if (v74 >= v73 >> 1)
    {
      v64 = sub_24A77FE20((v73 > 1), v74 + 1, 1, v64);
    }

    ++v63;

    *(v64 + 2) = v74 + 1;
    v75 = &v64[24 * v74];
    v75[32] = v67;
    v75[33] = v68;
    v75[34] = v69;
    v75[35] = v70;
    *(v75 + 5) = v71;
    *(v75 + 6) = v72;
    v17 = v165;
  }

  while (v163 != v63);
LABEL_66:

  v77 = [a1 name];
  v78 = sub_24A82CFC4();
  v80 = v79;

  v81 = type metadata accessor for FMIPUnknownItem(0);
  v82 = (a2 + v81[5]);
  *v82 = v78;
  v82[1] = v80;
  v83 = a2;
  v84 = [a1 identifier];
  sub_24A82CA84();

  *(a2 + v81[16]) = [a1 isAppleAudioAccessory];
  v167[0] = v64;

  sub_24A7883D8(v167);

  *(a2 + v81[8]) = v167[0];
  v85 = [a1 handle];
  if (v85)
  {
    v86 = v85;
    v87 = [v85 destination];

    v88 = sub_24A82CFC4();
    v90 = v89;

    v83 = a2;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  v91 = (v83 + v81[6]);
  *v91 = v88;
  v91[1] = v90;
  *(v83 + v81[7]) = [a1 isIgnored];
  v92 = v81[9];
  v93 = a1;
  sub_24A6D0128(v93, v83 + v92);
  v94 = [v93 observationType];
  if (v94)
  {
    v96 = v156;
    if (v94 != 1)
    {
      sub_24A82D934();
      __break(1u);
      return;
    }

    v95 = 1;
  }

  else
  {
    v95 = 0;
    v96 = v156;
  }

  *(v83 + v81[10]) = v95;
  v97 = [v93 alertState];
  if (v97 >= 5)
  {
    v98 = 4;
  }

  else
  {
    v98 = v97;
  }

  *(v83 + v81[15]) = v98;
  *(v83 + v81[17]) = [v93 isFindMyNetwork];
  *(v83 + v81[18]) = [v93 isPosh];
  v99 = *(v96 + 2);
  if (v99)
  {
    v100 = 0;
    v101 = (v96 + 32);
    do
    {
      v103 = *v101++;
      v102 = v103;
      if ((v103 & ~v100) == 0)
      {
        v102 = 0;
      }

      v100 |= v102;
      --v99;
    }

    while (v99);
  }

  else
  {
    v100 = 0;
  }

  v104 = [v93 productInformation];
  v105 = v81[11];
  if (v104)
  {
    v106 = v104;
    FMIPUnknownItemUTMetadata.init(productInfo:)(v106, (v83 + v105));
    v107 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
    (*(*(v107 - 8) + 56))(v83 + v105, 0, 1, v107);
    v108 = ([v106 capabilities] << 12) & 0x8000 | v100;
    v109 = [v106 capabilities];

    v110 = (v100 >> 16) & 1;
    if ((v109 & 4) == 0)
    {
      LODWORD(v110) = 1;
    }

    if (v110)
    {
      v100 = v108;
    }

    else
    {
      v100 = v108 | 0x10000;
    }

    v83 = a2;
  }

  else
  {
    v111 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
    (*(*(v111 - 8) + 56))(v83 + v105, 1, 1, v111);
  }

  *(v83 + v81[13]) = v100;
  *(v83 + v81[12]) = v93;
  v112 = *(v155 + 2);
  if (v112)
  {
    v113 = 0;
    v114 = (v155 + 32);
    do
    {
      v116 = *v114++;
      v115 = v116;
      if ((v116 & ~v113) == 0)
      {
        v115 = 0;
      }

      v113 |= v115;
      --v112;
    }

    while (v112);
  }

  else
  {
    v113 = 0;
  }

  v117 = v93;

  *(v83 + v81[14]) = v113;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v118 = sub_24A82CDC4();
  sub_24A6797D0(v118, qword_281518F88);
  v119 = v117;
  v120 = sub_24A82CD94();
  v121 = sub_24A82D504();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v167[0] = v166;
    *v122 = 136316162;
    v123 = [v119 productInformation];
    if (v123)
    {
      v124 = v123;
      v125 = [v123 modelName];

      v126 = sub_24A82CFC4();
      v128 = v127;
    }

    else
    {
      v128 = 0xE300000000000000;
      v126 = 7104878;
    }

    v129 = sub_24A68761C(v126, v128, v167);

    *(v122 + 4) = v129;
    *(v122 + 12) = 1024;
    LODWORD(v129) = [v119 isFindMyNetwork];

    *(v122 + 14) = v129;
    *(v122 + 18) = 2080;
    v130 = [v119 taskInformation];
    v131 = sub_24A82CEF4();

    if (*(v131 + 16))
    {
      v132 = sub_24A77EF00(v157);
      if (v133)
      {
        v134 = *(*(v131 + 56) + 8 * v132);
      }
    }

    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v135 = sub_24A82D024();
    v137 = sub_24A68761C(v135, v136, v167);

    *(v122 + 20) = v137;
    *(v122 + 28) = 2080;
    v138 = [v119 taskInformation];
    v139 = sub_24A82CEF4();

    if (*(v139 + 16))
    {
      v140 = sub_24A77EF00(*MEMORY[0x277D497F8]);
      if (v141)
      {
        v142 = *(*(v139 + 56) + 8 * v140);
      }
    }

    v143 = sub_24A82D024();
    v145 = sub_24A68761C(v143, v144, v167);

    *(v122 + 30) = v145;
    *(v122 + 38) = 2080;
    v146 = [v119 taskInformation];
    sub_24A82CEF4();

    v147 = sub_24A82CF04();
    v149 = v148;

    v150 = sub_24A68761C(v147, v149, v167);

    *(v122 + 40) = v150;
    _os_log_impl(&dword_24A675000, v120, v121, "FMIPUnknownItem: Initialized model: %s\nFMIPUnknownItem: isFindMyNetwork: %{BOOL}d\nFMIPUnknownItem: taskInfo -> play sound %s\nFMIPUnknownItem: taskInfo -> stop sound %s\nFMIPUnknownItem: allTaskInfo ->  %s", v122, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v166, -1, -1);
    MEMORY[0x24C21E1D0](v122, -1, -1);

    v83 = a2;
  }

  else
  {
  }

  v151 = [v119 productInformation];

  v152 = 20.0;
  if (v151)
  {
    [v151 rangeDistanceInMeters];
    v154 = v153;

    if (v154 != 0.0)
    {
      v152 = v154;
    }
  }

  *(v83 + v81[19]) = v152;
}

uint64_t FMIPUnknownItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5E570, &unk_24A8384F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7882DC();
  sub_24A82DD84();
  v9 = type metadata accessor for FMIPUnknownItem(0);
  LOBYTE(v11) = *(v3 + v9[15]);
  v12 = 0;
  sub_24A78A2A4();
  sub_24A82DB44();
  if (!v2)
  {
    *&v11 = *(v3 + v9[13]);
    v12 = 1;
    sub_24A714ADC();
    sub_24A82DB44();
    v11 = *(v3 + v9[6]);
    v12 = 2;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
    LOBYTE(v11) = 3;
    sub_24A82CAA4();
    sub_24A67F050(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_24A82DB44();
    LOBYTE(v11) = 4;
    sub_24A82DB14();
    LOBYTE(v11) = 5;
    sub_24A82DB14();
    *&v11 = *(v3 + v9[8]);
    v12 = 6;
    sub_24A6BBA94(&qword_27EF5E540, &unk_24A8384C0);
    sub_24A78A2F8(&qword_27EF5E580, sub_24A6CCE5C, MEMORY[0x277D83948]);
    sub_24A82DB44();
    LOBYTE(v11) = 8;
    type metadata accessor for FMIPProductType(0);
    sub_24A67F050(&qword_27EF5E588, type metadata accessor for FMIPProductType, &protocol conformance descriptor for FMIPProductType);
    sub_24A82DB44();
    LOBYTE(v11) = *(v3 + v9[10]);
    v12 = 9;
    sub_24A78A370();
    sub_24A82DB44();
    LOBYTE(v11) = 10;
    sub_24A82DB34();
    LOBYTE(v11) = 12;
    sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
    sub_24A78A3C4();
    sub_24A82DB44();
    LOBYTE(v11) = 7;
    sub_24A82DB04();
    LOBYTE(v11) = 13;
    sub_24A82DB14();
    LOBYTE(v11) = 14;
    sub_24A82DB14();
    LOBYTE(v11) = 15;
    sub_24A82DB24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPUnknownItem.debugDescription.getter()
{
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6E6B6E5550494D46, 0xEF6D6574496E776FLL);
  MEMORY[0x24C21C9E0](0x69746E656469203ALL, 0xEE00203A72656966);
  sub_24A82CAA4();
  sub_24A67F050(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](0x6E6168202020200ALL, 0xEE0027203A656C64);
  v2 = type metadata accessor for FMIPUnknownItem(0);
  v3 = (v0 + v2[6]);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xEA00000000002165;
    v4 = 0x6C646E6168206F6ELL;
  }

  MEMORY[0x24C21C9E0](v4, v5);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8478E0);
  if (*(*(v0 + v2[8]) + 16))
  {
    v6 = FMIPLocation.debugDescription.getter();
    v8 = v7;
  }

  else
  {
    v6 = 1701736270;
    v8 = 0xE400000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v8);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A847900);
  if (*(v0 + v2[7]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v9, v10);

  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A847920);
  if (*(v0 + v2[17]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v2[17]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v11, v12);

  MEMORY[0x24C21C9E0](0x7974202020200A27, 0xED000027203A6570);
  type metadata accessor for FMIPProductType(0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A847940);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A847960);
  v13 = sub_24A82D224();
  v14 = [v13 description];
  v15 = sub_24A82CFC4();
  v17 = v16;

  MEMORY[0x24C21C9E0](v15, v17);

  MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A847980);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x7473202020200A27, 0xEE0027203A657461);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8479A0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD00000000000001ELL, 0x800000024A8479C0);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](4065831, 0xE300000000000000);
  return 0;
}

uint64_t FMIPUnknownItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_24A82CAA4();
  sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24A82CF64();
  v11 = type metadata accessor for FMIPUnknownItem(0);
  sub_24A82D094();
  if (*(v1 + v11[6] + 8))
  {
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  sub_24A82DCE4();
  sub_24A789570(a1, *(v1 + v11[8]));
  FMIPProductType.hash(into:)(a1);
  MEMORY[0x24C21D5E0](*(v1 + v11[10]));
  sub_24A67E964(v1 + v11[11], v10, &qword_27EF5E520, &qword_24A8384B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    sub_24A78B7D0(v10, v7, type metadata accessor for FMIPUnknownItemUTMetadata);
    sub_24A82DCE4();
    FMIPUnknownItemUTMetadata.hash(into:)(a1);
    sub_24A78B838(v7, type metadata accessor for FMIPUnknownItemUTMetadata);
  }

  v12 = *(v1 + v11[12]);
  sub_24A82DCE4();
  if (v12)
  {
    v13 = v12;
    sub_24A82D5F4();
  }

  MEMORY[0x24C21D5E0](*(v2 + v11[13]));
  MEMORY[0x24C21D5E0](*(v2 + v11[14]));
  MEMORY[0x24C21D5E0](*(v2 + v11[15]));
  sub_24A82DCE4();
  sub_24A82DCE4();
  sub_24A82DCE4();
  v14 = *(v2 + v11[19]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  return MEMORY[0x24C21D610](*&v14);
}

uint64_t FMIPUnknownItem.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77E79C()
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77E7E0(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A77E820(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24A77FE20(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A77E918(uint64_t result)
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

  result = sub_24A7801A0(result, v11, 1, v3, &qword_27EF5E770, &qword_24A838D78);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_24A77EA14(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24A780414(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A77EB80(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_24A692304(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A77ECDC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24A780958(result, v10, 1, v3, &qword_27EF5E658, &qword_24A838C60, type metadata accessor for SPBeaconType);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for SPBeaconType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_24A77EDF8(uint64_t a1)
{
  sub_24A82CAA4();
  sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24A82CF54();

  return sub_24A77F1F4(a1, v2);
}

unint64_t sub_24A77EE94(void *a1)
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)(v4);
  v2 = sub_24A82DD24();

  return sub_24A77F3B4(a1, v2);
}

unint64_t sub_24A77EF00(uint64_t a1)
{
  sub_24A82CFC4();
  sub_24A82DCC4();
  sub_24A82D094();
  v2 = sub_24A82DD24();

  return sub_24A77F920(a1, v2);
}

unint64_t sub_24A77EF90(uint64_t a1)
{
  v2 = sub_24A82D7B4();

  return sub_24A77FA24(a1, v2);
}

unint64_t sub_24A77EFD4(uint64_t a1)
{
  v1 = a1;
  sub_24A82DCC4();
  sub_24A82D094();

  v2 = sub_24A82DD24();

  return sub_24A77FAEC(v1, v2);
}

unint64_t sub_24A77F0D4(uint64_t a1)
{
  sub_24A82DCC4();
  type metadata accessor for CFString(0);
  sub_24A67F050(&qword_27EF5E748, type metadata accessor for CFString, &unk_24A8316DC);
  sub_24A82CD74();
  v2 = sub_24A82DD24();

  return sub_24A77FCA4(a1, v2);
}

unint64_t sub_24A77F188(uint64_t a1)
{
  v1 = a1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  v2 = sub_24A82DD24();

  return sub_24A77FDB0(v1, v2);
}

unint64_t sub_24A77F1F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24A67F050(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24A82CF84();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_24A77F3B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CAE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v44 = sub_24A6BBA94(&qword_27EF5D838, qword_24A834550);
  MEMORY[0x28223BE20](v44);
  v13 = &v35 - v12;
  v45 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v45);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3 + 64;
  v18 = -1 << *(v3 + 32);
  v19 = a2 & ~v18;
  if ((*(v3 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v38 = v11;
    v46 = ~v18;
    v40 = (v7 + 48);
    v41 = v3 + 64;
    v21 = *a1;
    v20 = a1[1];
    v35 = (v7 + 32);
    v37 = (v7 + 8);
    v47 = *(v14 + 72);
    v48 = v20;
    v22 = &unk_24A8343F0;
    v42 = v3;
    v43 = a1;
    v39 = v21;
    do
    {
      sub_24A78B768(*(v3 + 48) + v47 * v19, v16, type metadata accessor for FMReverseGeocodingRequest);
      v23 = *v16 == v21 && v16[1] == v48;
      if (!v23 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v24 = v22;
      if ((sub_24A82D5E4() & 1) == 0)
      {
        goto LABEL_5;
      }

      v25 = v45[6];
      v26 = v22;
      v27 = *(v44 + 48);
      sub_24A67E964(v16 + v25, v13, &qword_27EF5E930, v24);
      sub_24A67E964(a1 + v25, &v13[v27], &qword_27EF5E930, v24);
      v28 = *v40;
      if ((*v40)(v13, 1, v6) == 1)
      {
        v29 = v28(&v13[v27], 1, v6);
        v17 = v41;
        v3 = v42;
        if (v29 != 1)
        {
          goto LABEL_4;
        }

        v22 = v24;
        sub_24A67F378(v13, &qword_27EF5E930, v24);
        a1 = v43;
        v21 = v39;
      }

      else
      {
        v30 = v38;
        sub_24A67E964(v13, v38, &qword_27EF5E930, v24);
        if (v28(&v13[v27], 1, v6) == 1)
        {
          (*v37)(v30, v6);
          v17 = v41;
          v3 = v42;
LABEL_4:
          sub_24A67F378(v13, &qword_27EF5D838, qword_24A834550);
          a1 = v43;
          v22 = v24;
          v21 = v39;
          goto LABEL_5;
        }

        v31 = v36;
        (*v35)(v36, &v13[v27], v6);
        sub_24A67F050(&qword_27EF5D840, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
        v32 = sub_24A82CF84();
        v33 = *v37;
        (*v37)(v31, v6);
        v33(v30, v6);
        sub_24A67F378(v13, &qword_27EF5E930, v26);
        v3 = v42;
        a1 = v43;
        v17 = v41;
        v22 = v26;
        v21 = v39;
        if ((v32 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (*(v16 + v45[7]) == *(a1 + v45[7]) && *(v16 + v45[8]) == *(a1 + v45[8]))
      {
        sub_24A78B838(v16, type metadata accessor for FMReverseGeocodingRequest);
        return v19;
      }

LABEL_5:
      sub_24A78B838(v16, type metadata accessor for FMReverseGeocodingRequest);
      v19 = (v19 + 1) & v46;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

unint64_t sub_24A77F920(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24A82CFC4();
      v8 = v7;
      if (v6 == sub_24A82CFC4() && v8 == v9)
      {
        break;
      }

      v11 = sub_24A82DC04();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_24A77FA24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A78B6B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C21D0D0](v9, a1);
      sub_24A78B714(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A77FAEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x626154736D657469 : 0xD000000000000010;
      v8 = v6 == 2 ? 0xEF64656C62616E45 : 0x800000024A843F00;
      v9 = 0xD000000000000019;
      v10 = *(*(v23 + 48) + v4) ? 0xD000000000000014 : 0xD000000000000019;
      v11 = *(*(v23 + 48) + v4) ? 0x800000024A843ED0 : 0x800000024A843EB0;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v7;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v8;
      v14 = v5 == 2 ? 0x626154736D657469 : 0xD000000000000010;
      v15 = v5 == 2 ? 0xEF64656C62616E45 : 0x800000024A843F00;
      if (v5)
      {
        v9 = 0xD000000000000014;
        v16 = 0x800000024A843ED0;
      }

      else
      {
        v16 = 0x800000024A843EB0;
      }

      v17 = v5 <= 1 ? v9 : v14;
      v18 = v5 <= 1 ? v16 : v15;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_24A82DC04();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24A77FCA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_24A67F050(&qword_27EF5E748, type metadata accessor for CFString, &unk_24A8316DC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24A82CD64();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A77FDB0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_24A77FE20(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A77FF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E7A8, &qword_24A838DB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24A78006C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E7B0, qword_24A838DC0);
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

char *sub_24A7801A0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A6BBA94(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_24A7802EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA48, &qword_24A8352D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 352);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[352 * v8])
    {
      memmove(v12, v13, 352 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A780414(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
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

char *sub_24A78056C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E758, &qword_24A838D68);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24A7806BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E6C8, &unk_24A838CE8);
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

void *sub_24A7807D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_24A6BBA94(a5, a6);
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
    sub_24A6BBA94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24A780958(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_24A6BBA94(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24A780A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA88, &qword_24A838C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A780BB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E730, &qword_24A838D48);
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

uint64_t sub_24A780CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
  v39 = v4;
  result = sub_24A82D964();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_24A6BB350(v41);
      }

      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24A781098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
  v35 = v4;
  result = sub_24A82D964();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24A781354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
  v34 = v4;
  result = sub_24A82D964();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_24A82CFC4();
      sub_24A82DCC4();
      sub_24A82D094();
      v23 = sub_24A82DD24();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24A781610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
  v38 = v4;
  result = sub_24A82D964();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v41 = *(v25 + 1);
      v42 = *v25;
      v39 = *(v25 + 3);
      v40 = *(v25 + 2);
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      if ((v38 & 1) == 0)
      {

        v28 = v26;
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v42;
      *(v17 + 1) = v41;
      *(v17 + 2) = v40;
      *(v17 + 3) = v39;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_24A781904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  sub_24A6BBA94(&qword_27EF5E6D8, &qword_24A838D00);
  v40 = v4;
  result = sub_24A82D964();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24A78B908(v28, v41);
      }

      else
      {
        sub_24A67E964(v28, v41, &unk_27EF5E150, &unk_24A83CCC0);
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24A78B908(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24A781C58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A82CAE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v67 - v9;
  v73 = type metadata accessor for FMReverseGeocodingRequest(0);
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  sub_24A6BBA94(&qword_27EF5E6D0, &qword_24A838CF8);
  v78 = v4;
  v14 = sub_24A82D964();
  v15 = v14;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = *(v13 + 64);
    v68 = v2;
    v69 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v75 = (v6 + 48);
    v76 = v5;
    v70 = (v6 + 8);
    v71 = (v6 + 32);
    v22 = v14 + 64;
    v23 = v73;
    v74 = v21;
    while (v20)
    {
      v36 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
LABEL_15:
      v41 = v36 | (v16 << 6);
      v100 = v37;
      v42 = *(v13 + 48);
      v99 = *(v77 + 72);
      if (v78)
      {
        sub_24A78B7D0(v42 + v99 * v41, v12, type metadata accessor for FMReverseGeocodingRequest);
        v43 = *(v13 + 56) + 288 * v41;
        v44 = *(v43 + 16);
        v79 = *v43;
        v80 = v44;
        v45 = *(v43 + 48);
        v81 = *(v43 + 32);
        v82 = v45;
        v46 = *(v43 + 80);
        v83 = *(v43 + 64);
        v84 = v46;
        v47 = *(v43 + 112);
        v85 = *(v43 + 96);
        v86 = v47;
        v48 = *(v43 + 144);
        v87 = *(v43 + 128);
        v88 = v48;
        v49 = *(v43 + 168);
        v89 = *(v43 + 160);
        v91 = v49;
        v50 = *(v43 + 192);
        v90 = *(v43 + 176);
        v51 = *(v43 + 208);
        v52 = *(v43 + 224);
        v92 = v50;
        v93 = v51;
        v53 = *(v43 + 240);
        v96 = *(v43 + 256);
        v94 = v52;
        v95 = v53;
        v54 = *(v43 + 272);
        v97 = *(v43 + 280);
        v98 = v54;
      }

      else
      {
        sub_24A78B768(v42 + v99 * v41, v12, type metadata accessor for FMReverseGeocodingRequest);
        memcpy(v102, (*(v13 + 56) + 288 * v41), sizeof(v102));
        v97 = *(&v102[17] + 1);
        v98 = *&v102[17];
        v95 = v102[15];
        v96 = v102[16];
        v93 = v102[13];
        v94 = v102[14];
        v92 = v102[12];
        v90 = v102[11];
        v91 = *(&v102[10] + 1);
        v89 = *&v102[10];
        v87 = v102[8];
        v88 = v102[9];
        v85 = v102[6];
        v86 = v102[7];
        v83 = v102[4];
        v84 = v102[5];
        v81 = v102[2];
        v82 = v102[3];
        v79 = v102[0];
        v80 = v102[1];
        sub_24A76ECE4(v102, &v101);
      }

      sub_24A82DCC4();
      sub_24A82D094();
      sub_24A82D5F4();
      sub_24A67E964(&v12[*(v23 + 24)], v10, &qword_27EF5E930, &unk_24A8343F0);
      v55 = v76;
      if ((*v75)(v10, 1, v76) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v56 = v13;
        v57 = v72;
        (*v71)(v72, v10, v55);
        sub_24A82DCE4();
        sub_24A67F050(&qword_27EF5D808, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
        sub_24A82CF64();
        v58 = v57;
        v13 = v56;
        v23 = v73;
        (*v70)(v58, v55);
      }

      sub_24A82DCE4();
      sub_24A82DCE4();
      result = sub_24A82DD24();
      v59 = -1 << *(v15 + 32);
      v60 = result & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v22 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v22 + 8 * v61);
          if (v65 != -1)
          {
            v24 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v60) & ~*(v22 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_24A78B7D0(v12, *(v15 + 48) + v99 * v24, type metadata accessor for FMReverseGeocodingRequest);
      v25 = *(v15 + 56) + 288 * v24;
      v26 = v80;
      *v25 = v79;
      *(v25 + 16) = v26;
      v27 = v82;
      *(v25 + 32) = v81;
      *(v25 + 48) = v27;
      v28 = v84;
      *(v25 + 64) = v83;
      *(v25 + 80) = v28;
      v29 = v86;
      *(v25 + 96) = v85;
      *(v25 + 112) = v29;
      v30 = v88;
      *(v25 + 128) = v87;
      *(v25 + 144) = v30;
      v31 = v91;
      *(v25 + 160) = v89;
      *(v25 + 168) = v31;
      v32 = v92;
      *(v25 + 176) = v90;
      *(v25 + 192) = v32;
      v33 = v94;
      *(v25 + 208) = v93;
      *(v25 + 224) = v33;
      v34 = v96;
      *(v25 + 240) = v95;
      *(v25 + 256) = v34;
      v35 = v97;
      *(v25 + 272) = v98;
      *(v25 + 280) = v35;
      ++*(v15 + 16);
      v21 = v74;
      v20 = v100;
    }

    v38 = v16;
    result = v69;
    while (1)
    {
      v16 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v40 = v69[v16];
      ++v38;
      if (v40)
      {
        v36 = __clz(__rbit64(v40));
        v37 = (v40 - 1) & v40;
        goto LABEL_15;
      }
    }

    if ((v78 & 1) == 0)
    {

      v3 = v68;
      goto LABEL_37;
    }

    v66 = 1 << *(v13 + 32);
    v3 = v68;
    if (v66 >= 64)
    {
      bzero(v69, ((v66 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v69 = -1 << v66;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_24A78238C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A6BBA94(&qword_27EF5E688, &unk_24A838C90);
  v39 = v4;
  result = sub_24A82D964();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24A782768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMIPItem(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_24A6BBA94(&qword_27EF5E648, &qword_24A838C50);
  v40 = v4;
  result = sub_24A82D964();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24A78B7D0(v28, v41, type metadata accessor for FMIPItem);
      }

      else
      {
        sub_24A78B768(v28, v41, type metadata accessor for FMIPItem);
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24A78B7D0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for FMIPItem);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24A782AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMIPDeviceConnectedState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CAA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A6BBA94(&qword_27EF5E640, &unk_24A838C40);
  v43 = v4;
  result = sub_24A82D964();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24A78B7D0(v27 + v28 * v24, v47, type metadata accessor for FMIPDeviceConnectedState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24A78B768(v29 + v28 * v24, v47, type metadata accessor for FMIPDeviceConnectedState);
      }

      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24A78B7D0(v47, *(v12 + 56) + v28 * v20, type metadata accessor for FMIPDeviceConnectedState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24A782F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
  v52 = v4;
  result = sub_24A82D964();
  v7 = result;
  if (*(v5 + 16))
  {
    v51 = v5;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = (v25 + 208 * v24);
      if (v52)
      {
        v55 = *v29;
        v53 = v29[1];
        v54 = *(v29 + 16);
        v60 = *(v29 + 5);
        v61 = *(v29 + 7);
        v62 = *(v29 + 9);
        v63 = *(v29 + 11);
        v59 = *(v29 + 3);
        v57 = v29[14];
        v58 = v29[13];
        v30 = *(v29 + 15);
        v31 = *(v29 + 23);
        v32 = *(v29 + 19);
        v69 = *(v29 + 21);
        v70 = v31;
        v33 = *(v29 + 17);
        v66 = v30;
        v67 = v33;
        v68 = v32;
        v56 = *(v29 + 200);
      }

      else
      {
        *v64 = *v29;
        v34 = *(v29 + 4);
        v36 = *(v29 + 1);
        v35 = *(v29 + 2);
        *&v64[48] = *(v29 + 3);
        *&v64[64] = v34;
        *&v64[16] = v36;
        *&v64[32] = v35;
        v37 = *(v29 + 8);
        v39 = *(v29 + 5);
        v38 = *(v29 + 6);
        *v65 = *(v29 + 7);
        *&v65[16] = v37;
        *&v64[80] = v39;
        *&v64[96] = v38;
        v41 = *(v29 + 10);
        v40 = *(v29 + 11);
        v42 = *(v29 + 9);
        *&v65[73] = *(v29 + 185);
        *&v65[48] = v41;
        *&v65[64] = v40;
        *&v65[32] = v42;
        v56 = v65[88];
        v57 = *v65;
        v58 = *&v64[104];
        v54 = v64[16];
        v53 = *&v64[8];
        v55 = *v64;

        sub_24A71FF60(v64, &v59);
        v61 = *&v64[56];
        v62 = *&v64[72];
        v63 = *&v64[88];
        v59 = *&v64[24];
        v60 = *&v64[40];
        v68 = *&v65[40];
        v69 = *&v65[56];
        v70 = *&v65[72];
        v66 = *&v65[8];
        v67 = *&v65[24];
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v43 = -1 << *(v7 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v14 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v14 + 8 * v45);
          if (v49 != -1)
          {
            v15 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v44) & ~*(v14 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v64[39] = v61;
      *&v64[55] = v62;
      *&v64[71] = v63;
      *&v64[7] = v59;
      *&v64[23] = v60;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v28;
      v17 = *(v7 + 56) + 208 * v15;
      *v17 = v55;
      *(v17 + 8) = v53;
      *(v17 + 16) = v54;
      *(v17 + 33) = *&v64[16];
      *(v17 + 17) = *v64;
      *(v17 + 96) = *&v64[79];
      *(v17 + 81) = *&v64[64];
      *(v17 + 65) = *&v64[48];
      *(v17 + 49) = *&v64[32];
      v18 = v67;
      *(v17 + 120) = v66;
      v19 = v69;
      *(v17 + 184) = v70;
      v20 = v68;
      *(v17 + 168) = v19;
      *(v17 + 152) = v20;
      *(v17 + 104) = v58;
      *(v17 + 112) = v57;
      *(v17 + 136) = v18;
      *(v17 + 200) = v56;
      ++*(v7 + 16);
      v5 = v51;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v50 = 1 << *(v5 + 32);
    v3 = v2;
    if (v50 >= 64)
    {
      bzero(v9, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v50;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24A7833F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMIPMonitoredDevice(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_24A6BBA94(&qword_27EF5E620, &qword_24A838C08);
  v40 = v4;
  result = sub_24A82D964();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24A78B7D0(v28, v41, type metadata accessor for FMIPMonitoredDevice);
      }

      else
      {
        sub_24A78B768(v28, v41, type metadata accessor for FMIPMonitoredDevice);
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24A78B7D0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for FMIPMonitoredDevice);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24A78376C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
  result = sub_24A82D964();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_24A6A50DC(v24, v30);
      }

      else
      {
        sub_24A67E168(v24, v30);
      }

      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_24A6A50DC(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_16;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24A783AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
  v39 = v4;
  result = sub_24A82D964();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24A783E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
  v40 = v4;
  result = sub_24A82D964();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24A784250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_24A6BBA94(a3, a4);
  v44 = v8;
  result = sub_24A82D964();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v10;
    v45 = (v10 + 32);
    v22 = result + 64;
    v43 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v46 = v25;
      v29 = *(v10 + 72);
      v30 = *(v13 + 48) + v29 * v28;
      if (v44)
      {
        (*v45)(v47, v30, v9);
      }

      else
      {
        (*v41)(v47, v30, v9);
      }

      v31 = *(*(v13 + 56) + v28);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v32 = -1 << *(v15 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v29 * v23, v47, v9);
      *(*(v15 + 56) + v23) = v31;
      ++*(v15 + 16);
      v10 = v42;
      v13 = v43;
      v20 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v13 + 32);
    v7 = v40;
    if (v39 >= 64)
    {
      bzero(v17, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_24A784610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CAA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
  v43 = v4;
  result = sub_24A82D964();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24A78B7D0(v27 + v28 * v24, v47, type metadata accessor for FMIPDeviceLostModeMetadata);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24A78B768(v29 + v28 * v24, v47, type metadata accessor for FMIPDeviceLostModeMetadata);
      }

      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24A78B7D0(v47, *(v12 + 56) + v28 * v20, type metadata accessor for FMIPDeviceLostModeMetadata);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_24A784AB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_24A77EF00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_24A781354(v13, a3 & 1);
      result = sub_24A77EF00(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for SPBeaconTaskName(0);
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_24A786140();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

void sub_24A784C04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24A6A2D48(a3, a4);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_24A78629C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24A781610(v20, a5 & 1);
    v15 = sub_24A6A2D48(a3, a4);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_24A82DC44();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *(v26 + 8);
    *v26 = a1 & 1;
    *(v26 + 1) = BYTE1(a1) & 1;
    *(v26 + 2) = BYTE2(a1) & 1;
    *(v26 + 3) = HIBYTE(a1);
    *(v26 + 8) = a2;
    *(v26 + 16) = a6;
  }

  else
  {
    sub_24A7858B0(v15, a3, a4, a1 & 0xFF010101, a2, v25, a6);
  }
}

void sub_24A784D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A6A2D48(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24A786440();
      goto LABEL_7;
    }

    sub_24A781904(v15, a4 & 1);
    v21 = sub_24A6A2D48(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24A82DC44();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0) - 8) + 72) * v12;

    sub_24A78B898(a1, v20);
    return;
  }

LABEL_13:
  sub_24A785924(v12, a2, a3, a1, v18);
}

void sub_24A784F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A6A2D48(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FMIPMonitoredDevice(0);
      sub_24A78B650(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FMIPMonitoredDevice);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A787468();
    goto LABEL_7;
  }

  sub_24A7833F4(v15, a4 & 1);
  v21 = sub_24A6A2D48(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24A82DC44();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A7859C8(v12, a2, a3, a1, v18);
}

_OWORD *sub_24A785088(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A77EFD4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A7876C0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A78376C(v14, a3 & 1);
    v9 = sub_24A77EFD4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24A82DC44();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_24A6876E8(v20);

    return sub_24A6A50DC(a1, v20);
  }

  else
  {

    return sub_24A785A74(v9, a2, a1, v19);
  }
}

uint64_t sub_24A7851B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A77EDF8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24A78783C();
      goto LABEL_7;
    }

    sub_24A783AA0(v17, a3 & 1);
    v22 = sub_24A77EDF8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24A785ADC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24A785380(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A77EDF8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_24A787ABC();
    goto LABEL_7;
  }

  sub_24A783E7C(result, a3 & 1);
  result = sub_24A77EDF8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24A785B94(v14, v11, a1 & 1, v20);
}

uint64_t sub_24A785520(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A77EDF8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_24A787D40(&qword_27EF5E6A0, &unk_24A838CB0);
    goto LABEL_7;
  }

  sub_24A784250(result, a3 & 1, &qword_27EF5E6A0, &unk_24A838CB0);
  result = sub_24A77EDF8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24A785B94(v14, v11, v7, v20);
}

uint64_t sub_24A7856DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A77EDF8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      return sub_24A78B650(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for FMIPDeviceLostModeMetadata);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24A787FB0();
    goto LABEL_7;
  }

  sub_24A784610(v17, a3 & 1);
  v24 = sub_24A77EDF8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24A785C4C(v14, v11, a1, v20);
}

unint64_t sub_24A7858B0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a6[7] + 24 * result;
  *v8 = a4 & 1;
  *(v8 + 1) = BYTE1(a4) & 1;
  *(v8 + 2) = BYTE2(a4) & 1;
  *(v8 + 3) = HIBYTE(a4);
  *(v8 + 8) = a5;
  *(v8 + 16) = a7;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_24A785924(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  result = sub_24A78B908(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_24A7859C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  result = sub_24A78B7D0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for FMIPMonitoredDevice);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_24A785A74(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_24A6A50DC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_24A785ADC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24A785B94(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24A785C4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  result = sub_24A78B7D0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FMIPDeviceLostModeMetadata);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_24A785D3C()
{
  v1 = v0;
  v33 = sub_24A82CAA4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
  v3 = *v0;
  v4 = sub_24A82D954();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_24A6BB350(v23);
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_24A785FBC()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
  v2 = *v0;
  v3 = sub_24A82D954();
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

        result = v20;
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

id sub_24A786140()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
  v2 = *v0;
  v3 = sub_24A82D954();
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
        result = v18;
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

id sub_24A78629C()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
  v2 = *v0;
  v3 = sub_24A82D954();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 1);
        v25 = *(v22 + 2);
        v26 = *(v22 + 3);
        v27 = *(v22 + 8);
        v28 = *(v22 + 16);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 1) = v24;
        *(v30 + 2) = v25;
        *(v30 + 3) = v26;
        *(v30 + 8) = v27;
        *(v30 + 16) = v28;

        result = v27;
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

void sub_24A786440()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  sub_24A6BBA94(&qword_27EF5E6D8, &qword_24A838D00);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_24A67E964(*(v4 + 56) + v26, v30, &unk_27EF5E150, &unk_24A83CCC0);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_24A78B908(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

id sub_24A78669C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_24A7867F8()
{
  v1 = v0;
  v2 = type metadata accessor for FMReverseGeocodingRequest(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E6D0, &qword_24A838CF8);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_24A78B768(*(v5 + 48) + v21, v4, type metadata accessor for FMReverseGeocodingRequest);
        v20 *= 288;
        memcpy(v26, (*(v5 + 56) + v20), 0x120uLL);
        sub_24A78B7D0(v4, *(v7 + 48) + v21, type metadata accessor for FMReverseGeocodingRequest);
        memcpy((*(v7 + 56) + v20), v26, 0x120uLL);
        result = sub_24A76ECE4(v26, &v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_24A786A60()
{
  v1 = v0;
  v31 = sub_24A82CAA4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E688, &unk_24A838C90);
  v3 = *v0;
  v4 = sub_24A82D954();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_24A786CD4()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E648, &qword_24A838C50);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_24A78B768(*(v4 + 56) + v26, v30, type metadata accessor for FMIPItem);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_24A78B7D0(v25, *(v27 + 56) + v26, type metadata accessor for FMIPItem);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

char *sub_24A786F2C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceConnectedState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A82CAA4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E640, &unk_24A838C40);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24A78B768(*(v5 + 56) + v26, v35, type metadata accessor for FMIPDeviceConnectedState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24A78B7D0(v25, *(v27 + 56) + v26, type metadata accessor for FMIPDeviceConnectedState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24A787258()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
  v2 = *v0;
  v3 = sub_24A82D954();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_24A71FF60(&v43, &v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 208;
      v23 = *(v18 + v16 + 16);
      v22 = *(v18 + v16 + 32);
      v24 = *(v18 + v16 + 64);
      v46 = *(v18 + v16 + 48);
      v47 = v24;
      v25 = *(v18 + v16 + 128);
      v27 = *(v18 + v16 + 80);
      v26 = *(v18 + v16 + 96);
      v50 = *(v18 + v16 + 112);
      v51 = v25;
      v48 = v27;
      v49 = v26;
      v29 = *(v18 + v16 + 160);
      v28 = *(v18 + v16 + 176);
      v30 = *(v18 + v16 + 144);
      *(v54 + 9) = *(v18 + v16 + 185);
      v53 = v29;
      v54[0] = v28;
      v52 = v30;
      v43 = *(v18 + v16);
      v44 = v23;
      v45 = v22;
      v31 = (*(v4 + 48) + v17);
      *v31 = v21;
      v31[1] = v20;
      v32 = (*(v4 + 56) + v16);
      *v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      v32[3] = v46;
      v32[4] = v35;
      v32[1] = v33;
      v32[2] = v34;
      v36 = v48;
      v37 = v49;
      v38 = v51;
      v32[7] = v50;
      v32[8] = v38;
      v32[5] = v36;
      v32[6] = v37;
      v39 = v52;
      v40 = v53;
      v41 = v54[0];
      *(v32 + 185) = *(v54 + 9);
      v32[10] = v40;
      v32[11] = v41;
      v32[9] = v39;
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

void sub_24A787468()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPMonitoredDevice(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E620, &qword_24A838C08);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_24A78B768(*(v4 + 56) + v26, v30, type metadata accessor for FMIPMonitoredDevice);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_24A78B7D0(v25, *(v27 + 56) + v26, type metadata accessor for FMIPMonitoredDevice);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void *sub_24A7876C0()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
  v2 = *v0;
  v3 = sub_24A82D954();
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
        sub_24A67E168(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_24A6A50DC(v19, (*(v4 + 56) + 32 * v17));
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

void sub_24A78783C()
{
  v1 = v0;
  v33 = sub_24A82CAA4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
  v3 = *v0;
  v4 = sub_24A82D954();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

char *sub_24A787ABC()
{
  v1 = v0;
  v31 = sub_24A82CAA4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
  v3 = *v0;
  v4 = sub_24A82D954();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24A787D40(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_24A82CAA4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(a1, a2);
  v7 = *v2;
  v8 = sub_24A82D954();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + v23);
        result = (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + v23) = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_24A787FB0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A82CAA4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24A78B768(*(v5 + 56) + v26, v35, type metadata accessor for FMIPDeviceLostModeMetadata);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24A78B7D0(v25, *(v27 + 56) + v26, type metadata accessor for FMIPDeviceLostModeMetadata);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_24A7882DC()
{
  result = qword_27EF5E530;
  if (!qword_27EF5E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E530);
  }

  return result;
}

unint64_t sub_24A788330()
{
  result = qword_27EF5E538;
  if (!qword_27EF5E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E538);
  }

  return result;
}

unint64_t sub_24A788384()
{
  result = qword_27EF5E558;
  if (!qword_27EF5E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E558);
  }

  return result;
}

void sub_24A7883D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A7E0224(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_24A788444(v4);
  *a1 = v2;
}

void sub_24A788444(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24A82DB74();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24A82D2A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A7887A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24A78853C(0, v2, 1, a1);
  }
}

void sub_24A78853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_24A82CA34();
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v34 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v40 = *a4;
    v14 = v40 + 24 * a3 - 24;
    v15 = a1 - a3;
LABEL_5:
    v36 = v14;
    v37 = a3;
    v16 = *(v40 + 24 * a3 + 8);
    v35 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *(v14 + 8);
      v19 = v16;
      v20 = v18;
      v21 = [v19 timestamp];
      sub_24A82C9F4();

      v22 = [v20 timestamp];
      v23 = v38;
      sub_24A82C9F4();

      LOBYTE(v22) = sub_24A82C9B4();
      v24 = *v13;
      v25 = v23;
      v26 = v39;
      (*v13)(v25, v39);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v14 = v36 + 24;
        v15 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v27 = *(v14 + 24);
      v28 = *(v14 + 25);
      v29 = *(v14 + 26);
      v30 = *(v14 + 27);
      v16 = *(v14 + 32);
      v31 = *(v14 + 40);
      *(v14 + 24) = *v14;
      *(v14 + 40) = *(v14 + 16);
      *v14 = v27;
      *(v14 + 1) = v28;
      *(v14 + 2) = v29;
      *(v14 + 3) = v30;
      *(v14 + 8) = v16;
      *(v14 + 16) = v31;
      v14 -= 24;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24A7887A4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v5;
  v128 = a4;
  v129 = a1;
  v139 = sub_24A82CA34();
  v9 = MEMORY[0x28223BE20](v139);
  v138 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v124 - v12;
  v13 = a3[1];
  v130 = a3;
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_90:
    v6 = *v129;
    if (!*v129)
    {
      goto LABEL_129;
    }

    v4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v119 = v4;
    }

    else
    {
LABEL_123:
      v119 = sub_24A7E016C(v4);
    }

    v140 = v119;
    v4 = *(v119 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v120 = *&v119[16 * v4];
        v121 = v119;
        v122 = *&v119[16 * v4 + 24];
        sub_24A7890B8((*a3 + 24 * v120), (*a3 + 24 * *&v119[16 * v4 + 16]), *a3 + 24 * v122, v6);
        if (v7)
        {
          goto LABEL_101;
        }

        if (v122 < v120)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_24A7E016C(v121);
        }

        if (v4 - 2 >= *(v121 + 2))
        {
          goto LABEL_117;
        }

        v123 = &v121[16 * v4];
        *v123 = v120;
        *(v123 + 1) = v122;
        v140 = v121;
        sub_24A7E00E0(v4 - 1);
        v119 = v140;
        v4 = *(v140 + 2);
        a3 = v130;
        if (v4 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v14 = 0;
  v136 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 + 1 >= v13)
    {
      v29 = v14 + 1;
      v39 = v128;
    }

    else
    {
      v134 = v13;
      v126 = v15;
      v127 = v7;
      v16 = *a3;
      v17 = *(*a3 + 24 * (v14 + 1) + 8);
      v18 = v14;
      v133 = 24 * v14;
      v19 = v16 + 24 * v14;
      v20 = *(v19 + 8);
      v21 = v17;
      v22 = v20;
      v23 = [v21 timestamp];
      v24 = v137;
      sub_24A82C9F4();

      v25 = [v22 timestamp];
      v26 = v138;
      sub_24A82C9F4();

      LODWORD(v135) = sub_24A82C9B4();
      v4 = *v136;
      v27 = v139;
      (*v136)(v26, v139);
      (v4)(v24, v27);

      v125 = v18;
      v28 = v18 + 2;
      v6 = v19 + 56;
      while (1)
      {
        v29 = v134;
        if (v134 == v28)
        {
          break;
        }

        v30 = *(v6 - 24);
        v31 = *v6;
        v32 = v30;
        v33 = [v31 timestamp];
        v34 = v137;
        sub_24A82C9F4();

        v35 = [v32 timestamp];
        v36 = v138;
        sub_24A82C9F4();

        LODWORD(v35) = sub_24A82C9B4() & 1;
        v37 = v36;
        v38 = v139;
        (v4)(v37, v139);
        (v4)(v34, v38);

        ++v28;
        v6 += 24;
        if ((v135 & 1) != v35)
        {
          v29 = v28 - 1;
          break;
        }
      }

      a3 = v130;
      v15 = v126;
      v7 = v127;
      v39 = v128;
      v14 = v125;
      if (v135)
      {
        if (v29 < v125)
        {
          goto LABEL_120;
        }

        if (v125 < v29)
        {
          v40 = 24 * v29 - 8;
          v41 = v133 + 16;
          v42 = v29;
          v43 = v125;
          do
          {
            if (v43 != --v42)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v44 = (v53 + v41);
              v45 = *(v53 + v41 - 16);
              v46 = (v53 + v40);
              v47 = *(v44 - 15);
              v48 = *(v44 - 14);
              v49 = *(v44 - 13);
              v50 = *(v44 - 1);
              v51 = *v44;
              v52 = *v46;
              *(v44 - 1) = *(v46 - 1);
              *v44 = v52;
              *(v46 - 16) = v45;
              *(v46 - 15) = v47;
              *(v46 - 14) = v48;
              *(v46 - 13) = v49;
              *(v46 - 1) = v50;
              *v46 = v51;
            }

            ++v43;
            v40 -= 24;
            v41 += 24;
          }

          while (v43 < v42);
        }
      }
    }

    v54 = a3[1];
    if (v29 < v54)
    {
      if (__OFSUB__(v29, v14))
      {
        goto LABEL_119;
      }

      if (v29 - v14 < v39)
      {
        if (__OFADD__(v14, v39))
        {
          goto LABEL_121;
        }

        if (v14 + v39 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v14 + v39;
        }

        if (v55 < v14)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v29 != v55)
        {
          break;
        }
      }
    }

    v56 = v29;
    if (v29 < v14)
    {
      goto LABEL_118;
    }

LABEL_29:
    v57 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v57;
    }

    else
    {
      v15 = sub_24A78056C(0, *(v57 + 2) + 1, 1, v57);
    }

    v4 = *(v15 + 2);
    v58 = *(v15 + 3);
    v6 = v4 + 1;
    if (v4 >= v58 >> 1)
    {
      v15 = sub_24A78056C((v58 > 1), v4 + 1, 1, v15);
    }

    *(v15 + 2) = v6;
    v59 = &v15[16 * v4];
    *(v59 + 4) = v14;
    *(v59 + 5) = v56;
    v60 = *v129;
    if (!*v129)
    {
      goto LABEL_128;
    }

    v131 = v56;
    if (v4)
    {
      while (1)
      {
        v61 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v62 = *(v15 + 4);
          v63 = *(v15 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_48:
          if (v65)
          {
            goto LABEL_107;
          }

          v78 = &v15[16 * v6];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_110;
          }

          v84 = &v15[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_114;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v6 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v88 = &v15[16 * v6];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_62:
        if (v83)
        {
          goto LABEL_109;
        }

        v91 = &v15[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_112;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_69:
        v4 = v61 - 1;
        if (v61 - 1 >= v6)
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v99 = v15;
        v100 = *&v15[16 * v4 + 32];
        v6 = *&v15[16 * v61 + 40];
        sub_24A7890B8((*a3 + 24 * v100), (*a3 + 24 * *&v15[16 * v61 + 32]), *a3 + 24 * v6, v60);
        if (v7)
        {
          goto LABEL_101;
        }

        if (v6 < v100)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_24A7E016C(v99);
        }

        if (v4 >= *(v99 + 2))
        {
          goto LABEL_104;
        }

        v101 = &v99[16 * v4];
        *(v101 + 4) = v100;
        *(v101 + 5) = v6;
        v140 = v99;
        v4 = &v140;
        sub_24A7E00E0(v61);
        v15 = v140;
        v6 = *(v140 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v15[16 * v6 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_105;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_106;
      }

      v73 = &v15[16 * v6];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_108;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_111;
      }

      if (v77 >= v69)
      {
        v95 = &v15[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v64 < v98)
        {
          v61 = v6 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v131;
    if (v131 >= v13)
    {
      goto LABEL_90;
    }
  }

  v126 = v15;
  v127 = v7;
  v135 = *a3;
  v102 = v135 + 24 * v29 - 24;
  v125 = v14;
  v4 = v14 - v29;
  v131 = v55;
LABEL_80:
  v133 = v102;
  v134 = v29;
  v103 = *(v135 + 24 * v29 + 8);
  v132 = v4;
  while (1)
  {
    v104 = *(v102 + 8);
    v6 = v103;
    v105 = v104;
    v106 = [v6 timestamp];
    v107 = v137;
    sub_24A82C9F4();

    v108 = [v105 timestamp];
    v109 = v138;
    sub_24A82C9F4();

    LOBYTE(v108) = sub_24A82C9B4();
    v110 = *v136;
    v111 = v109;
    v112 = v139;
    (*v136)(v111, v139);
    v110(v107, v112);

    if ((v108 & 1) == 0)
    {
LABEL_79:
      v29 = v134 + 1;
      v102 = v133 + 24;
      v56 = v131;
      v4 = v132 - 1;
      if (v134 + 1 != v131)
      {
        goto LABEL_80;
      }

      v15 = v126;
      v7 = v127;
      a3 = v130;
      v14 = v125;
      if (v131 < v125)
      {
        goto LABEL_118;
      }

      goto LABEL_29;
    }

    if (!v135)
    {
      break;
    }

    v113 = *(v102 + 24);
    v114 = *(v102 + 25);
    v115 = *(v102 + 26);
    v116 = *(v102 + 27);
    v103 = *(v102 + 32);
    v117 = *(v102 + 40);
    *(v102 + 24) = *v102;
    *(v102 + 40) = *(v102 + 16);
    *v102 = v113;
    *(v102 + 1) = v114;
    *(v102 + 2) = v115;
    *(v102 + 3) = v116;
    *(v102 + 8) = v103;
    *(v102 + 16) = v117;
    v102 -= 24;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t sub_24A7890B8(id *a1, id *a2, unint64_t a3, id *a4)
{
  v60 = sub_24A82CA34();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = v54 - v11;
  v12 = (a2 - a1) / 24;
  v13 = (a3 - a2) / 24;
  if (v12 >= v13)
  {
    v61 = a1;
    v32 = a2;
    if (a4 != a2 || &a2[3 * v13] <= a4)
    {
      memmove(a4, a2, 24 * v13);
    }

    v14 = &a4[3 * v13];
    if ((a3 - a2) >= 24 && a2 > v61)
    {
      v54[1] = v8 + 8;
      v55 = a4;
      v33 = (v8 + 8);
LABEL_23:
      v34 = a3 - 24;
      v56 = v32;
      do
      {
        v35 = v34;
        v36 = (v34 + 24);
        v37 = *(v32 - 2);
        v38 = v14;
        v39 = *(v14 - 2);
        v57 = v39;
        v40 = v37;
        v41 = [v39 timestamp];
        v42 = v58;
        sub_24A82C9F4();

        v43 = [v40 timestamp];
        v44 = v59;
        sub_24A82C9F4();

        LOBYTE(v43) = sub_24A82C9B4();
        v45 = *v33;
        v46 = v44;
        v47 = v60;
        (*v33)(v46, v60);
        v45(v42, v47);

        if (v43)
        {
          v14 = v38;
          v50 = (v56 - 24);
          a3 = v35;
          if (v36 != v56)
          {
            v51 = *v50;
            *(v35 + 16) = *(v56 - 8);
            *v35 = v51;
          }

          a4 = v55;
          if (v38 <= v55 || (v32 = v50, v50 <= v61))
          {
            v32 = v50;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v48 = v38 - 3;
        if (v36 != v38)
        {
          v49 = *v48;
          *(v35 + 16) = *(v38 - 1);
          *v35 = v49;
        }

        v34 = v35 - 24;
        v14 = v38 - 3;
        a4 = v55;
        v32 = v56;
      }

      while (v48 > v55);
      v14 = v38 - 3;
    }
  }

  else
  {
    if (a4 != a1 || &a1[3 * v12] <= a4)
    {
      memmove(a4, a1, 24 * v12);
    }

    v14 = &a4[3 * v12];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v15 = a2;
      v56 = a3;
      v57 = v14;
      v16 = (v8 + 8);
      while (1)
      {
        v61 = a1;
        v17 = a4[1];
        v18 = v15[1];
        v19 = v17;
        v20 = [v18 timestamp];
        v21 = v58;
        sub_24A82C9F4();

        v22 = [v19 timestamp];
        v23 = v59;
        sub_24A82C9F4();

        LOBYTE(v22) = sub_24A82C9B4();
        v24 = a4;
        v25 = *v16;
        v26 = v23;
        v27 = v60;
        (*v16)(v26, v60);
        v25(v21, v27);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v28 = v15;
        v29 = v61;
        v30 = v61 == v15;
        v15 += 3;
        a4 = v24;
        v14 = v57;
        if (!v30)
        {
          goto LABEL_13;
        }

LABEL_14:
        a1 = v29 + 3;
        if (a4 >= v14 || v15 >= v56)
        {
          goto LABEL_16;
        }
      }

      v28 = v24;
      a4 = v24 + 3;
      v29 = v61;
      v14 = v57;
      if (v61 == v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v29[2] = v28[2];
      *v29 = v31;
      goto LABEL_14;
    }

LABEL_16:
    v32 = a1;
  }

LABEL_34:
  v52 = (v14 - a4) / 24;
  if (v32 != a4 || v32 >= &a4[3 * v52])
  {
    memmove(v32, a4, 24 * v52);
  }

  return 1;
}

void sub_24A789570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x24C21D5E0](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      sub_24A82DCE4();
      sub_24A82DCE4();
      sub_24A82DCE4();
      v5 = v7;
      sub_24A82D094();

      sub_24A82D5F4();
      if (v8 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v8;
      }

      MEMORY[0x24C21D610](*&v6);

      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

BOOL _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v38 - v9);
  v11 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for FMIPUnknownItem(0);
  if (*(a1 + v14[15]) != *(a2 + v14[15]) || *(a1 + v14[13]) != *(a2 + v14[13]))
  {
    return 0;
  }

  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v14;
    if ((*v16 != *v18 || v17 != v19) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = v14;
    if (v19)
    {
      return 0;
    }
  }

  if ((sub_24A82CA74() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v20[16]) != *(a2 + v20[16]))
  {
    return 0;
  }

  if (*(a1 + v20[7]) != *(a2 + v20[7]))
  {
    return 0;
  }

  v21 = v20;
  if ((sub_24A7D8828(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0)
  {
    return 0;
  }

  v22 = v20[5];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if (v23 != *v25 || (v26 = v20, v24 != v25[1]))
  {
    v27 = sub_24A82DC04();
    v26 = v20;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(a1 + v26[9], a2 + v26[9]))
  {
    return 0;
  }

  if (*(a1 + v20[10]) != *(a2 + v20[10]))
  {
    return 0;
  }

  v28 = v20;
  if (*(a1 + v20[14]) != *(a2 + v20[14]))
  {
    return 0;
  }

  v29 = v20[12];
  v30 = *(a2 + v29);
  if (*(a1 + v29))
  {
    if (!v30)
    {
      return 0;
    }

    v40 = *(a1 + v29);
    v41 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    v39 = v30;
    v40 = v40;
    v31 = sub_24A82D5E4();

    v28 = v21;
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v32 = v28[11];
  v33 = *(v11 + 48);
  sub_24A67E964(a1 + v32, v13, &qword_27EF5E520, &qword_24A8384B0);
  v41 = v33;
  sub_24A67E964(a2 + v32, &v13[v33], &qword_27EF5E520, &qword_24A8384B0);
  v34 = *(v5 + 48);
  if (v34(v13, 1, v4) != 1)
  {
    sub_24A67E964(v13, v10, &qword_27EF5E520, &qword_24A8384B0);
    v35 = v41;
    if (v34(&v13[v41], 1, v4) != 1)
    {
      sub_24A78B7D0(&v13[v35], v7, type metadata accessor for FMIPUnknownItemUTMetadata);
      v36 = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_24A78B838(v7, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A78B838(v10, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A67F378(v13, &qword_27EF5E520, &qword_24A8384B0);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    sub_24A78B838(v10, type metadata accessor for FMIPUnknownItemUTMetadata);
LABEL_30:
    sub_24A67F378(v13, &qword_27EF5E768, &qword_24A83F520);
    return 0;
  }

  if (v34(&v13[v41], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  sub_24A67F378(v13, &qword_27EF5E520, &qword_24A8384B0);
LABEL_32:
  if (*(a1 + v21[17]) == *(a2 + v21[17]) && *(a1 + v21[18]) == *(a2 + v21[18]))
  {
    return *(a1 + v21[19]) == *(a2 + v21[19]);
  }

  return 0;
}

unint64_t sub_24A789DD4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E718, &qword_24A838D40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
    v7 = sub_24A82D974();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v9, v5, &qword_27EF5E718, &qword_24A838D40);
      result = sub_24A77EDF8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24A82CAA4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A789FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
    v3 = sub_24A82D974();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A6A2D48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24A78A0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E778, &qword_24A838D80);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_24A77EF00(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_24A78A1B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_24A77EF00(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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