unint64_t sub_1DEEACBA4()
{
  result = qword_1ECDE3E70;
  if (!qword_1ECDE3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E70);
  }

  return result;
}

uint64_t static DeviceDescriptor.localDeviceName.getter()
{
  result = sub_1DEEAEE94(0);
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v3 = [v2 hostName];
    v4 = sub_1DEF8D948();

    return v4;
  }

  return result;
}

uint64_t static DeviceDescriptor.localSerialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DEEAEFF8(3u);
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1DEEAD80C(v2, v3, sub_1DEED002C, a1);
    v4 = 0;
    sub_1DEEA889C(v5, v6);
  }

  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v4, 1, v7);
}

uint64_t DeviceDescriptor.init(id:name:protocolVersion:deviceType:screenDescriptor:zones:messageTypes:idsIdentityBlob:marketingName:productType:personaID:serialNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *a5;
  v20 = a5[1];
  v21 = *a6;
  v22 = *(a7 + 32);
  v23 = *(a7 + 33);
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 256;
  *(a9 + 112) = xmmword_1DEF90FE0;
  v24 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  v25 = sub_1DEF8D3F8();
  v71 = a7[1];
  v72 = *a7;
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  *(a9 + 48) = v21;
  *(a9 + 72) = v71;
  *(a9 + 56) = v72;
  *(a9 + 88) = v22;
  *(a9 + 89) = v23;
  sub_1DEE2416C(*(a9 + 112), *(a9 + 120));
  *(a9 + 112) = a11;
  *(a9 + 128) = a12;
  *(a9 + 144) = a13;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15;
  v76 = a9;
  v26 = a8;
  sub_1DEEA882C(a16, a9 + v24);
  if (a8 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v28 = 0;
    v80 = v26 & 0xC000000000000001;
    v29 = MEMORY[0x1E69E7CC8];
    v78 = v26 & 0xFFFFFFFFFFFFFF8;
    v30 = v26;
    while (v80)
    {
      v32 = MEMORY[0x1E12CB6E0](v28, v26);
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_29;
      }

LABEL_9:
      v33 = *(v32 + 16);
      if ((v29 & 0xC000000000000001) != 0)
      {
        if (v29 >= 0)
        {
          v29 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v34 = sub_1DEF8DE68();
        if (__OFADD__(v34, 1))
        {
          goto LABEL_32;
        }

        v29 = sub_1DEEB0948(v29, v34 + 1, &qword_1ECDE4140, &unk_1DEF91C60, type metadata accessor for Zone);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = sub_1DEEAF20C(v33);
      v38 = *(v29 + 16);
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_31;
      }

      v41 = v36;
      if (*(v29 + 24) >= v40)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v36)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1DEEB8404(&qword_1ECDE4140, &unk_1DEF91C60);
          if (v41)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1DEEB20D4(v40, isUniquelyReferenced_nonNull_native, &qword_1ECDE4140, &unk_1DEF91C60);
        v42 = sub_1DEEAF20C(v33);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_56;
        }

        v37 = v42;
        if (v41)
        {
LABEL_4:
          *(*(v29 + 56) + 8 * v37) = v32;

          goto LABEL_5;
        }
      }

      *(v29 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(*(v29 + 48) + 8 * v37) = v33;
      *(*(v29 + 56) + 8 * v37) = v32;

      v44 = *(v29 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_33;
      }

      *(v29 + 16) = v46;
LABEL_5:
      ++v28;
      v31 = v26 == i;
      v26 = v30;
      if (v31)
      {
        goto LABEL_36;
      }
    }

    if (v28 >= *(v78 + 16))
    {
      goto LABEL_30;
    }

    v32 = *(v26 + 8 * v28 + 32);

    v26 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_36:
  v47 = a10;

  *(v76 + 96) = v29;
  v79 = *(a10 + 16);
  if (!v79)
  {
    v50 = MEMORY[0x1E69E7CC8];
LABEL_52:
    sub_1DEE171B4(a16, &unk_1ECDE3E80, &unk_1DEF90970);

    *(v76 + 104) = v50;
    return result;
  }

  v48 = 0;
  v49 = (a10 + 72);
  v50 = MEMORY[0x1E69E7CC8];
  while (v48 < *(v47 + 16))
  {
    v53 = *(v49 - 5);
    v52 = *(v49 - 4);
    v55 = *(v49 - 3);
    v54 = *(v49 - 2);
    v56 = *(v49 - 1);
    v81 = *v49;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1DEEAF16C(v53, v52, v55, v54);
    v60 = v50[2];
    v61 = (v59 & 1) == 0;
    v45 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v45)
    {
      goto LABEL_54;
    }

    v63 = v59;
    if (v50[3] < v62)
    {
      sub_1DEEB0D14(v62, v57);
      v58 = sub_1DEEAF16C(v53, v52, v55, v54);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_57;
      }

LABEL_46:
      if (v63)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }

    if (v57)
    {
      goto LABEL_46;
    }

    v69 = v58;
    sub_1DEEB7550();
    v58 = v69;
    if (v63)
    {
LABEL_38:
      v51 = (v50[7] + 48 * v58);
      *v51 = v53;
      v51[1] = v52;
      v51[2] = v55;
      v51[3] = v54;
      v51[4] = v56;
      v51[5] = v81;

      goto LABEL_39;
    }

LABEL_47:
    v50[(v58 >> 6) + 8] |= 1 << v58;
    v65 = (v50[6] + 32 * v58);
    *v65 = v53;
    v65[1] = v52;
    v65[2] = v55;
    v65[3] = v54;
    v66 = (v50[7] + 48 * v58);
    *v66 = v53;
    v66[1] = v52;
    v66[2] = v55;
    v66[3] = v54;
    v66[4] = v56;
    v66[5] = v81;
    v67 = v50[2];
    v45 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v45)
    {
      goto LABEL_55;
    }

    v50[2] = v68;
LABEL_39:
    ++v48;
    v49 += 6;
    v47 = a10;
    if (v79 == v48)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_57:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

double DeviceDescriptor.handshakeDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 32);

  return result;
}

uint64_t sub_1DEEAD80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, char *)@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for UniformHasher(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
  v18 = MEMORY[0x1E12CC160](v17);
  a3(a1, a2, v16);
  if (v4)
  {
    objc_autoreleasePoolPop(v18);
    return sub_1DEEBC6C8(v16, type metadata accessor for UniformHasher);
  }

  else
  {
    v20 = v26;
    objc_autoreleasePoolPop(v18);
    sub_1DEF8D7F8();
    *&v10[*(v8 + 36)] = 16;
    v21 = sub_1DEF7F578(v10);
    sub_1DEE3DF08(v21, v22, v13);
    v23 = sub_1DEF8D3F8();
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v13, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DEEBC6C8(v16, type metadata accessor for UniformHasher);
      return (*(v24 + 32))(v20, v13, v23);
    }
  }

  return result;
}

uint64_t DeviceDescriptor.shortDescription.getter()
{
  v1 = v0;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  MEMORY[0x1E12CB180](*v1, v1[1]);
  MEMORY[0x1E12CB180](0x203A656D616E203BLL, 0xE800000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](0x656369766564203BLL, 0xEE00203A65707954);
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = *(v0 + 48);
  v5 = 0xE300000000000000;
  v6 = 6578544;
  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v4 != 4)
  {
    v8 = 30324;
    v7 = 0xE200000000000000;
  }

  if (v4 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6513005;
  if (v4 != 1)
  {
    v10 = 0x656E6F6870;
    v9 = 0xE500000000000000;
  }

  if (*(v0 + 48))
  {
    v3 = v10;
    v2 = v9;
  }

  if (*(v0 + 48) <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*(v0 + 48) <= 2u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E12CB180](v11, v12);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  sub_1DEE266C0();
  MEMORY[0x1E12CB180](0xD000000000000012, 0x80000001DEF9C320);
  if (v4 == 4)
  {
    v13 = 0x73756E696D726574;
  }

  else
  {
    v13 = 0x647261646E617473;
  }

  MEMORY[0x1E12CB180](v13, 0xE800000000000000);
  MEMORY[0x1E12CB180](0x6E6F73726570203BLL, 0xED0000203A444961);
  if (*(v0 + 168))
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x1E12CB180](v14, v15);

  return 0;
}

uint64_t DeviceDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceDescriptor.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeviceDescriptor.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 DeviceDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 DeviceDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 DeviceDescriptor.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 DeviceDescriptor.screenDescriptor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v5;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t DeviceDescriptor.zones.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t DeviceDescriptor.messageTypes.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t DeviceDescriptor.idsIdentityBlob.getter()
{
  v1 = *(v0 + 112);
  sub_1DEEA8818(v1, *(v0 + 120));
  return v1;
}

uint64_t DeviceDescriptor.idsIdentityBlob.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE2416C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t DeviceDescriptor.marketingName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t DeviceDescriptor.marketingName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t DeviceDescriptor.productType.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t DeviceDescriptor.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t DeviceDescriptor.personaID.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t DeviceDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t DeviceDescriptor.serialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceDescriptor(0) + 60);

  return sub_1DEE205E0(v3, a1);
}

uint64_t DeviceDescriptor.serialNumber.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DeviceDescriptor(0) + 60);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t DeviceDescriptor.isPlaceholder.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 24) == 0xE000000000000000;
  }

  if (v1)
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8();
  }
}

uint64_t DeviceDescriptor.hash(into:)(__int128 *a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v10 = *(v1 + 40);
  MEMORY[0x1E12CBF90](*(v1 + 32));
  MEMORY[0x1E12CBF90](v10);
  MEMORY[0x1E12CBF90](*(v1 + 48));
  if (*(v1 + 89) == 1)
  {
    sub_1DEF8E7C8();
  }

  else
  {
    v11 = *(v1 + 88);
    v12 = *(v1 + 80);
    v13 = *(v1 + 72);
    v16 = *(v1 + 56);
    v17 = v13;
    v18 = v12;
    v19 = v11 & 1;
    sub_1DEF8E7C8();
    ScreenDescriptor.hash(into:)();
  }

  sub_1DEEBB038(a1, *(v1 + 96));
  sub_1DEEBAE10(a1, *(v1 + 104));
  if (*(v1 + 120) >> 60 == 15)
  {
    sub_1DEF8E7C8();
    if (*(v1 + 136))
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DEF8E7C8();
    sub_1DEF8D288();
    if (*(v1 + 136))
    {
LABEL_6:
      sub_1DEF8E7C8();
      sub_1DEF8D9B8();
      if (*(v1 + 152))
      {
        goto LABEL_7;
      }

LABEL_11:
      sub_1DEF8E7C8();
      if (*(v1 + 168))
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  sub_1DEF8E7C8();
  if (!*(v1 + 152))
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1DEF8E7C8();
  sub_1DEF8D9B8();
  if (*(v1 + 168))
  {
LABEL_8:
    sub_1DEF8E7C8();
    sub_1DEF8D9B8();
    goto LABEL_13;
  }

LABEL_12:
  sub_1DEF8E7C8();
LABEL_13:
  v14 = type metadata accessor for DeviceDescriptor(0);
  sub_1DEE205E0(v1 + *(v14 + 60), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_1DEF8E7C8();
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_1DEF8E7C8();
  sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DeviceDescriptor.hashValue.getter()
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

double sub_1DEEAE63C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1DEEAE64C()
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE690(uint64_t a1)
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE6CC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DEE241D4(*a1);
  v5 = v4;
  if (v3 == sub_1DEE241D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DEF8E4E8();
  }

  return v8 & 1;
}

uint64_t sub_1DEEAE754()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEE241D4(v1);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE7B8(uint64_t a1)
{
  sub_1DEE241D4(*v1);
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEAE80C(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8E7A8();
  sub_1DEE241D4(v2);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

unint64_t sub_1DEEAE86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEBC584(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DEEAE89C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DEE241D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DEEAE8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEBC584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEEAE8FC(uint64_t a1)
{
  v2 = sub_1DEE23F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEAE938(uint64_t a1)
{
  v2 = sub_1DEE23F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3EC8, &unk_1DEF918A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23F54();
  sub_1DEF8E858();
  LOBYTE(v15) = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1DEF8E278();
    v15 = *(v3 + 32);
    v19 = 2;
    sub_1DEEBBB54();
    sub_1DEF8E298();
    LOBYTE(v15) = *(v3 + 48);
    v19 = 3;
    sub_1DEEBBBA8();
    sub_1DEF8E298();
    if ((*(v3 + 89) & 1) == 0)
    {
      v9 = *(v3 + 88);
      v10 = *(v3 + 80);
      v11 = *(v3 + 72);
      v15 = *(v3 + 56);
      v16 = v11;
      v17 = v10;
      v18 = v9 & 1;
      v19 = 4;
      sub_1DEEBBF14();
      sub_1DEF8E298();
    }

    *&v15 = *(v3 + 96);
    v19 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBBBFC();
    sub_1DEF8E298();
    *&v15 = *(v3 + 104);
    v19 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    sub_1DEE24AE4(&unk_1ECDE2CD8, sub_1DEEBBCE8, sub_1DEEBBD3C, MEMORY[0x1E69E5E38]);
    sub_1DEF8E298();
    v13 = *(v3 + 120);
    if (v13 >> 60 != 15)
    {
      v14 = *(v3 + 112);
      *&v15 = v14;
      *(&v15 + 1) = v13;
      v19 = 7;
      sub_1DEE1BFF4(v14, v13);
      sub_1DEEBBEC0();
      sub_1DEF8E298();
      sub_1DEE2416C(v14, v13);
    }

    if (*(v3 + 136))
    {
      LOBYTE(v15) = 8;
      sub_1DEF8E278();
    }

    if (*(v3 + 152))
    {
      LOBYTE(v15) = 9;
      sub_1DEF8E278();
    }

    LOBYTE(v15) = 12;
    sub_1DEF8E288();
    v15 = *(v3 + 160);
    v19 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    sub_1DEEBBD90();
    sub_1DEF8E298();
    type metadata accessor for DeviceDescriptor(0);
    LOBYTE(v15) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEEAEE94(unsigned __int8 a1)
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v2 = sub_1DEF8D918();

  v3 = [v1 initWithString_];

  v4 = MGCopyAnswer();
  if (!v4)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 0;
}

uint64_t sub_1DEEAEFF8(unsigned __int8 a1)
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v2 = sub_1DEF8D918();

  v3 = [v1 initWithString_];

  v4 = MGCopyAnswer();
  if (!v4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEAF16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v8 = sub_1DEF8E7F8();

  return sub_1DEEAF94C(a1, a2, a3, a4, v8);
}

unint64_t sub_1DEEAF20C(void *a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v2 = sub_1DEF8E7F8();

  return sub_1DEEAFA4C(a1, v2);
}

unint64_t sub_1DEEAF284(uint64_t a1)
{
  sub_1DEF8E018();
  v2 = sub_1DEF8D8B8();

  return sub_1DEEAFB30(a1, v2);
}

unint64_t sub_1DEEAF2E8(uint64_t a1)
{
  v1 = a1;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  v2 = sub_1DEF8E7F8();
  return sub_1DEEB055C(v1, v2);
}

unint64_t sub_1DEEAF350(uint64_t a1)
{
  sub_1DEF8D3F8();
  sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1DEF8D8B8();

  return sub_1DEEAFCC8(a1, v2);
}

unint64_t sub_1DEEAF3E8(void *a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEEBC728(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E12CBF60](1);
    sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1DEF8E7F8();
  return sub_1DEEAFE88(a1, v9);
}

unint64_t sub_1DEEAF640(uint64_t a1)
{
  v2 = sub_1DEF8DEA8();

  return sub_1DEEB02C4(a1, v2);
}

unint64_t sub_1DEEAF684(uint64_t a1, uint64_t a2)
{
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v4 = sub_1DEF8E7F8();

  return sub_1DEEB038C(a1, a2, v4);
}

unint64_t sub_1DEEAF718(uint64_t a1)
{
  sub_1DEF8D948();
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v2 = sub_1DEF8E7F8();

  return sub_1DEEB0458(a1, v2);
}

unint64_t sub_1DEEAF7AC(uint64_t a1)
{
  v1 = a1;
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  v2 = sub_1DEF8E7F8();
  return sub_1DEEB055C(v1, v2);
}

unint64_t sub_1DEEAF814(char a1)
{
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](a1 & 1);
  v2 = sub_1DEF8E7F8();

  return sub_1DEEB05CC(a1 & 1, v2);
}

unint64_t sub_1DEEAF880(uint64_t a1)
{
  sub_1DEF8E7A8();
  v2 = *(a1 + 24);
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v2)
  {
    sub_1DEF8D9B8();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  MEMORY[0x1E12CBF90](*(a1 + 32));
  MEMORY[0x1E12CBF90](v3);
  MEMORY[0x1E12CBF90](v4);
  v5 = sub_1DEF8E7F8();

  return sub_1DEEB063C(a1, v5);
}

unint64_t sub_1DEEAF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DEEAFA4C(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = a1[2];
    v9 = a1[3];
    v10 = *(v2 + 48);
    do
    {
      v11 = *(v10 + 8 * v5);
      v12 = v8 == v11[2] && v9 == v11[3];
      if (v12 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v13 = a1[4] == v11[4] && a1[5] == v11[5];
        if (v13 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DEEAFB30(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1DEF8E018();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_1DEF8D908();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DEEAFCC8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1DEEBC680(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1DEF8D908();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DEEAFE88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v31 - v10;
  v12 = v2 + 64;
  v41 = v2;
  v13 = -1 << *(v2 + 32);
  v14 = a2 & ~v13;
  if ((*(v2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v40 = ~v13;
    v37 = v5;
    v38 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v42 = a1;
    v17 = (v6 + 48);
    v31 = (v6 + 32);
    v34 = (v6 + 8);
    v36 = v2 + 64;
    do
    {
      v18 = *(*(v41 + 48) + 8 * v14);
      v19 = v18[2] == v15 && v18[3] == v16;
      if (!v19 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v20 = v18[4];
      v21 = *(v42 + 32);
      v22 = v21[2] == v20[2] && v21[3] == v20[3];
      if (!v22 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v23 = v21[4] == v20[4] && v21[5] == v20[5];
      if (!v23 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v24 = *(v39 + 48);
      sub_1DEEBC728(v18 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v11, type metadata accessor for Record.ID.Ownership);
      sub_1DEEBC728(v42 + v38, &v11[v24], type metadata accessor for Record.ID.Ownership);
      v25 = *v17;
      if ((*v17)(v11, 1, v5) == 1)
      {
        if (v25(&v11[v24], 1, v5) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v26 = v35;
        sub_1DEEBC728(v11, v35, type metadata accessor for Record.ID.Ownership);
        if (v25(&v11[v24], 1, v5) != 1)
        {
          v27 = &v11[v24];
          v28 = v32;
          (*v31)(v32, v27, v5);
          v33 = sub_1DEF8D3A8();
          v29 = *v34;
          (*v34)(v28, v5);
          v29(v26, v5);
          if (v33)
          {
LABEL_28:
            sub_1DEEBC6C8(v11, type metadata accessor for Record.ID.Ownership);
            return v14;
          }

          sub_1DEEBC6C8(v11, type metadata accessor for Record.ID.Ownership);
          goto LABEL_5;
        }

        (*v34)(v26, v5);
      }

      sub_1DEE171B4(v11, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_5:
      v12 = v36;
      v5 = v37;
LABEL_6:
      v14 = (v14 + 1) & v40;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1DEEB02C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DEEBC5D0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12CB660](v9, a1);
      sub_1DEEBC62C(v9);
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

unint64_t sub_1DEEB038C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1DEF8E4E8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1DEEB0458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1DEF8D948();
      v8 = v7;
      if (v6 == sub_1DEF8D948() && v8 == v9)
      {
        break;
      }

      v11 = sub_1DEF8E4E8();

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

unint64_t sub_1DEEB055C(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1DEEB05CC(int a1, uint64_t a2)
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

unint64_t sub_1DEEB063C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v23 = *(a1 + 32);
    v21 = a1[6];
    v22 = a1[5];
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[3];
    v20 = a1[2];
    v8 = *(v2 + 48);
    do
    {
      v11 = v8 + 56 * v4;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v16 = *(v11 + 40);
      v15 = *(v11 + 48);
      v17 = *v11 == v6 && *(v11 + 8) == v5;
      if (!v17 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v12)
      {
        if (!v7)
        {
          goto LABEL_11;
        }

        v18 = v13 == v20 && v12 == v7;
        if (!v18 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
        goto LABEL_11;
      }

      if (v14 == v23 && v16 == v22 && v15 == v21)
      {
        return v4;
      }

LABEL_11:
      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DEEB07B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
    v2 = sub_1DEF8E138();
    v5 = v2;
    sub_1DEF8E038();
    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Record.ID(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1DEEB2E10(v3 + 1, 1, &qword_1ECDE40B0, &unk_1DEF95600);
        }

        v2 = v5;
        sub_1DEF41EC0();
      }

      while (sub_1DEF8E0D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DEEB0948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1DEF8E138();
    v22 = v8;
    sub_1DEF8E038();
    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Zone.ID();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_1DEEB20D4(v15 + 1, 1, a3, a4);
        }

        v8 = v22;
        sub_1DEF8E7A8();
        sub_1DEF8D9B8();
        sub_1DEF8D9B8();
        result = sub_1DEF8E7F8();
        v10 = v22 + 64;
        v11 = -1 << *(v22 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v22 + 64 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v22 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v22 + 48) + 8 * v14) = v21;
        *(*(v22 + 56) + 8 * v14) = v20;
        ++*(v22 + 16);
      }

      while (sub_1DEF8E0D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v8;
}

uint64_t sub_1DEEB0BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4100, &qword_1DEF91C30);
    v2 = sub_1DEF8E138();
    v5 = v2;
    sub_1DEF8E038();
    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Record.ID(0);
      do
      {
        swift_dynamicCast();
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1DEEB2E10(v3 + 1, 1, &qword_1ECDE4100, &qword_1DEF91C30);
        }

        v2 = v5;
        sub_1DEF41EC0();
      }

      while (sub_1DEF8E0D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DEEB0D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  v39 = v4;
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v25 = v23[3];
      v44 = v23[2];
      v45 = *v23;
      v26 = (v22 + 48 * v21);
      v27 = v26[1];
      v28 = v26[3];
      v41 = v26[2];
      v42 = *v26;
      v43 = *(v26 + 2);
      if ((v39 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v45;
      v16[1] = v24;
      v16[2] = v44;
      v16[3] = v25;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v27;
      *(v17 + 16) = v41;
      *(v17 + 24) = v28;
      *(v17 + 32) = v43;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
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

uint64_t sub_1DEEB1028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ZoneVersionAdvertisement(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4150, &unk_1DEF91C70);
  v40 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v28, v41, type metadata accessor for ZoneVersionAdvertisement);
      }

      else
      {
        sub_1DEEBC728(v28, v41, type metadata accessor for ZoneVersionAdvertisement);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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
      result = sub_1DEEBC790(v41, *(v9 + 56) + v27 * v17, type metadata accessor for ZoneVersionAdvertisement);
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

uint64_t sub_1DEEB13A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v48 = sub_1DEF8D3F8();
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A8, &unk_1DEF91BE0);
  v49 = v4;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v10 + 16))
  {
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
    v47 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v10;
    v42 = v2;
    v43 = (v5 + 8);
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v51 = (v17 - 1) & v17;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(*(v10 + 48) + 8 * v26);
      v28 = (*(v10 + 56) + 16 * v26);
      v29 = v28[1];
      v50 = *v28;
      if ((v49 & 1) == 0)
      {
      }

      v52 = v29;
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      sub_1DEEBC728(v27 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
      v30 = v48;
      if ((*v47)(v9, 1, v48) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v31 = v46;
        (*v44)(v46, v9, v30);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        v32 = v31;
        v10 = v45;
        (*v43)(v32, v30);
      }

      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v21 = v52;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v21 = v52;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v27;
      v22 = (*(v12 + 56) + 16 * v20);
      v17 = v51;
      *v22 = v50;
      v22[1] = v21;
      ++*(v12 + 16);
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v51 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB188C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_1DEF8D3F8();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD0, &unk_1DEF91C00);
  v36 = v4;
  result = sub_1DEF8E128();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
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
    v34 = (v5 + 16);
    v35 = v5;
    v37 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        (*v37)(v38, v24, v39);
      }

      else
      {
        (*v34)(v38, v24, v39);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = (*v37)(*(v9 + 56) + v23 * v17, v38, v39);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DEEB1C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PairingRelationship(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  v43 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v27 + v28 * v24, v47, type metadata accessor for PairingRelationship);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1DEEBC728(v29 + v28 * v24, v47, type metadata accessor for PairingRelationship);
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
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
      result = sub_1DEEBC790(v47, *(v12 + 56) + v28 * v20, type metadata accessor for PairingRelationship);
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

uint64_t sub_1DEEB20D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_1DEF8E128();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1DEEB2370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
  v33 = v4;
  result = sub_1DEF8E128();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1DEE117C0(v24, v34);
      }

      else
      {
        sub_1DEE12F7C(v24, v34);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1DEE117C0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB2628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4128, &unk_1DEF91C48);
  result = sub_1DEF8E128();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v31 = v22[1];
      v32 = *v22;
      if ((v4 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v32;
      v16[1] = v31;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB28C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v40 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
  v48 = v4;
  result = sub_1DEF8E128();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v50 = (v8 + 32);
    v45 = (v8 + 48);
    v46 = v12;
    v41 = (v8 + 8);
    v42 = (v8 + 16);
    v21 = result + 64;
    v22 = v8;
    v44 = v8;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(*(v12 + 48) + 8 * v27);
      v29 = *(v12 + 56) + *(v22 + 72) * v27;
      v49 = *(v22 + 72);
      if (v48)
      {
        (*v50)(v51, v29, v7);
      }

      else
      {
        (*v42)(v51, v29, v7);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      v30 = v47;
      sub_1DEEBC728(v28 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v47, type metadata accessor for Record.ID.Ownership);
      if ((*v45)(v30, 1, v7) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v31 = v43;
        (*v50)(v43, v30, v7);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        (*v41)(v31, v7);
      }

      result = sub_1DEF8E7F8();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v12 = v46;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v14 + 48) + 8 * v23) = v28;
      result = (*v50)(*(v14 + 56) + v49 * v23, v51, v7);
      ++*(v14 + 16);
      v22 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_37;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

uint64_t sub_1DEEB2E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v49 = sub_1DEF8D3F8();
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v50 = v8;
  result = sub_1DEF8E128();
  v16 = result;
  if (*(v14 + 16))
  {
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v48 = (v9 + 48);
    v45 = (v9 + 32);
    v46 = v14;
    v43 = v4;
    v44 = (v9 + 8);
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(*(v14 + 48) + 8 * v29);
      v31 = *(*(v14 + 56) + 8 * v29);
      if ((v50 & 1) == 0)
      {
      }

      v52 = v31;
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      sub_1DEEBC728(v30 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v13, type metadata accessor for Record.ID.Ownership);
      v32 = v49;
      if ((*v48)(v13, 1, v49) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v33 = v47;
        (*v45)(v47, v13, v32);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        v34 = v33;
        v14 = v46;
        (*v44)(v34, v32);
      }

      result = sub_1DEF8E7F8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v25 = v52;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v25 = v52;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v30;
      *(*(v16 + 56) + 8 * v24) = v25;
      ++*(v16 + 16);
      v21 = v51;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v51 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v14 + 32);
    v7 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v7 = v16;
  return result;
}

uint64_t sub_1DEEB32DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_1DEF8E128();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
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
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_1DEEB36B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ZoneVersion(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
  v40 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v28, v41, type metadata accessor for ZoneVersion);
      }

      else
      {
        sub_1DEEBC728(v28, v41, type metadata accessor for ZoneVersion);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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
      result = sub_1DEEBC790(v41, *(v9 + 56) + v27 * v17, type metadata accessor for ZoneVersion);
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

uint64_t sub_1DEEB3A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ZoneVersion(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  v36 = v4;
  result = sub_1DEF8E128();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1DEEBC790(v24, v37, type metadata accessor for ZoneVersion);
      }

      else
      {
        sub_1DEEBC728(v24, v37, type metadata accessor for ZoneVersion);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_1DEEBC790(v37, *(v9 + 56) + v23 * v17, type metadata accessor for ZoneVersion);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DEEB3DA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
  v37 = v4;
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB4064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F70, &unk_1DEF91B50);
  v30 = v4;
  result = sub_1DEF8E128();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1DEF8E7A8();
      if (v21)
      {
        MEMORY[0x1E12CBF60](1);
        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB432C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NetworkBrowser.Monitor(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  v43 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v27 + v28 * v24, v47, type metadata accessor for NetworkBrowser.Monitor);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1DEEBC728(v29 + v28 * v24, v47, type metadata accessor for NetworkBrowser.Monitor);
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
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
      result = sub_1DEEBC790(v47, *(v12 + 56) + v28 * v20, type metadata accessor for NetworkBrowser.Monitor);
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

uint64_t sub_1DEEB47CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F78, &unk_1DEF91B60);
  v39 = v4;
  result = sub_1DEF8E128();
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
        swift_unknownObjectRetain();
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
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

uint64_t sub_1DEEB4BA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE0, &qword_1DEF91B70);
  v38 = v4;
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 40 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v26 = v24[3];
      v40 = v24[2];
      v27 = v24[4];
      if ((v38 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB4EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  v37 = v4;
  result = sub_1DEF8E128();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1DEEBC790(v25, v7, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      }

      else
      {
        sub_1DEEBC728(v25, v7, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      }

      result = sub_1DEF8E798();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1DEEBC790(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1DEEB51E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4090, &qword_1DEF91BC8);
  v35 = v4;
  result = sub_1DEF8E128();
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

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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

uint64_t sub_1DEEB548C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1DEE117C0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1DEEBC5D0(v23, &v36);
        sub_1DEE12F7C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1DEF8DEA8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1DEE117C0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB5744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SessionManager.Session(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  v43 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v27 + v28 * v24, v47, type metadata accessor for SessionManager.Session);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1DEEBC728(v29 + v28 * v24, v47, type metadata accessor for SessionManager.Session);
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
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
      result = sub_1DEEBC790(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SessionManager.Session);
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

uint64_t sub_1DEEB5BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  v40 = v4;
  result = sub_1DEF8E128();
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
        sub_1DEEBC790(v28, v41, type metadata accessor for NetworkMessenger.ExpiringConnection);
      }

      else
      {
        sub_1DEEBC728(v28, v41, type metadata accessor for NetworkMessenger.ExpiringConnection);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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
      result = sub_1DEEBC790(v41, *(v9 + 56) + v27 * v17, type metadata accessor for NetworkMessenger.ExpiringConnection);
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

uint64_t sub_1DEEB5F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE8, &qword_1DEF91B78);
  v33 = v4;
  result = sub_1DEF8E128();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1DEE1BFF4(v34, *(&v34 + 1));
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB6218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4060, &qword_1DEF91B98);
  v38 = v4;
  result = sub_1DEF8E128();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
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
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
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

uint64_t sub_1DEEB6604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1DEF8E128();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1DEEB68A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
  v36 = v4;
  result = sub_1DEF8E128();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1DEEBC790(v24, v37, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      }

      else
      {
        sub_1DEEBC728(v24, v37, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      }

      sub_1DEF8E7A8();
      sub_1DEF8E7D8();
      result = sub_1DEF8E7F8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1DEEBC790(v37, *(v9 + 56) + v23 * v17, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DEEB6C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40C0, &qword_1DEF91BF8);
  v30 = v4;
  result = sub_1DEF8E128();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF60](v20);
      result = sub_1DEF8E7F8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB6E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4098, &qword_1DEF91BD0);
  v36 = v4;
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 24);
      v37 = *(v22 + 16);
      v40 = *(v22 + 32);
      v38 = *(v22 + 48);
      v39 = *(v22 + 40);
      v26 = (v21 + 40 * v20);
      if (v36)
      {
        sub_1DEE2F1AC(v26, v41);
      }

      else
      {
        sub_1DEE29594(v26, v41);
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v25)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v40);
      MEMORY[0x1E12CBF90](v39);
      MEMORY[0x1E12CBF90](v38);
      result = sub_1DEF8E7F8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v37;
      *(v16 + 24) = v25;
      *(v16 + 32) = v40;
      *(v16 + 40) = v39;
      *(v16 + 48) = v38;
      result = sub_1DEE2F1AC(v41, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1DEEB71E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A0, &qword_1DEF91BD8);
  v37 = v4;
  result = sub_1DEF8E128();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v40 = *(v23 + 16);
      v43 = *(v23 + 32);
      v41 = *(v23 + 48);
      v42 = *(v23 + 40);
      v27 = (v22 + 16 * v21);
      v39 = *v27;
      v38 = *(v27 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v26)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v43);
      MEMORY[0x1E12CBF90](v42);
      MEMORY[0x1E12CBF90](v41);
      result = sub_1DEF8E7F8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v40;
      *(v16 + 24) = v26;
      *(v16 + 32) = v43;
      *(v16 + 40) = v42;
      *(v16 + 48) = v41;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v39;
      *(v17 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

void sub_1DEEB7550()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 48;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = (*(v4 + 48) + v18);
        v30 = *(v24 + 32);
        *v29 = v21;
        v29[1] = v20;
        v29[2] = v22;
        v29[3] = v23;
        v31 = *(v4 + 56) + v17;
        *v31 = v25;
        *(v31 + 8) = v26;
        *(v31 + 16) = v27;
        *(v31 + 24) = v28;
        *(v31 + 32) = v30;
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
}

void sub_1DEEB7700()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersionAdvertisement(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4150, &unk_1DEF91C70);
  v4 = *v0;
  v5 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v4 + 56) + v26, v30, type metadata accessor for ZoneVersionAdvertisement);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for ZoneVersionAdvertisement);
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

void sub_1DEEB7958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A8, &unk_1DEF91BE0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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
}

char *sub_1DEEB7B04()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DEF8D3F8();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v26, v35, type metadata accessor for PairingRelationship);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for PairingRelationship);
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

void sub_1DEEB7E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 32 * v17;
        sub_1DEE12F7C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DEE117C0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_1DEEB7FFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4128, &unk_1DEF91C48);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void *sub_1DEEB8178(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1DEF8D3F8();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1DEF8E118();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33[0] = v5;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v15;
    v16 = 1 << *(v7 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v7 + 64);
    v19 = (v16 + 63) >> 6;
    v33[1] = v37 + 32;
    v33[2] = v37 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = *(*(v7 + 48) + 8 * v23);
        v25 = v37;
        v26 = *(v37 + 72) * v23;
        v27 = *(v7 + 56) + v26;
        v28 = v34;
        v29 = v7;
        v30 = v35;
        (*(v37 + 16))(v34, v27, v35);
        v31 = v36;
        *(*(v36 + 48) + 8 * v23) = v24;
        v32 = v30;
        v7 = v29;
        (*(v25 + 32))(*(v31 + 56) + v26, v28, v32);

        v18 = v38;
      }

      while (v38);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v33[0];
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v11 + 8 * v14);
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

void *sub_1DEEB8404(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8E118();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void sub_1DEEB856C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1DEF8D3F8();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1DEF8E118();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
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
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
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
}

void sub_1DEEB87E4()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersion(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
  v4 = *v0;
  v5 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v4 + 56) + v26, v30, type metadata accessor for ZoneVersion);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for ZoneVersion);
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

void *sub_1DEEB8A3C()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersion(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1DEEBC728(*(v5 + 56) + v22, v4, type metadata accessor for ZoneVersion);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1DEEBC790(v4, *(v7 + 56) + v22, type metadata accessor for ZoneVersion);
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

void sub_1DEEB8C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void *sub_1DEEB8DF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F70, &unk_1DEF91B50);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = swift_unknownObjectRetain();
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

char *sub_1DEEB8F5C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkBrowser.Monitor(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DEF8D3F8();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v26, v35, type metadata accessor for NetworkBrowser.Monitor);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for NetworkBrowser.Monitor);
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

char *sub_1DEEB9288()
{
  v1 = v0;
  v33 = sub_1DEF8D3F8();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F78, &unk_1DEF91B60);
  v3 = *v0;
  v4 = sub_1DEF8E118();
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
        result = swift_unknownObjectRetain();
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

void *sub_1DEEB9508()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE0, &qword_1DEF91B70);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;

        result = swift_unknownObjectRetain();
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

void *sub_1DEEB96B0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1DEEBC728(*(v5 + 56) + v22, v4, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_1DEEBC790(v4, *(v7 + 56) + v22, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
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

id sub_1DEEB98E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4090, &qword_1DEF91BC8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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

void *sub_1DEEB9A50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = 40 * v17;
        sub_1DEEBC5D0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1DEE12F7C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1DEE117C0(v22, (*(v4 + 56) + v17));
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

char *sub_1DEEB9BF4()
{
  v1 = v0;
  v2 = type metadata accessor for SessionManager.Session(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DEF8D3F8();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v26, v35, type metadata accessor for SessionManager.Session);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for SessionManager.Session);
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

void sub_1DEEB9F20()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  v4 = *v0;
  v5 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v4 + 56) + v26, v30, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DEEBC790(v25, *(v27 + 56) + v26, type metadata accessor for NetworkMessenger.ExpiringConnection);
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

void *sub_1DEEBA178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE8, &qword_1DEF91B78);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1DEE1BFF4(v22, *(&v22 + 1));
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

void *sub_1DEEBA2FC()
{
  v1 = v0;
  v30 = sub_1DEF8D3F8();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4060, &qword_1DEF91B98);
  v3 = *v0;
  v4 = sub_1DEF8E118();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_1DEEBA590(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8E118();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
}

void *sub_1DEEBA6F0()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_1DEEBC728(*(v5 + 56) + v22, v4, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
        *(*(v7 + 48) + v20) = v21;
        result = sub_1DEEBC790(v4, *(v7 + 56) + v22, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
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

void *sub_1DEEBA924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40C0, &qword_1DEF91BF8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_1DEEBAA80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4098, &qword_1DEF91BD0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v28 = v1;
    __src = (v2 + 64);
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, __src, 8 * v6);
    }

    v8 = 0;
    v30 = v2;
    v31 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v33 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 56 * v16;
        v18 = *(v2 + 56);
        v19 = *(v2 + 48) + 56 * v16;
        v20 = *(v19 + 8);
        v32 = *v19;
        v21 = *(v19 + 16);
        v22 = *(v19 + 24);
        v23 = *(v19 + 32);
        v25 = *(v19 + 40);
        v24 = *(v19 + 48);
        v26 = 40 * v16;
        sub_1DEE29594(v18 + 40 * v16, v34);
        v27 = *(v31 + 48) + v17;
        *v27 = v32;
        *(v27 + 8) = v20;
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 32) = v23;
        v2 = v30;
        *(v27 + 40) = v25;
        *(v27 + 48) = v24;
        sub_1DEE2F1AC(v34, *(v31 + 56) + v26);

        v11 = v33;
      }

      while (v33);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v28;
        v4 = v31;
        goto LABEL_21;
      }

      v15 = *(__src + v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1DEEBAC70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A0, &qword_1DEF91BD8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 56 * v17;
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        v23 = *(v19 + 32);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        LOBYTE(v24) = *(v24 + 8);
        v26 = *(v4 + 48) + v18;
        v27 = *(v19 + 40);
        *v26 = *v19;
        *(v26 + 8) = v20;
        *(v26 + 16) = v22;
        *(v26 + 24) = v21;
        *(v26 + 32) = v23;
        *(v26 + 40) = v27;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v24;
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
}

void sub_1DEEBAE10(uint64_t a1, uint64_t a2)
{
  v11 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v10 = (v2 + 63) >> 6;

  v15 = 0;
  v5 = 0;
  if (v4)
  {
    while (1)
    {
      v6 = v5;
LABEL_8:
      v7 = __clz(__rbit64(v4)) | (v6 << 6);
      v8 = *(*(a2 + 48) + 32 * v7 + 8);
      v9 = *(a2 + 56) + 48 * v7;
      v13 = *(v9 + 32);
      v14 = *(v9 + 40);

      if (!v8)
      {
        break;
      }

      v4 &= v4 - 1;

      sub_1DEF8D9B8();

      sub_1DEF8D9B8();
      swift_bridgeObjectRelease_n();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      MEMORY[0x1E12CBF90](v13);
      MEMORY[0x1E12CBF90](v14);

      v15 ^= sub_1DEF8E7F8();
      v5 = v6;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1E12CBF60](v15);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_11;
      }

      v4 = *(v11 + 8 * v6);
      ++v5;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1DEEBB038(__int128 *a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DEF8E038();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v5 = ~v8;
    v4 = a2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a2 + 64);
    v7 = a2;
  }

  v11 = (v5 + 64) >> 6;

  v12 = 0;
  v13 = 0;
  v23 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v6;
    v15 = v13;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v17 = (v14 - 1) & v14;
    v18 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v19 = *(*(v7 + 48) + v18);
    v20 = *(*(v7 + 56) + v18);

    if (!v19)
    {
LABEL_20:
      sub_1DEE2774C(v23);
      MEMORY[0x1E12CBF60](v12);
      return;
    }

    while (1)
    {
      v25 = *a1;
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      v22 = *(v20 + 32);
      MEMORY[0x1E12CBF90](*(v20 + 24));
      MEMORY[0x1E12CBF90](v22);

      v12 ^= sub_1DEF8E7F8();
      v13 = v15;
      v6 = v17;
      v7 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v21 = sub_1DEF8E0D8();
      if (v21)
      {
        v24 = v21;
        type metadata accessor for Zone.ID();
        swift_dynamicCast();
        type metadata accessor for Zone();
        swift_dynamicCast();
        v20 = v24;
        v15 = v13;
        v17 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v16 = v13;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_20;
    }

    v14 = *(v4 + 8 * v15);
    ++v16;
    if (v14)
    {
      v7 = v23;
      goto LABEL_14;
    }
  }

  __break(1u);
}

BOOL _s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-v12];
  if (*a1 != *a2 && (sub_1DEF8E4E8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    v15 = *(a2 + 89);
    if (*(a1 + 89))
    {
      goto LABEL_10;
    }

    if (*(a2 + 89))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      v15 = *(a2 + 88);
      if (*(a1 + 88))
      {
LABEL_10:
        if ((v15 & 1) == 0)
        {
          return 0;
        }

LABEL_11:
        if ((sub_1DEEDBD80(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (sub_1DEEDBFD4(*(a1 + 104), *(a2 + 104)) & 1) == 0)
        {
          return 0;
        }

        v16 = *(a1 + 112);
        v17 = *(a1 + 120);
        v18 = *(a2 + 120);
        v35 = *(a2 + 112);
        if (v17 >> 60 == 15)
        {
          if (v18 >> 60 == 15)
          {
            v34 = v16;
            sub_1DEEA8818(v16, v17);
            sub_1DEEA8818(v35, v18);
            sub_1DEE2416C(v34, v17);
LABEL_29:
            v21 = *(a1 + 136);
            v22 = *(a2 + 136);
            if (v21)
            {
              if (!v22 || (*(a1 + 128) != *(a2 + 128) || v21 != v22) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v22)
            {
              return 0;
            }

            v23 = *(a1 + 152);
            v24 = *(a2 + 152);
            if (v23)
            {
              if (!v24 || (*(a1 + 144) != *(a2 + 144) || v23 != v24) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v24)
            {
              return 0;
            }

            v25 = *(a1 + 168);
            v26 = *(a2 + 168);
            if (v25)
            {
              if (!v26 || (*(a1 + 160) != *(a2 + 160) || v25 != v26) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v26)
            {
              return 0;
            }

            v27 = *(type metadata accessor for DeviceDescriptor(0) + 60);
            v28 = *(v11 + 48);
            sub_1DEE205E0(a1 + v27, v13);
            sub_1DEE205E0(a2 + v27, &v13[v28]);
            v29 = *(v5 + 48);
            if (v29(v13, 1, v4) == 1)
            {
              if (v29(&v13[v28], 1, v4) == 1)
              {
                sub_1DEE171B4(v13, &unk_1ECDE3E80, &unk_1DEF90970);
                return 1;
              }
            }

            else
            {
              sub_1DEE205E0(v13, v10);
              if (v29(&v13[v28], 1, v4) != 1)
              {
                (*(v5 + 32))(v7, &v13[v28], v4);
                sub_1DEEBC680(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                v30 = sub_1DEF8D908();
                v31 = *(v5 + 8);
                v31(v7, v4);
                v31(v10, v4);
                sub_1DEE171B4(v13, &unk_1ECDE3E80, &unk_1DEF90970);
                return (v30 & 1) != 0;
              }

              (*(v5 + 8))(v10, v4);
            }

            sub_1DEE171B4(v13, &qword_1ECDE40D8, &unk_1DEF91C10);
            return 0;
          }
        }

        else if (v18 >> 60 != 15)
        {
          v34 = v16;
          sub_1DEEA8818(v16, v17);
          sub_1DEEA8818(v35, v18);
          v33 = sub_1DEEDFFD4(v34, v17, v35, v18);
          sub_1DEE2416C(v35, v18);
          sub_1DEE2416C(v34, v17);
          if (!v33)
          {
            return 0;
          }

          goto LABEL_29;
        }

        v19 = v16;
        sub_1DEEA8818(v16, v17);
        v20 = v35;
        sub_1DEEA8818(v35, v18);
        sub_1DEE2416C(v19, v17);
        sub_1DEE2416C(v20, v18);
        return 0;
      }

      result = 0;
      if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

unint64_t sub_1DEEBB854()
{
  result = qword_1ECDE3530;
  if (!qword_1ECDE3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3530);
  }

  return result;
}

uint64_t sub_1DEEBB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for Zone.ID.Pool();
  v7 = MEMORY[0x1E69E7CC8];
  for (i = a1 + 40; ; i += 16)
  {
    v9 = *(i - 8);

    v10 = sub_1DEF4A4A0(v9);
    type metadata accessor for Zone();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a4;
    v11[4] = a5;
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = sub_1DEF8DE68();
      if (__OFADD__(v13, 1))
      {
        goto LABEL_26;
      }

      v7 = sub_1DEEB0948(v12, v13 + 1, &qword_1ECDE4140, &unk_1DEF91C60, type metadata accessor for Zone);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1DEEAF20C(v10);
    v17 = *(v7 + 16);
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (*(v7 + 24) >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB8404(&qword_1ECDE4140, &unk_1DEF91C60);
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB20D4(v19, isUniquelyReferenced_nonNull_native, &qword_1ECDE4140, &unk_1DEF91C60);
      v21 = sub_1DEEAF20C(v10);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_28;
      }

      v16 = v21;
      if (v20)
      {
LABEL_3:
        *(*(v7 + 56) + 8 * v16) = v11;

        goto LABEL_4;
      }
    }

    *(v7 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    *(*(v7 + 48) + 8 * v16) = v10;
    *(*(v7 + 56) + 8 * v16) = v11;

    v23 = *(v7 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_27;
    }

    *(v7 + 16) = v25;
LABEL_4:
    if (!--v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

unint64_t sub_1DEEBBB54()
{
  result = qword_1ECDE3470;
  if (!qword_1ECDE3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3470);
  }

  return result;
}

unint64_t sub_1DEEBBBA8()
{
  result = qword_1ECDE35D8;
  if (!qword_1ECDE35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35D8);
  }

  return result;
}

unint64_t sub_1DEEBBBFC()
{
  result = qword_1ECDE2CB0;
  if (!qword_1ECDE2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBC680(&qword_1ECDE2EA8, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    sub_1DEEBC680(&qword_1ECDE2E90, type metadata accessor for Zone, &protocol conformance descriptor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CB0);
  }

  return result;
}

unint64_t sub_1DEEBBCE8()
{
  result = qword_1ECDE3570;
  if (!qword_1ECDE3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3570);
  }

  return result;
}

unint64_t sub_1DEEBBD3C()
{
  result = qword_1ECDE3538;
  if (!qword_1ECDE3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3538);
  }

  return result;
}

unint64_t sub_1DEEBBD90()
{
  result = qword_1ECDE2C78;
  if (!qword_1ECDE2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C78);
  }

  return result;
}

unint64_t sub_1DEEBBE0C()
{
  result = qword_1ECDE3610;
  if (!qword_1ECDE3610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBC680(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3610);
  }

  return result;
}

unint64_t sub_1DEEBBEC0()
{
  result = qword_1ECDE3670;
  if (!qword_1ECDE3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3670);
  }

  return result;
}

unint64_t sub_1DEEBBF14()
{
  result = qword_1ECDE33C8;
  if (!qword_1ECDE33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33C8);
  }

  return result;
}

void sub_1DEEBBFE4(uint64_t a1)
{
  sub_1DEEBC288(319, &unk_1ECDE33B0, &type metadata for ScreenDescriptor);
  if (v1 <= 0x3F)
  {
    sub_1DEEBC124(319);
    if (v2 <= 0x3F)
    {
      sub_1DEEBC1D0(319);
      if (v3 <= 0x3F)
      {
        sub_1DEEBC288(319, &qword_1ECDE3658, MEMORY[0x1E6969080]);
        if (v4 <= 0x3F)
        {
          sub_1DEEBC288(319, &qword_1ECDE2C80, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1DEEBC2D4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DEEBC124(uint64_t a1)
{
  if (!qword_1ECDE2CB8)
  {
    type metadata accessor for Zone.ID();
    type metadata accessor for Zone();
    sub_1DEEBC680(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    v1 = sub_1DEF8D888();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2CB8);
    }
  }
}

void sub_1DEEBC1D0(uint64_t a1)
{
  if (!qword_1ECDE2CE8)
  {
    sub_1DEEBC234();
    v1 = sub_1DEF8D888();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2CE8);
    }
  }
}

unint64_t sub_1DEEBC234()
{
  result = qword_1ECDE3560;
  if (!qword_1ECDE3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3560);
  }

  return result;
}

void sub_1DEEBC288(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DEF8DDC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DEEBC2D4(uint64_t a1)
{
  if (!qword_1ECDE3618)
  {
    sub_1DEF8D3F8();
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE3618);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}