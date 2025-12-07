uint64_t sub_1DEEFD5A0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v2)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v3);
  MEMORY[0x1E12CBF90](v5);
  return MEMORY[0x1E12CBF90](v4);
}

uint64_t sub_1DEEFD628(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v2)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v3);
  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v4);
  return sub_1DEF8E7F8();
}

double HandshakeSchedulerEvent.handshakeDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 40);

  return result;
}

__n128 HandshakeSchedulerEvent.handshakeDescriptor.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];

  result = v8;
  *v1 = v8;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u8[0] = v4;
  v1[2].n128_u64[1] = v5;
  v1[3].n128_u64[0] = v6;
  return result;
}

void HandshakeSchedulerEvent.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t HandshakeSchedulerEvent.schedule.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

BOOL _s16ReplicatorEngine19HandshakeDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 != v8 || v3 != v7)
  {
    v13 = sub_1DEF8E4E8();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    if (v4 != v9)
    {
      return result;
    }

    return v5 == v10 && v6 == v11;
  }

  if (v4 != v9)
  {
    return 0;
  }

  return v5 == v10 && v6 == v11;
}

unint64_t sub_1DEEFD910()
{
  result = qword_1ECDE4B50;
  if (!qword_1ECDE4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B50);
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

uint64_t sub_1DEEFD980(uint64_t a1, int a2)
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

uint64_t sub_1DEEFD9C8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DEEFDA48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1DEEFDA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEEFDB30(uint64_t a1)
{
  v3 = type metadata accessor for PairingRelationship(0);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7D60(0, v9, 0);
  v10 = v42;
  v11 = a1 + 64;
  result = sub_1DEF8DE18();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 72;
  v32 = v9;
  v33 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_1DEE28028(*(a1 + 56) + *(v39 + 72) * v14, v38, type metadata accessor for PairingRelationship);
    (*v36)(v8, v19, v5);
    sub_1DEF00468(v19, type metadata accessor for PairingRelationship);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1DEEC7D60((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1DEE2F804(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1DEEFDEF8(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v21 = type metadata accessor for PairingRelationship(0);
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      sub_1DEE28028(*(a2 + 56) + *(v24 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v9, type metadata accessor for PairingRelationship);
      sub_1DEF00400(v9, v6, type metadata accessor for PairingRelationship);
      v16 = v23(v6);
      if (v3)
      {
        sub_1DEF00468(v6, type metadata accessor for PairingRelationship);

        return;
      }

      if (v16)
      {
        break;
      }

      v12 &= v12 - 1;
      sub_1DEF00468(v6, type metadata accessor for PairingRelationship);
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v19 = v22;
    sub_1DEF00400(v6, v22, type metadata accessor for PairingRelationship);
    v18 = v19;
    v17 = 0;
LABEL_13:
    (*(v24 + 56))(v18, v17, 1, v21);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v17 = 1;
        v18 = v22;
        goto LABEL_13;
      }

      v12 = *(a2 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEEFE184()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEEFE21C();
    v1 = sub_1DEF8D5B8();
    *(v0 + 16) = v1;
  }

  return v1;
}

unint64_t sub_1DEEFE21C()
{
  result = qword_1ECDE2D28;
  if (!qword_1ECDE2D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2D28);
  }

  return result;
}

uint64_t (*sub_1DEEFE280(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEEFE184();
  return sub_1DEEF0A20;
}

void sub_1DEEFE2C8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 32);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF004C8(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t sub_1DEEFE33C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF890(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEEFE3B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v14 = *(v2 + 32);
  v21 = v2;
  v22 = a1;
  v18 = sub_1DEEFF8A8;
  v19 = &v20;
  os_unfair_lock_lock(v14 + 4);
  sub_1DEEFF8C8(v15);
  os_unfair_lock_unlock(v14 + 4);
  sub_1DEE17214(v13, v10, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1DEE171B4(v13, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEF00400(v10, v7, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEEFE910(v7, 1);
    sub_1DEF00468(v7, type metadata accessor for ZoneVersionAdvertisement);
    v10 = v13;
  }

  return sub_1DEE171B4(v10, &qword_1ECDE3A78, &qword_1DEF90820);
}

uint64_t sub_1DEEFE5EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 40) = a2;
  if (a2)
  {
    v4 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
    swift_beginAccess();
    return sub_1DEE17214(a1 + v4, a3, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    v7 = type metadata accessor for ZoneVersionAdvertisement(0);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t (*sub_1DEEFE6AC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF004C8(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5;
  return sub_1DEEFE73C;
}

uint64_t HandshakeZoneAdvertiser.__allocating_init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HandshakeZoneAdvertiser.init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(a1, a2, a3);
  return v6;
}

uint64_t HandshakeZoneAdvertiser.init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  *(v3 + 24) = sub_1DEF8D598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + 32) = v8;
  *(v3 + 40) = 0;
  v9 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs) = MEMORY[0x1E69E7CD0];
  sub_1DEE29594(a1, v4 + 48);
  sub_1DEE29594(a2, v4 + 88);
  v11 = sub_1DEEA3E78(a3);

  v12 = sub_1DEF41C90(&unk_1F5A194E0, v11);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v4 + 128) = v12;
  return v4;
}

uint64_t sub_1DEEFE910(uint64_t a1, char a2)
{
  v3 = v2;
  v67 = type metadata accessor for PairingRelationship(0);
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v49 - v10;
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v49 - v15;
  v16 = v2[14];
  v17 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v16);
  v18 = (*(v17 + 8))(v16, v17);

  v19 = sub_1DEEFFEE8(v18, v3);

  v65 = v19;
  v20 = sub_1DEEFDB30(v19);
  v21 = sub_1DEEA3B70(v20);

  v22 = *(v3 + 32);
  v73[16] = a2;
  v74 = a1;
  v75 = v3;
  v23 = v11;
  v51 = v3;
  v76 = v21;
  v71 = sub_1DEF00390;
  v72 = v73;
  os_unfair_lock_lock(v22 + 4);
  sub_1DEF003B4(v79);
  v69 = 0;
  os_unfair_lock_unlock(v22 + 4);

  v25 = 0;
  v27 = v79[0] + 56;
  v26 = *(v79[0] + 56);
  v64 = v79[0];
  v28 = 1 << *(v79[0] + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v31 = (v28 + 63) >> 6;
  v61 = v12 + 16;
  v60 = v12 + 32;
  v59 = (v63 + 48);
  v63 = v12;
  v58 = (v12 + 8);
  v49 = v23;
  while (v30)
  {
    v32 = v66;
    v33 = v68;
LABEL_13:
    v35 = v63;
    v36 = v62;
    (*(v63 + 16))(v62, *(v64 + 48) + *(v63 + 72) * (__clz(__rbit64(v30)) | (v25 << 6)), v23);
    v37 = v70;
    v38 = (*(v35 + 32))(v70, v36, v23);
    MEMORY[0x1EEE9AC00](v38);
    *(&v49 - 2) = v37;
    v39 = v69;
    sub_1DEEFDEF8(sub_1DEF003D0, v65, v33);
    v69 = v39;
    sub_1DEE17214(v33, v32, &qword_1ECDE3C18, &unk_1DEF94D20);
    if ((*v59)(v32, 1, v67) == 1)
    {
      sub_1DEE171B4(v33, &qword_1ECDE3C18, &unk_1DEF94D20);
      sub_1DEE171B4(v32, &qword_1ECDE3C18, &unk_1DEF94D20);
    }

    else
    {
      v40 = v50;
      sub_1DEF00400(v32, v50, type metadata accessor for PairingRelationship);
      v41 = v40 + *(v67 + 20);
      v42 = *(v41 + 8);
      v55 = *v41;
      v43 = *(v41 + 160);
      v44 = *(v41 + 168);
      v54 = *(v41 + 48);
      v46 = *(v41 + 32);
      v45 = *(v41 + 40);
      v53 = v46;
      v52 = v45;
      v47 = v51[9];
      v48 = v51[10];
      v56 = __swift_project_boxed_opaque_existential_1(v51 + 6, v47);
      v79[0] = v55;
      v79[1] = v42;
      v57 = v42;
      v79[2] = v43;
      v79[3] = v44;
      v80 = v54;
      v81 = v53;
      v82 = v52;
      v77 = 0;
      v78 = 0;
      v55 = *(v48 + 16);

      v55(v79, &v77, v47, v48);
      sub_1DEF00468(v40, type metadata accessor for PairingRelationship);
      sub_1DEE171B4(v68, &qword_1ECDE3C18, &unk_1DEF94D20);
      v23 = v49;
    }

    v30 &= v30 - 1;
    result = (*v58)(v70, v23);
  }

  v32 = v66;
  v33 = v68;
  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
    }

    v30 = *(v27 + 8 * v34);
    ++v25;
    if (v30)
    {
      v25 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEEFEFC8(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v8 = type metadata accessor for ZoneVersionAdvertisement(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v18;
  v21 = qword_1ECDE3000;
  if (a1)
  {
    goto LABEL_11;
  }

  v41 = v19;
  v42 = a2;
  sub_1DEE28028(a2, &v40 - v18, type metadata accessor for ZoneVersionAdvertisement);
  (*(v9 + 56))(v20, 0, 1, v8);
  v22 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
  swift_beginAccess();
  v23 = *(v11 + 48);
  sub_1DEE17214(v20, v13, &qword_1ECDE3A78, &qword_1DEF90820);
  v43 = a3;
  sub_1DEE17214(a3 + v22, &v13[v23], &qword_1ECDE3A78, &qword_1DEF90820);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    v29 = v45;
    sub_1DEE17214(v13, v45, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v36 = v44;
      sub_1DEF00400(&v13[v23], v44, type metadata accessor for ZoneVersionAdvertisement);
      if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v29, v36))
      {
        sub_1DEEDB5A8(*(v29 + *(v8 + 20)), *(v36 + *(v8 + 20)));
        v38 = v37;
        sub_1DEE171B4(v20, &qword_1ECDE3A78, &qword_1DEF90820);
        sub_1DEF00468(v36, type metadata accessor for ZoneVersionAdvertisement);
        sub_1DEF00468(v29, type metadata accessor for ZoneVersionAdvertisement);
        sub_1DEE171B4(v13, &qword_1ECDE3A78, &qword_1DEF90820);
        a2 = v42;
        a3 = v43;
        v19 = v41;
        v21 = qword_1ECDE3000;
        if (v38)
        {
          goto LABEL_5;
        }

LABEL_11:
        v33 = a2;
        v34 = v19;
        sub_1DEE28028(v33, v19, type metadata accessor for ZoneVersionAdvertisement);
        (*(v9 + 56))(v34, 0, 1, v8);
        v35 = v21[10];
        swift_beginAccess();
        sub_1DEE4DCBC(v34, a3 + v35);
        swift_endAccess();
        *v47 = v46;

        return;
      }

      sub_1DEE171B4(v20, &qword_1ECDE3A78, &qword_1DEF90820);
      sub_1DEF00468(v36, type metadata accessor for ZoneVersionAdvertisement);
      sub_1DEF00468(v29, type metadata accessor for ZoneVersionAdvertisement);
      v32 = v13;
      v30 = &qword_1ECDE3A78;
      v31 = &qword_1DEF90820;
LABEL_10:
      sub_1DEE171B4(v32, v30, v31);
      a2 = v42;
      a3 = v43;
      v19 = v41;
      v21 = qword_1ECDE3000;
      goto LABEL_11;
    }

    sub_1DEE171B4(v20, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEF00468(v29, type metadata accessor for ZoneVersionAdvertisement);
LABEL_9:
    v30 = &qword_1ECDE3AD8;
    v31 = &qword_1DEF90998;
    v32 = v13;
    goto LABEL_10;
  }

  sub_1DEE171B4(v20, &qword_1ECDE3A78, &qword_1DEF90820);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_1DEE171B4(v13, &qword_1ECDE3A78, &qword_1DEF90820);
  a3 = v43;
LABEL_5:
  v25 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs;
  v26 = v46;
  if (*(*(a3 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs) + 16) <= *(v46 + 16) >> 3)
  {
    v48 = v46;

    sub_1DEEC8B48(v39);

    v28 = v48;
  }

  else
  {

    v28 = sub_1DEEC8FB4(v27, v26);
  }

  *(a3 + v25) = v26;

  *v47 = v28;
}

void *HandshakeZoneAdvertiser.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);

  return v0;
}

uint64_t HandshakeZoneAdvertiser.__deallocating_deinit()
{
  HandshakeZoneAdvertiser.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEFF664()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF004C8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t (*sub_1DEEFF6F4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 32);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF004C8(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6;
  return sub_1DEEFE73C;
}

unint64_t *sub_1DEEFF7B0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DEEFF8E4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1DEEFF84C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1DEEFF8E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v63 = a4;
  v50[0] = a2;
  v51 = a1;
  v5 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v61);
  v69 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v50 - v9;
  v10 = type metadata accessor for PairingRelationship(0);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DEF8D3F8();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v67);
  v66 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v16 = 0;
  v64 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v56 = v13 + 16;
  v57 = v13;
  v54 = (v13 + 8);
  v55 = v23;
  v58 = v12;
  v24 = v66;
  while (v22)
  {
    v27 = __clz(__rbit64(v22));
    v65 = (v22 - 1) & v22;
LABEL_13:
    v30 = v27 | (v16 << 6);
    v31 = v64;
    v32 = *(v57 + 16);
    v33 = v67;
    v32(v24, v64[6] + *(v57 + 72) * v30, v67, v14);
    v34 = v31[7];
    v35 = *(v59 + 72);
    v53 = v30;
    sub_1DEE28028(v34 + v35 * v30, v12, type metadata accessor for PairingRelationship);
    v36 = v68;
    (v32)(v68, v24, v33);
    v37 = v61;
    sub_1DEE28028(v12, v36 + *(v61 + 48), type metadata accessor for PairingRelationship);
    v38 = *(v63 + 128);
    v39 = v69;
    sub_1DEE17214(v36, v69, &unk_1ECDE4350, &qword_1DEF93400);
    v40 = v39 + *(v37 + 48);
    v41 = v62;
    sub_1DEE28028(v40 + *(v60 + 20), v62, type metadata accessor for DeviceDescriptor);
    sub_1DEF00468(v40, type metadata accessor for PairingRelationship);
    v42 = *(v41 + 48);
    sub_1DEF00468(v41, type metadata accessor for DeviceDescriptor);
    if (*(v38 + 16) && (sub_1DEF8E7A8(), MEMORY[0x1E12CBF90](v42), v43 = sub_1DEF8E7F8(), v44 = -1 << *(v38 + 32), v45 = v43 & ~v44, ((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
    {
      v46 = ~v44;
      while (*(*(v38 + 48) + v45) != v42)
      {
        v45 = (v45 + 1) & v46;
        if (((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_1DEE171B4(v68, &unk_1ECDE4350, &qword_1DEF93400);
      v47 = *v54;
      v48 = v67;
      (*v54)(v69, v67);
      v12 = v58;
      sub_1DEF00468(v58, type metadata accessor for PairingRelationship);
      v47(v66, v48);
      *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v49 = __OFADD__(v52++, 1);
      v23 = v55;
      v22 = v65;
      if (v49)
      {
        __break(1u);
LABEL_22:
        sub_1DEEC6068(v51, v50[0], v52, v64);
        return;
      }
    }

    else
    {
LABEL_5:
      sub_1DEE171B4(v68, &unk_1ECDE4350, &qword_1DEF93400);
      v25 = *v54;
      v26 = v67;
      (*v54)(v69, v67);
      v12 = v58;
      sub_1DEF00468(v58, type metadata accessor for PairingRelationship);
      v25(v66, v26);
      v23 = v55;
      v22 = v65;
    }
  }

  v28 = v16;
  while (1)
  {
    v16 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      goto LABEL_22;
    }

    v29 = v18[v16];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v65 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_1DEEFFEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1DEEFF7B0(v14, v8, a1, a2);
      MEMORY[0x1E12CCD70](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_1DEEFF8E4((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t type metadata accessor for HandshakeZoneAdvertiser(uint64_t a1)
{
  result = qword_1ECDE3038;
  if (!qword_1ECDE3038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF000FC(uint64_t a1)
{
  sub_1DEE44624(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1DEF0034C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DEF00400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEF00468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DEF00538(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1DEF00820()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF01994;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE46D40;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_27;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF0099C(void *a1, uint64_t a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = sub_1DEF8D378();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v67 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  sub_1DEF8D348();
  v28 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate;
  swift_beginAccess();
  v76 = v10;
  sub_1DEECF850(a1 + v28, v10);
  v29 = *(v12 + 16);
  v29(v7, v27, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1DEECF904(v7, a1 + v28);
  swift_endAccess();
  v75 = v23;
  v77 = v27;
  v68 = v29;
  v69 = v12 + 16;
  v29(v23, v27, v11);
  v30 = a1[12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[12] = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_1DEF381DC(0, v30[2] + 1, 1, v30);
    a1[12] = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  v34 = v11;
  if (v33 >= v32 >> 1)
  {
    v30 = sub_1DEF381DC((v32 > 1), v33 + 1, 1, v30);
  }

  v30[2] = v33 + 1;
  v35 = *(v12 + 80);
  v36 = v30 + ((v35 + 32) & ~v35) + *(v12 + 72) * v33;
  v73 = *(v12 + 32);
  v73(v36, v75, v11);
  a1[12] = v30;
  sub_1DEF8D348();
  v37 = v78;
  sub_1DEF8D2E8();
  v74 = *(v12 + 8);
  v75 = (v12 + 8);
  v38 = v74(v18, v11);
  v39 = a1[12];
  MEMORY[0x1EEE9AC00](v38);
  *(&v65 - 2) = v37;

  sub_1DEF00538(sub_1DEF0199C, (&v65 - 4), v39, MEMORY[0x1E6969530], sub_1DEEC7EA8);
  v41 = *(v40 + 16);
  if (a1[9] < v41)
  {

    v79 = v41;
    v42 = sub_1DEF8E2E8();
    sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x7669737365637845, 0xEE00746E756F4365, 0x7669737365637845, 0xEE00746E756F4365, v42, v43);

    v40 = MEMORY[0x1E69E7CC0];
  }

  a1[12] = v40;

  v44 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer))
  {
    v45 = v76;
    v46 = v72;
    sub_1DEECF850(v76, v72);
    if ((*(v12 + 48))(v46, 1, v11) == 1)
    {
      sub_1DEF0192C(v46);
      sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x6465706D6F7453, 0xE700000000000000, 0x6465706D6F7453, 0xE700000000000000, 1701736270, 0xE400000000000000);
      sub_1DEF0192C(v45);
      v47 = v74;
      v74(v77, v11);
    }

    else
    {
      v61 = v66;
      v73(v66, v46, v11);
      sub_1DEF01A5C();
      v62 = sub_1DEF8E2E8();
      sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x6465706D6F7453, 0xE700000000000000, 0x6465706D6F7453, 0xE700000000000000, v62, v63);

      v47 = v74;
      v74(v61, v11);
      sub_1DEF0192C(v45);
      v47(v77, v11);
    }
  }

  else
  {
    type metadata accessor for BasicTimer();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v48 + 24) = v49;
    *(a1 + v44) = v48;
    v50 = a1[11];
    v72 = 0;
    v51 = a1[2];
    v52 = v70;
    v68(v70, v77, v11);
    v53 = (v35 + 24) & ~v35;
    v54 = (v67 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = a1;
    v56 = (v73)(v55 + v53, v52, v34);
    *(v55 + v54) = v71;
    v57 = *(v48 + 24);
    MEMORY[0x1EEE9AC00](v56);
    *(&v65 - 6) = v48;
    *(&v65 - 5) = v50;
    *(&v65 - 4) = v51;
    *(&v65 - 3) = sub_1DEF019CC;
    *(&v65 - 2) = v55;
    MEMORY[0x1EEE9AC00](v58);
    *(&v65 - 2) = sub_1DEE1B740;
    *(&v65 - 1) = v59;

    os_unfair_lock_lock(v57 + 4);
    sub_1DEE3DEF0(v60);
    os_unfair_lock_unlock(v57 + 4);

    sub_1DEF0192C(v76);
    v47 = v74;
    v74(v77, v34);
  }

  return (v47)(v78, v34);
}

uint64_t sub_1DEF011B4()
{
  sub_1DEF8D378();
  sub_1DEF01A5C();
  v0 = sub_1DEF8E2E8();
  sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x74756F656D6954, 0xE700000000000000, 0x74756F656D6954, 0xE700000000000000, v0, v1);
}

uint64_t sub_1DEF01250()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF01924;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE13B20;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_12;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF013CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = sub_1DEF8D378();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate;
  swift_beginAccess();
  sub_1DEECF850(a1 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1DEF0192C(v7);
  }

  (*(v9 + 32))(v14, v7, v8);
  sub_1DEF8D348();
  sub_1DEF8D2D8();
  if (*(a1 + 64) < v17)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DEF8DBB8();
    sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x646C65687265764FLL, 0xE800000000000000, 0x646C65687265764FLL, 0xE800000000000000, v26, v27);
  }

  (*(v9 + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_1DEECF904(v4, a1 + v15);
  v18 = swift_endAccess();
  v19 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer;
  v20 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer);
  if (v20)
  {
    v25[0] = v25;
    v21 = *(v20 + 24);
    MEMORY[0x1EEE9AC00](v18);
    v25[-2] = sub_1DEE15450;
    v25[-1] = v20;

    os_unfair_lock_lock(v21 + 4);
    sub_1DEE15434(v22);
    os_unfair_lock_unlock(v21 + 4);

    v23 = *(v9 + 8);
    v23(v11, v8);
    v23(v14, v8);
  }

  else
  {
    v24 = *(v9 + 8);
    v24(v11, v8);
    v24(v14, v8);
  }

  *(a1 + v19) = 0;
}

uint64_t sub_1DEF0176C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WatchAssertionMonitor(uint64_t a1)
{
  result = qword_1ECDE4B58;
  if (!qword_1ECDE4B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF0184C(uint64_t a1)
{
  sub_1DEECFC40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DEF0192C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF019CC()
{
  sub_1DEF8D378();

  return sub_1DEF011B4();
}

unint64_t sub_1DEF01A5C()
{
  result = qword_1ECDE3A30;
  if (!qword_1ECDE3A30)
  {
    sub_1DEF8D378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A30);
  }

  return result;
}

uint64_t sub_1DEF01AD4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_1DEF8DE98();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (sub_1DEF8E7A8(), v6 = a1[2], v7 = a1[3], sub_1DEF8D9B8(), v8 = a1[4], v9 = a1[5], sub_1DEF8D9B8(), v10 = sub_1DEF8E7F8(), v11 = a2, v12 = a2 + 56, v13 = -1 << *(a2 + 32), v14 = v10 & ~v13, ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    v16 = *(v11 + 48);
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      v18 = v6 == v17[2] && v7 == v17[3];
      if (v18 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v19 = v8 == v17[4] && v9 == v17[5];
        if (v19 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEF01C4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]), v7 = sub_1DEF8D8B8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1DEE1E37C(&qword_1ECDE40E0, MEMORY[0x1E69695C8]);
      v15 = sub_1DEF8D908();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1DEF01E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v6 = sub_1DEF8E7F8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DEF01F34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  if ((a2 & 0xC000000000000001) != 0)
  {

    v19 = sub_1DEF8DE98();

    return v19 & 1;
  }

  v63 = v6;
  if (*(a2 + 16))
  {
    v51 = v10;
    v61 = v4;
    sub_1DEF8E7A8();
    v21 = a1[2];
    v53 = a1[3];
    sub_1DEF8D9B8();
    v22 = a1;
    v23 = a1[4];
    sub_1DEF8D9B8();

    sub_1DEF8D9B8();

    v62 = v22;
    v60 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEF03DDC(v22 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v18);
    v58 = *(v8 + 48);
    v59 = v8 + 48;
    v24 = v58(v18, 1, v7);
    v57 = v7;
    if (v24 == 1)
    {
      v25 = v8;
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v8 + 32))(v13, v18, v7);
      MEMORY[0x1E12CBF60](1);
      sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
      sub_1DEF8D8C8();
      v25 = v8;
      (*(v8 + 8))(v13, v7);
    }

    v26 = sub_1DEF8E7F8();
    v27 = a2 + 56;
    v28 = -1 << *(a2 + 32);
    v29 = v26 & ~v28;
    v30 = v53;
    if ((*(a2 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v31 = ~v28;
      v50 = (v25 + 32);
      v54 = (v25 + 8);
      v55 = ~v28;
      v56 = a2;
      do
      {
        v33 = *(*(a2 + 48) + 8 * v29);
        v34 = v33[2] == v21 && v33[3] == v30;
        if (!v34 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v35 = v33[4];
        v36 = v23[2] == v35[2] && v23[3] == v35[3];
        if (!v36 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v37 = v23[4] == v35[4] && v23[5] == v35[5];
        if (!v37 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v38 = v27;
        v39 = *(v61 + 48);
        v40 = v63;
        sub_1DEF03DDC(v33 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v63);
        sub_1DEF03DDC(v62 + v60, v40 + v39);
        v41 = v57;
        v42 = v58;
        if (v58(v40, 1, v57) == 1)
        {
          v32 = v42(v40 + v39, 1, v41);
          v27 = v38;
          if (v32 == 1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1DEF03DDC(v40, v64);
          if (v42(v40 + v39, 1, v41) != 1)
          {
            v43 = v21;
            v44 = v64;
            v45 = v51;
            (*v50)(v51, v40 + v39, v41);
            v52 = sub_1DEF8D3A8();
            v46 = *v54;
            v47 = v45;
            v48 = v44;
            v21 = v43;
            v30 = v53;
            (*v54)(v47, v41);
            v46(v48, v41);
            if (v52)
            {
LABEL_35:
              sub_1DEF03EA8(v40);
              return 1;
            }

            v27 = v38;
            sub_1DEF03EA8(v40);
            goto LABEL_11;
          }

          (*v54)(v64, v41);
          v27 = v38;
        }

        sub_1DEF03E40(v40);
LABEL_11:
        v31 = v55;
        a2 = v56;
LABEL_12:
        v29 = (v29 + 1) & v31;
      }

      while (((*(v27 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }
  }

  return 0;
}

BOOL sub_1DEF024D4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v3);
  v4 = sub_1DEF8E7F8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1DEF025A0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1DEF8E7A8();
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v35 = *a1;
  sub_1DEF8D9B8();
  v30 = v5;
  v34 = v6;
  sub_1DEF8E7C8();
  if (v6)
  {
    sub_1DEF8D9B8();
  }

  v8 = a1[5];
  v9 = a1[6];
  v33 = *(a1 + 32);
  MEMORY[0x1E12CBF90]();
  v32 = v8;
  MEMORY[0x1E12CBF90](v8);
  v31 = v9;
  MEMORY[0x1E12CBF90](v9);
  v10 = sub_1DEF8E7F8();
  v11 = a2 + 56;
  v12 = -1 << *(a2 + 32);
  v13 = v10 & ~v12;
  if (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(a2 + 48);
  v17 = v34;
  v16 = v35;
  while (1)
  {
    v20 = v15 + 56 * v13;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    v23 = *(v20 + 32);
    v24 = *(v20 + 40);
    v25 = *(v20 + 48);
    if (*v20 != v16 || *(v20 + 8) != v4)
    {
      v27 = sub_1DEF8E4E8();
      v17 = v34;
      v16 = v35;
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v21)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_15:
    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  if (v22 != v30 || v21 != v17)
  {
    v29 = sub_1DEF8E4E8();
    v17 = v34;
    v16 = v35;
    if ((v29 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (v23 != v33 || v24 != v32 || v25 != v31)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1DEF02784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_1DEF027E4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF0281C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1DEF028B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_1DEEAF350(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (*(v10 + 16))
      {
        v11 = sub_1DEEAF20C(a2);
        if (v12)
        {
          v13 = v11;
          v14 = *(v10 + 56);
          v15 = sub_1DEF8D3F8();
          v16 = *(v15 - 8);
          (*(v16 + 16))(a3, v14 + *(v16 + 72) * v13, v15);

          return (*(v16 + 56))(a3, 0, 1, v15);
        }
      }
    }
  }

  v18 = sub_1DEF8D3F8();
  return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
}

uint64_t sub_1DEF02A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v3 + 16);
  v13 = *(v12 + 16);

  if (v13 && (v14 = sub_1DEEAF350(a1), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = sub_1DEEA2FC0(MEMORY[0x1E69E7CC0]);
  }

  (*(v9 + 16))(v11, a3, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v16;
  sub_1DEF3E144(v11, a2, isUniquelyReferenced_nonNull_native);
  v18 = v23;
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1DEF3E118(v18, a1, v19);
  *(v4 + 16) = v22;
  return swift_endAccess();
}

uint64_t sub_1DEF02C18(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  swift_beginAccess();
  sub_1DEF3283C(0, v5);
  return swift_endAccess();
}

uint64_t sub_1DEF02D04(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B68, &qword_1DEF94E00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v90 - v6);
  v8 = sub_1DEF8D3F8();
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B70, &qword_1DEF94E08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v90 - v20;
  if (a1 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DEF8DE68())
  {
    v22 = MEMORY[0x1E69E7CC0];
    v95 = v18;
    if (i)
    {
      v119 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_85;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = 0;
        do
        {
          v24 = v23 + 1;
          MEMORY[0x1E12CB6E0]();

          swift_unknownObjectRelease();
          sub_1DEF8DFB8();
          sub_1DEF8DFE8();
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
          v23 = v24;
        }

        while (i != v24);
      }

      else
      {
        v25 = a1 + 32;
        do
        {
          v25 += 8;

          sub_1DEF8DFB8();
          sub_1DEF8DFE8();
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
          --i;
        }

        while (i);
      }

      v22 = v119;
    }

    v26 = sub_1DEEA3D0C(v22);

    v98 = sub_1DEEA2DBC(MEMORY[0x1E69E7CC0]);
    v27 = v90;
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(v28 + 64);
    v92 = v28 + 64;
    v30 = 1 << *(v28 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    a1 = v31 & v29;
    v91 = (v30 + 63) >> 6;
    v112 = (v113 + 16);
    v116 = (v113 + 32);
    v108 = v26 & 0xC000000000000001;
    v32 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 < 0)
    {
      v32 = v26;
    }

    v103 = v32;
    v114 = v26;
    v118 = v26 + 56;
    v111 = (v113 + 8);
    v100 = v113 + 40;
    v93 = v28;

    v33 = 0;
    v106 = v4;
    v107 = v7;
    v109 = v8;
LABEL_19:
    if (a1)
    {
      break;
    }

    if (v91 <= v33 + 1)
    {
      v37 = v33 + 1;
    }

    else
    {
      v37 = v91;
    }

    while (1)
    {
      v18 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v18 >= v91)
      {
        v96 = v37 - 1;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
        v46 = v95;
        (*(*(v88 - 8) + 56))(v95, 1, 1, v88);
        v97 = 0;
        goto LABEL_28;
      }

      a1 = *(v92 + 8 * v18);
      ++v33;
      if (a1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v18 = v33;
LABEL_27:
  v97 = (a1 - 1) & a1;
  v38 = __clz(__rbit64(a1)) | (v18 << 6);
  v39 = v93;
  v40 = v113;
  v41 = v104;
  (*(v113 + 16))(v104, *(v93 + 48) + *(v113 + 72) * v38, v8);
  v42 = *(*(v39 + 56) + 8 * v38);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
  v44 = *(v43 + 48);
  v45 = *(v40 + 32);
  v46 = v95;
  v45(v95, v41, v8);
  *(v46 + v44) = v42;
  (*(*(v43 - 8) + 56))(v46, 0, 1, v43);

  v96 = v18;
LABEL_28:
  v47 = v94;
  sub_1DEE1BA88(v46, v94, &qword_1ECDE4B70, &qword_1DEF94E08);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
  {
LABEL_79:

    *(v90 + 16) = v98;
  }

  v49 = *(v47 + *(v48 + 48));
  v115 = *v116;
  v115(v99, v47, v8);
  v102 = sub_1DEEA2FC0(MEMORY[0x1E69E7CC0]);
  v50 = 0;
  v52 = v49 + 64;
  v51 = *(v49 + 64);
  v105 = v49;
  v53 = 1 << *(v49 + 32);
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & v51;
  v18 = (v53 + 63) >> 6;
  for (j = v49 + 64; ; v52 = j)
  {
    if (!v55)
    {
LABEL_37:
      if (v18 <= v50 + 1)
      {
        v58 = v50 + 1;
      }

      else
      {
        v58 = v18;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v57 >= v18)
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
          (*(*(v74 - 8) + 56))(v4, 1, 1, v74);
          v55 = 0;
          v50 = v59;
          goto LABEL_46;
        }

        v55 = *(v52 + 8 * v57);
        ++v50;
        if (v55)
        {
          v50 = v57;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    while (1)
    {
      v57 = v50;
LABEL_45:
      v60 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v61 = v60 | (v57 << 6);
      v62 = *(*(v105 + 48) + 8 * v61);
      v63 = v104;
      (*(v113 + 16))(v104, *(v105 + 56) + *(v113 + 72) * v61, v8);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
      v65 = *(v64 + 48);
      *v4 = v62;
      v115(v4 + v65, v63, v8);
      (*(*(v64 - 8) + 56))(v4, 0, 1, v64);

LABEL_46:
      sub_1DEE1BA88(v4, v7, &qword_1ECDE4B68, &qword_1DEF94E00);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
      if ((*(*(a1 - 8) + 48))(v7, 1, a1) == 1)
      {

        v34 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v34;
        v36 = v99;
        sub_1DEF3E118(v102, v99, isUniquelyReferenced_nonNull_native);
        v98 = v119;
        (*v111)(v36, v8);
        v33 = v96;
        a1 = v97;
        goto LABEL_19;
      }

      v66 = *v7;
      v115(v117, v7 + *(a1 + 48), v8);
      if (!v108)
      {
        break;
      }

      a1 = sub_1DEF8DE98();

      if ((a1 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_49:

      v8 = v109;
      (*v111)(v117, v109);
      v4 = v106;
      v7 = v107;
      v52 = j;
      if (!v55)
      {
        goto LABEL_37;
      }
    }

    if (*(v114 + 16))
    {
      a1 = v114;
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      v67 = sub_1DEF8E7F8();
      v68 = -1 << *(a1 + 32);
      v69 = v67 & ~v68;
      if ((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v4 = ~v68;
        v7 = *(v114 + 48);
        v70 = v66[2];
        a1 = v66[3];
        do
        {
          v71 = v7[v69];
          v72 = v70 == v71[2] && a1 == v71[3];
          if (v72 || (sub_1DEF8E4E8() & 1) != 0)
          {
            v73 = v66[4] == v71[4] && v66[5] == v71[5];
            if (v73 || (sub_1DEF8E4E8() & 1) != 0)
            {
              goto LABEL_49;
            }
          }

          v69 = (v69 + 1) & v4;
        }

        while (((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0);
      }
    }

LABEL_67:
    v8 = v109;
    (*v112)(v101, v117, v109);
    v75 = v102;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v75;
    v77 = sub_1DEEAF20C(v66);
    v79 = *(v75 + 16);
    v80 = (v78 & 1) == 0;
    v81 = __OFADD__(v79, v80);
    v82 = v79 + v80;
    if (v81)
    {
      goto LABEL_81;
    }

    v83 = v78;
    if (*(v75 + 24) < v82)
    {
      break;
    }

    if ((v76 & 1) == 0)
    {
      v87 = v77;
      sub_1DEEB7AF0();
      v77 = v87;
    }

    v7 = v107;
LABEL_74:
    v4 = v119;
    v102 = v119;
    if (v83)
    {
      v56 = v113;
      (*(v113 + 40))(*(v119 + 56) + *(v113 + 72) * v77, v101, v8);

      (*(v56 + 8))(v117, v8);
    }

    else
    {
      *(v119 + 8 * (v77 >> 6) + 64) |= 1 << v77;
      *(*(v4 + 48) + 8 * v77) = v66;
      a1 = v113;
      v115(*(v4 + 56) + *(v113 + 72) * v77, v101, v8);
      (*(a1 + 8))(v117, v8);
      v85 = *(v4 + 16);
      v81 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v81)
      {
        goto LABEL_82;
      }

      *(v4 + 16) = v86;
    }

    v4 = v106;
  }

  sub_1DEEB188C(v82, v76);
  v77 = sub_1DEEAF20C(v66);
  if ((v83 & 1) == (v84 & 1))
  {
    v7 = v107;
    goto LABEL_74;
  }

LABEL_85:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF039F4()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t ZoneVersionInMemoryStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1DEF03A90()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF03B1C(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  swift_beginAccess();
  sub_1DEF3283C(0, v5);
  return swift_endAccess();
}

uint64_t sub_1DEF03C30()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1DEF03DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF03E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF03EA8(uint64_t a1)
{
  v2 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ZoneVersion.description.getter()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ZoneVersion(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE26C0C(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x7974706D65;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1DEE1E37C(&unk_1ECDE3620, MEMORY[0x1E69695E0]);
  v10 = sub_1DEF8E2E8();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_1DEF040B4(uint64_t a1)
{
  v2 = sub_1DEE25C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF040F0(uint64_t a1)
{
  v2 = sub_1DEE25C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF0412C(uint64_t a1)
{
  v2 = sub_1DEE25E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF04168(uint64_t a1)
{
  v2 = sub_1DEE25E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF041A4(uint64_t a1)
{
  v2 = sub_1DEF048FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF041E0(uint64_t a1)
{
  v2 = sub_1DEF048FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersion.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B88, &qword_1DEF94E70);
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v20 - v3;
  v4 = sub_1DEF8D3F8();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B90, &qword_1DEF94E78);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ZoneVersion(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B98, &qword_1DEF94E80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25C44();
  v16 = v26;
  sub_1DEF8E858();
  sub_1DEE26C0C(v27, v11);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v29 = 0;
    sub_1DEE25E48();
    sub_1DEF8E248();
    (*(v21 + 8))(v8, v22);
  }

  else
  {
    (*(v16 + 32))(v28, v11, v4);
    v30 = 1;
    sub_1DEF048FC();
    v18 = v23;
    sub_1DEF8E248();
    sub_1DEE1E37C(&qword_1ECDE3640, MEMORY[0x1E69695B0]);
    v19 = v25;
    sub_1DEF8E298();
    (*(v24 + 8))(v18, v19);
    (*(v16 + 8))(v28, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s16ReplicatorEngine11ZoneVersionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ZoneVersion(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1DEE26C0C(a1, &v20 - v12);
  sub_1DEE26C0C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1DEE26C0C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1DEF8D3A8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1DEF04CD0(v13);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1DEF04C68(v13);
    v17 = 0;
    return v17 & 1;
  }

  sub_1DEF04CD0(v13);
  v17 = 1;
  return v17 & 1;
}

unint64_t sub_1DEF048FC()
{
  result = qword_1ECDE3510;
  if (!qword_1ECDE3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3510);
  }

  return result;
}

unint64_t sub_1DEF049AC()
{
  result = qword_1ECDE4BB8;
  if (!qword_1ECDE4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BB8);
  }

  return result;
}

unint64_t sub_1DEF04A04()
{
  result = qword_1ECDE4BC0;
  if (!qword_1ECDE4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BC0);
  }

  return result;
}

unint64_t sub_1DEF04A5C()
{
  result = qword_1ECDE34E8;
  if (!qword_1ECDE34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34E8);
  }

  return result;
}

unint64_t sub_1DEF04AB4()
{
  result = qword_1ECDE34F0;
  if (!qword_1ECDE34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34F0);
  }

  return result;
}

unint64_t sub_1DEF04B0C()
{
  result = qword_1ECDE3500;
  if (!qword_1ECDE3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3500);
  }

  return result;
}

unint64_t sub_1DEF04B64()
{
  result = qword_1ECDE3508;
  if (!qword_1ECDE3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3508);
  }

  return result;
}

unint64_t sub_1DEF04BBC()
{
  result = qword_1ECDE3518;
  if (!qword_1ECDE3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3518);
  }

  return result;
}

unint64_t sub_1DEF04C14()
{
  result = qword_1ECDE3520;
  if (!qword_1ECDE3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3520);
  }

  return result;
}

uint64_t sub_1DEF04C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF04CD0(uint64_t a1)
{
  v2 = type metadata accessor for ZoneVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DEF04D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return *(a2 + *(a3 + 24)) < *(a1 + *(a3 + 24));
}

BOOL sub_1DEF04D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return *(a1 + *(a3 + 24)) >= *(a2 + *(a3 + 24));
}

BOOL sub_1DEF04DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return *(a2 + *(a3 + 24)) >= *(a1 + *(a3 + 24));
}

BOOL sub_1DEF04DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return *(a1 + *(a3 + 24)) < *(a2 + *(a3 + 24));
}

uint64_t sub_1DEF04E40@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = &v69 - v3;
  v73 = type metadata accessor for SyncQueue.SyncItem(0);
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v69 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v69 - v10;
  v89 = sub_1DEF8D3F8();
  v11 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v81 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD0, &qword_1DEF952F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  swift_beginAccess();
  v69 = v1;
  v19 = *(v1 + 16);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v74 = (v21 + 63) >> 6;
  v79 = v11;
  v80 = (v11 + 16);
  v77 = v11 + 32;
  v84 = (v11 + 8);
  v82 = v19;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v78 = v15;
  v87 = v18;
  for (i = v20; ; v20 = i)
  {
    if (!v23)
    {
      if (v74 <= v24 + 1)
      {
        v27 = v24 + 1;
      }

      else
      {
        v27 = v74;
      }

      v28 = v27 - 1;
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v74)
        {
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
          (*(*(v45 - 8) + 56))(v15, 1, 1, v45);
          v23 = 0;
          v24 = v28;
          goto LABEL_17;
        }

        v23 = *(v20 + 8 * v26);
        ++v24;
        if (v23)
        {
          v88 = v25;
          v24 = v26;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_41:

      v56 = v70;
      v67 = v70 + v24;
      v68 = v81;
      (*v80)(v81, v67, v15);
      swift_beginAccess();
      sub_1DEF32DDC(0, v68);
      swift_endAccess();
      goto LABEL_42;
    }

    v88 = v25;
    v26 = v24;
LABEL_16:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v82;
    v32 = v79;
    (*(v79 + 16))(v81, *(v82 + 48) + *(v79 + 72) * v30, v89);
    v33 = *(*(v31 + 56) + 8 * v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
    v35 = *(v34 + 48);
    v15 = v78;
    (*(v32 + 32))();
    *&v15[v35] = v33;
    (*(*(v34 - 8) + 56))(v15, 0, 1, v34);

    v18 = v87;
    v25 = v88;
LABEL_17:
    sub_1DEF06F78(v15, v18);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
    if ((*(*(v36 - 8) + 48))(v18, 1, v36) == 1)
    {
      break;
    }

    v37 = *&v18[*(v36 + 48)];
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v40 = *(v76 + 72);
      v41 = v75;
      sub_1DEF06FE8(v37 + v39 + v40 * (v38 - 1), v75);

      v42 = v85;
      sub_1DEF07124(v41, v85);
      sub_1DEF06FE8(v42, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DEF381B4(0, v25[2] + 1, 1, v25);
      }

      v44 = v25[2];
      v43 = v25[3];
      if (v44 >= v43 >> 1)
      {
        v25 = sub_1DEF381B4((v43 > 1), v44 + 1, 1, v25);
      }

      sub_1DEF07188(v85);
      v25[2] = v44 + 1;
      sub_1DEF07124(v86, v25 + v39 + v44 * v40);
      v18 = v87;
    }

    else
    {
    }

    (*v84)(v18, v89);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DEF88EA0(v25);
  }

  v46 = v76;
  v47 = v72;
  v48 = v25[2];
  v49 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v91[0] = v25 + v49;
  v91[1] = v48;
  sub_1DEF058A8(v91);
  v50 = v25[2];
  if (v50)
  {
    sub_1DEF06FE8(v25 + v49 + *(v46 + 72) * (v50 - 1), v47);
    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = v71;

  v53 = v51;
  v54 = v73;
  (*(v46 + 56))(v47, v53, 1, v73);
  sub_1DEF0704C(v47, v52);
  if ((*(v46 + 48))(v52, 1, v54) == 1)
  {
    return sub_1DEF070BC(v52);
  }

  v15 = v89;
  v56 = v70;
  sub_1DEF07124(v52, v70);
  v57 = v69;
  v58 = *(v69 + 16);
  if (!*(v58 + 16))
  {
    goto LABEL_42;
  }

  v24 = *(v73 + 20);

  v59 = sub_1DEEAF350(v56 + v24);
  if ((v60 & 1) == 0)
  {

LABEL_42:
    v66 = v56;
    return sub_1DEF07188(v66);
  }

  v61 = *(*(v58 + 56) + 8 * v59);

  if (!v61[2])
  {
    __break(1u);
LABEL_45:
    result = sub_1DEF88EA0(v61);
    v61 = result;
    v62 = *(result + 16);
    if (!v62)
    {
      goto LABEL_46;
    }

LABEL_37:
    v63 = v62 - 1;
    sub_1DEF07188(v61 + v49 + *(v46 + 72) * (v62 - 1));
    v61[2] = v63;
    if (v63)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *(v58 + 16);
      *(v58 + 16) = 0x8000000000000000;
      v65 = v70;
      sub_1DEF3E8B0(v61, v70 + v24, isUniquelyReferenced_nonNull_native);
      *(v58 + 16) = v90;
      swift_endAccess();
      v66 = v65;
      return sub_1DEF07188(v66);
    }

    goto LABEL_41;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v58 = v57;
  if ((result & 1) == 0)
  {
    goto LABEL_45;
  }

  v62 = v61[2];
  if (v62)
  {
    goto LABEL_37;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1DEF056E0()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncQueue.SyncItem(uint64_t a1)
{
  result = qword_1ECDE2E60;
  if (!qword_1ECDE2E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF057B0(uint64_t a1)
{
  result = type metadata accessor for Record.ID(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DEF8D3F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEF05850()
{
  result = qword_1ECDE4BC8;
  if (!qword_1ECDE4BC8)
  {
    type metadata accessor for SyncQueue.SyncItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BC8);
  }

  return result;
}

void sub_1DEF058A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DEF8E2D8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SyncQueue.SyncItem(0);
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SyncQueue.SyncItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEF05C18(v8, v9, a1, v4);
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
    sub_1DEF059D4(0, v2, 1, a1);
  }
}

void sub_1DEF059D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SyncQueue.SyncItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_1DEF06FE8(v22, v16);
      sub_1DEF06FE8(v19, v12);
      v23 = *(v8 + 28);
      v24 = v16[v23];
      v25 = v12[v23];
      if (v24 == 1)
      {
        if ((v25 & 1) == 0)
        {
          sub_1DEF07188(v12);
          sub_1DEF07188(v16);
          goto LABEL_12;
        }
      }

      else if (v25)
      {
        sub_1DEF07188(v12);
        sub_1DEF07188(v16);
LABEL_5:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_6;
      }

      v26 = *(v8 + 24);
      v27 = *&v16[v26];
      v28 = *&v12[v26];
      sub_1DEF07188(v12);
      sub_1DEF07188(v16);
      if (v28 >= v27)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v38)
      {
        __break(1u);
        return;
      }

      v29 = v39;
      sub_1DEF07124(v22, v39);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DEF07124(v29, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1DEF05C18(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v135 = a1;
  v7 = type metadata accessor for SyncQueue.SyncItem(0);
  v142 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v129 - v24;
  v144 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v4 = *v135;
    if (!*v135)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v146;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_113:
      v150 = v27;
      v124 = *(v27 + 16);
      if (v124 >= 2)
      {
        while (*v144)
        {
          v125 = v27;
          v27 = *(v27 + 16 * v124);
          v126 = v125;
          v127 = *&v125[16 * v124 + 24];
          sub_1DEF065D8(*v144 + *(v142 + 72) * v27, *v144 + *(v142 + 72) * *&v125[16 * v124 + 16], *v144 + *(v142 + 72) * v127, v4);
          if (v13)
          {
            goto LABEL_121;
          }

          if (v127 < v27)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_1DEF06BB8(v126);
          }

          if (v124 - 2 >= *(v126 + 2))
          {
            goto LABEL_137;
          }

          v128 = &v126[16 * v124];
          *v128 = v27;
          v128[1] = v127;
          v150 = v126;
          sub_1DEF06B2C(v124 - 1);
          v27 = v150;
          v124 = *(v150 + 16);
          if (v124 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_147;
      }

LABEL_121:

      return;
    }

LABEL_143:
    v27 = sub_1DEF06BB8(v27);
    goto LABEL_113;
  }

  v130 = a4;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v149 = v7;
  v145 = v23;
LABEL_4:
  v28 = v26;
  v29 = v26 + 1;
  if (v26 + 1 >= v25)
  {
    goto LABEL_36;
  }

  v140 = v25;
  v30 = *v144;
  v31 = *(v142 + 72);
  v32 = v26 + 1;
  v33 = v134;
  sub_1DEF06FE8(*v144 + v31 * v29, v134);
  v143 = v31;
  v34 = v30 + v31 * v28;
  v35 = v131;
  sub_1DEF06FE8(v34, v131);
  v36 = *(v7 + 28);
  v37 = *(v33 + v36);
  v38 = *(v35 + v36);
  v132 = v27;
  if (v37 != 1)
  {
    if (v38)
    {
      LODWORD(v141) = 0;
      v39 = v134;
      goto LABEL_11;
    }

LABEL_10:
    v39 = v134;
    LODWORD(v141) = *(v35 + *(v7 + 24)) < *(v134 + *(v7 + 24));
    goto LABEL_11;
  }

  if (v38)
  {
    goto LABEL_10;
  }

  LODWORD(v141) = 1;
  v39 = v134;
LABEL_11:
  sub_1DEF07188(v35);
  sub_1DEF07188(v39);
  v133 = v28;
  v40 = v28 + 2;
  v41 = v143 * (v28 + 2);
  v4 = v30 + v41;
  v42 = v32;
  v43 = v143 * v32;
  v44 = v30 + v143 * v32;
  do
  {
    v47 = v40;
    v48 = v42;
    v27 = v43;
    v49 = v41;
    if (v40 >= v140)
    {
      break;
    }

    v147 = v40;
    v50 = v145;
    sub_1DEF06FE8(v4, v145);
    v51 = v139;
    sub_1DEF06FE8(v44, v139);
    v52 = v51;
    v53 = *(v149 + 28);
    v54 = *(v50 + v53);
    v55 = *(v51 + v53);
    if (v54 == 1)
    {
      if ((v55 & 1) == 0)
      {
        v46 = 1;
        v45 = v145;
        goto LABEL_13;
      }
    }

    else if (v55)
    {
      v46 = 0;
      v45 = v145;
      goto LABEL_13;
    }

    v45 = v145;
    v46 = *(v51 + *(v149 + 24)) < *(v145 + *(v149 + 24));
LABEL_13:
    sub_1DEF07188(v52);
    sub_1DEF07188(v45);
    v47 = v147;
    v40 = v147 + 1;
    v4 += v143;
    v44 += v143;
    v42 = v48 + 1;
    v43 = v27 + v143;
    v41 = v49 + v143;
  }

  while (v141 == v46);
  if (!v141)
  {
    goto LABEL_34;
  }

  v4 = v133;
  if (v47 < v133)
  {
    goto LABEL_140;
  }

  if (v133 >= v47)
  {
    v29 = v47;
    v27 = v132;
    v7 = v149;
    v28 = v133;
  }

  else
  {
    v56 = v133 * v143;
    do
    {
      if (v4 != v48)
      {
        v58 = *v144;
        if (!*v144)
        {
          goto LABEL_146;
        }

        v147 = v58 + v56;
        sub_1DEF07124(v58 + v56, v138);
        if (v56 < v27 || v147 >= v58 + v49)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v56 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1DEF07124(v138, v58 + v27);
      }

      ++v4;
      v27 -= v143;
      v49 -= v143;
      v56 += v143;
    }

    while (v4 < v48--);
LABEL_34:
    v29 = v47;
    v27 = v132;
    v28 = v133;
    v7 = v149;
  }

LABEL_36:
  v59 = v144[1];
  if (v29 >= v59)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(v29, v28))
  {
    goto LABEL_139;
  }

  if (v29 - v28 >= v130)
  {
    goto LABEL_59;
  }

  v60 = v28 + v130;
  if (__OFADD__(v28, v130))
  {
    goto LABEL_141;
  }

  if (v60 >= v59)
  {
    v60 = v144[1];
  }

  if (v60 < v28)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v29 == v60)
  {
    goto LABEL_59;
  }

  v132 = v27;
  v133 = v28;
  v61 = *v144;
  v62 = *(v142 + 72);
  v63 = *v144 + v62 * (v29 - 1);
  v64 = -v62;
  v65 = v28 - v29;
  v136 = v62;
  v137 = v60;
  v4 = v61 + v29 * v62;
LABEL_47:
  v147 = v29;
  v140 = v4;
  v141 = v65;
  v143 = v63;
  while (1)
  {
    sub_1DEF06FE8(v4, v16);
    sub_1DEF06FE8(v63, v13);
    v66 = *(v7 + 28);
    v67 = v16[v66];
    v68 = v13[v66];
    if (v67 == 1)
    {
      if ((v68 & 1) == 0)
      {
        sub_1DEF07188(v13);
        sub_1DEF07188(v16);
        goto LABEL_53;
      }
    }

    else if (v68)
    {
      sub_1DEF07188(v13);
      sub_1DEF07188(v16);
LABEL_46:
      v29 = v147 + 1;
      v63 = v143 + v136;
      v65 = v141 - 1;
      v4 = v140 + v136;
      if (v147 + 1 == v137)
      {
        v29 = v137;
        v27 = v132;
        v28 = v133;
LABEL_59:
        if (v29 < v28)
        {
          goto LABEL_138;
        }

        v147 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DEF06DBC(0, *(v27 + 16) + 1, 1, v27);
        }

        v75 = *(v27 + 16);
        v74 = *(v27 + 24);
        v76 = v75 + 1;
        v26 = v147;
        if (v75 >= v74 >> 1)
        {
          v122 = sub_1DEF06DBC((v74 > 1), v75 + 1, 1, v27);
          v26 = v147;
          v27 = v122;
        }

        *(v27 + 16) = v76;
        v77 = v27 + 16 * v75;
        *(v77 + 32) = v28;
        *(v77 + 40) = v26;
        v4 = *v135;
        if (!*v135)
        {
          goto LABEL_148;
        }

        if (!v75)
        {
LABEL_3:
          v25 = v144[1];
          if (v26 >= v25)
          {
            goto LABEL_111;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v78 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v79 = *(v27 + 32);
            v80 = *(v27 + 40);
            v89 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            v82 = v89;
LABEL_79:
            if (v82)
            {
              goto LABEL_127;
            }

            v95 = (v27 + 16 * v76);
            v97 = *v95;
            v96 = v95[1];
            v98 = __OFSUB__(v96, v97);
            v99 = v96 - v97;
            v100 = v98;
            if (v98)
            {
              goto LABEL_130;
            }

            v101 = (v27 + 32 + 16 * v78);
            v103 = *v101;
            v102 = v101[1];
            v89 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v89)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v99, v104))
            {
              goto LABEL_134;
            }

            if (v99 + v104 >= v81)
            {
              if (v81 < v104)
              {
                v78 = v76 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          v105 = (v27 + 16 * v76);
          v107 = *v105;
          v106 = v105[1];
          v89 = __OFSUB__(v106, v107);
          v99 = v106 - v107;
          v100 = v89;
LABEL_93:
          if (v100)
          {
            goto LABEL_129;
          }

          v108 = v27 + 16 * v78;
          v110 = *(v108 + 32);
          v109 = *(v108 + 40);
          v89 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v89)
          {
            goto LABEL_132;
          }

          if (v111 < v99)
          {
            goto LABEL_3;
          }

LABEL_100:
          v116 = v78 - 1;
          if (v78 - 1 >= v76)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
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
            goto LABEL_142;
          }

          if (!*v144)
          {
            goto LABEL_145;
          }

          v117 = v27;
          v118 = v27 + 32;
          v27 = *(v27 + 32 + 16 * v116);
          v119 = *(v118 + 16 * v78 + 8);
          v120 = v146;
          sub_1DEF065D8(*v144 + *(v142 + 72) * v27, *v144 + *(v142 + 72) * *(v118 + 16 * v78), *v144 + *(v142 + 72) * v119, v4);
          v146 = v120;
          if (v120)
          {
            goto LABEL_121;
          }

          if (v119 < v27)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_1DEF06BB8(v117);
          }

          if (v116 >= *(v117 + 2))
          {
            goto LABEL_124;
          }

          v121 = &v117[16 * v116];
          *(v121 + 4) = v27;
          *(v121 + 5) = v119;
          v150 = v117;
          sub_1DEF06B2C(v78);
          v27 = v150;
          v76 = *(v150 + 16);
          v26 = v147;
          if (v76 <= 1)
          {
            goto LABEL_3;
          }
        }

        v83 = v27 + 32 + 16 * v76;
        v84 = *(v83 - 64);
        v85 = *(v83 - 56);
        v89 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        if (v89)
        {
          goto LABEL_125;
        }

        v88 = *(v83 - 48);
        v87 = *(v83 - 40);
        v89 = __OFSUB__(v87, v88);
        v81 = v87 - v88;
        v82 = v89;
        if (v89)
        {
          goto LABEL_126;
        }

        v90 = (v27 + 16 * v76);
        v92 = *v90;
        v91 = v90[1];
        v89 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v89)
        {
          goto LABEL_128;
        }

        v89 = __OFADD__(v81, v93);
        v94 = v81 + v93;
        if (v89)
        {
          goto LABEL_131;
        }

        if (v94 >= v86)
        {
          v112 = (v27 + 32 + 16 * v78);
          v114 = *v112;
          v113 = v112[1];
          v89 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v89)
          {
            goto LABEL_135;
          }

          if (v81 < v115)
          {
            v78 = v76 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_79;
      }

      goto LABEL_47;
    }

    v69 = *(v7 + 24);
    v70 = *&v16[v69];
    v71 = *&v13[v69];
    sub_1DEF07188(v13);
    sub_1DEF07188(v16);
    if (v71 >= v70)
    {
      v7 = v149;
      goto LABEL_46;
    }

LABEL_53:
    if (!v61)
    {
      break;
    }

    v72 = v148;
    sub_1DEF07124(v4, v148);
    v7 = v149;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DEF07124(v72, v63);
    v63 += v64;
    v4 += v64;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_1DEF065D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for SyncQueue.SyncItem(0);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v18 != -1)
  {
    v20 = (a2 - a1) / v18;
    v59 = a1;
    v58 = a4;
    if (v20 < v19 / v18)
    {
      v21 = v20 * v18;
      if (a4 < a1 || a1 + v21 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = a4 + v21;
      v57 = a4 + v21;
      if (v21 >= 1 && a2 < a3)
      {
        while (1)
        {
          sub_1DEF06FE8(a2, v16);
          sub_1DEF06FE8(a4, v12);
          v25 = *(v56 + 28);
          v26 = v16[v25];
          v27 = v12[v25];
          if (v26 == 1)
          {
            if ((v27 & 1) == 0)
            {
              sub_1DEF07188(v12);
              sub_1DEF07188(v16);
              goto LABEL_27;
            }
          }

          else if (v27)
          {
            sub_1DEF07188(v12);
            sub_1DEF07188(v16);
LABEL_31:
            if (a1 < a4 || a1 >= a4 + v18)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v58 = a4 + v18;
            a4 += v18;
            goto LABEL_39;
          }

          v28 = *(v56 + 24);
          v29 = *&v16[v28];
          v55 = a4;
          v30 = a2;
          v31 = v18;
          v32 = a3;
          v33 = v23;
          v34 = *&v12[v28];
          sub_1DEF07188(v12);
          sub_1DEF07188(v16);
          v35 = v34 < v29;
          v23 = v33;
          a3 = v32;
          v18 = v31;
          a2 = v30;
          a4 = v55;
          if (!v35)
          {
            goto LABEL_31;
          }

LABEL_27:
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
LABEL_39:
          a1 += v18;
          v59 = a1;
          if (a4 >= v23 || a2 >= a3)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_70;
    }

    v22 = v19 / v18 * v18;
    v53 = v14;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v22;
    if (v22 < 1)
    {
LABEL_69:
      v59 = a2;
      v57 = v36;
LABEL_70:
      sub_1DEF06CD4(&v59, &v58, &v57, type metadata accessor for SyncQueue.SyncItem);
      return;
    }

    v37 = -v18;
    v38 = a4 + v22;
    v55 = -v18;
LABEL_45:
    v50 = v36;
    v39 = a2;
    a2 += v37;
    v52 = v39;
    while (1)
    {
      if (v39 <= a1)
      {
        v59 = v39;
        v57 = v50;
        goto LABEL_70;
      }

      v40 = a3;
      v41 = v38 + v37;
      v42 = v54;
      sub_1DEF06FE8(v38 + v37, v54);
      v43 = v53;
      sub_1DEF06FE8(a2, v53);
      v44 = v43;
      v45 = *(v56 + 28);
      v46 = *(v42 + v45);
      v47 = *(v43 + v45);
      v51 = v36;
      if (v46 == 1)
      {
        if ((v47 & 1) == 0)
        {
          v48 = 1;
          goto LABEL_55;
        }
      }

      else if (v47)
      {
        v48 = 0;
        goto LABEL_55;
      }

      v48 = *(v43 + *(v56 + 24)) < *(v42 + *(v56 + 24));
LABEL_55:
      v49 = v42;
      a3 = v40 + v55;
      sub_1DEF07188(v44);
      sub_1DEF07188(v49);
      if (v48)
      {
        if (v40 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v36 = v51;
        }

        else
        {
          v36 = v51;
          if (v40 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v55;
        if (v38 <= a4)
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }

      v36 = v41;
      if (v40 < v38 || a3 >= v38)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v40 != v38)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v41;
      v37 = v55;
      v39 = v52;
      if (v41 <= a4)
      {
        a2 = v52;
        goto LABEL_69;
      }
    }
  }

LABEL_73:
  __break(1u);
}

uint64_t sub_1DEF06B2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DEF06BB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DEF06BCC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DEF06CD4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DEF06DBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BE0, &qword_1DEF95300);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DEF06EE8(void **a1, void **a2)
{
  if (_s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for SyncQueue.SyncItem(0), (sub_1DEF8D3A8()) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    v5 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DEF06F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD0, &qword_1DEF952F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF06FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncQueue.SyncItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF0704C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF070BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF07124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncQueue.SyncItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF07188(uint64_t a1)
{
  v2 = type metadata accessor for SyncQueue.SyncItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AuthKitPairingRelationshipFilter.filter(pairingRelationships:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_1DEF07EFC(sub_1DEF07EEC, v6);
}

uint64_t AuthKitPairingRelationshipFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1DEF072D4(char *a1, char a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v92[-v11];
  v13 = sub_1DEF8D3F8();
  v99 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v92[-v17];
  v115 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v92[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v92[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v92[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v92[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v92[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v92[-v28];
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v104 = &v92[-v32];
  if (a2)
  {
    v121 = a1;
    v122 = 0;
    v123 = 1;
    v33 = a1;
    a4(&v121);
  }

  else
  {
    v119 = a1;
    v95 = a5;
    v96 = a4;
    v111 = *(a3 + 16);
    if (v111)
    {
      v34 = 0;
      v110 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v109 = a3 + v110;
      v35 = *(v30 + 72);
      v107 = (v99 + 48);
      v102 = (v99 + 32);
      v36 = v119;
      v116 = v99 + 16;
      v117 = v119 + 56;
      v118 = (v99 + 8);
      v31.n128_u64[0] = 136446210;
      v101 = v31;
      v113 = MEMORY[0x1E69E7CC0];
      v114 = MEMORY[0x1E69E7CC0];
      v105 = v12;
      v37 = v104;
      v108 = v35;
      do
      {
        sub_1DEEE42FC(v109 + v35 * v34, v37);
        v40 = &v37[*(v115 + 20)];
        v41 = type metadata accessor for DeviceDescriptor(0);
        sub_1DEE205E0(&v40[*(v41 + 60)], v12);
        if ((*v107)(v12, 1, v13) == 1)
        {
          sub_1DEE171B4(v12, &unk_1ECDE3E80, &unk_1DEF90970);
          if (qword_1ECDE2E48 != -1)
          {
            swift_once();
          }

          v42 = sub_1DEF8D508();
          __swift_project_value_buffer(v42, qword_1ECDF5FF8);
          v43 = v103;
          sub_1DEEE42FC(v37, v103);
          v44 = sub_1DEF8D4D8();
          v45 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v121 = v47;
            *v46 = v101.n128_u32[0];
            v48 = &v43[*(v115 + 20)];
            v49 = *v48;
            v50 = v48[1];

            sub_1DEF0A300(v43, type metadata accessor for PairingRelationship);
            v51 = v49;
            v37 = v104;
            v52 = sub_1DEE12A5C(v51, v50, &v121);
            v12 = v105;

            *(v46 + 4) = v52;
            _os_log_impl(&dword_1DEE0F000, v44, v45, "Device %{public}s has no serial number and cannot by validated with AuthKit", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            v53 = v47;
            v36 = v119;
            MEMORY[0x1E12CCD70](v53, -1, -1);
            MEMORY[0x1E12CCD70](v46, -1, -1);
          }

          else
          {

            sub_1DEF0A300(v43, type metadata accessor for PairingRelationship);
          }

          sub_1DEEE42FC(v37, v112);
          v38 = v114;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1DEF38204(0, v38[2] + 1, 1, v38);
          }

          v74 = v38[2];
          v73 = v38[3];
          v75 = v74 + 1;
          if (v74 >= v73 >> 1)
          {
            v38 = sub_1DEF38204((v73 > 1), v74 + 1, 1, v38);
            v39 = v112;
            v114 = v38;
          }

          else
          {
            v114 = v38;
            v39 = v112;
          }
        }

        else
        {
          (*v102)(v120, v12, v13);
          if (*(v36 + 2) && (sub_1DEE1B9B0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v54 = sub_1DEF8D8B8(), v55 = -1 << v36[32], v56 = v54 & ~v55, ((*&v117[(v56 >> 3) & 0xFFFFFFFFFFFFFF8] >> v56) & 1) != 0))
          {
            v57 = ~v55;
            v58 = *(v99 + 72);
            v59 = *(v99 + 16);
            while (1)
            {
              v59(v15, *(v36 + 6) + v58 * v56, v13);
              sub_1DEE1B9B0(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v60 = sub_1DEF8D908();
              v61 = *v118;
              (*v118)(v15, v13);
              if (v60)
              {
                break;
              }

              v56 = (v56 + 1) & v57;
              v36 = v119;
              if (((*&v117[(v56 >> 3) & 0xFFFFFFFFFFFFFF8] >> v56) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            if (qword_1ECDE2E48 != -1)
            {
              swift_once();
            }

            v78 = sub_1DEF8D508();
            __swift_project_value_buffer(v78, qword_1ECDF5FF8);
            v79 = v37;
            v80 = v97;
            sub_1DEEE42FC(v79, v97);
            v81 = sub_1DEF8D4D8();
            v82 = sub_1DEF8DCB8();
            v83 = os_log_type_enabled(v81, v82);
            v12 = v105;
            if (v83)
            {
              v84 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v121 = v94;
              *v84 = v101.n128_u32[0];
              v85 = &v80[*(v115 + 20)];
              v93 = v82;
              v87 = *v85;
              v86 = v85[1];

              sub_1DEF0A300(v80, type metadata accessor for PairingRelationship);
              v88 = sub_1DEE12A5C(v87, v86, &v121);

              *(v84 + 4) = v88;
              _os_log_impl(&dword_1DEE0F000, v81, v93, "Device %{public}s recognized by AuthKit", v84, 0xCu);
              v89 = v94;
              __swift_destroy_boxed_opaque_existential_1(v94);
              MEMORY[0x1E12CCD70](v89, -1, -1);
              MEMORY[0x1E12CCD70](v84, -1, -1);
            }

            else
            {

              sub_1DEF0A300(v80, type metadata accessor for PairingRelationship);
            }

            v37 = v104;
            sub_1DEEE42FC(v104, v98);
            v90 = v114;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_1DEF38204(0, v90[2] + 1, 1, v90);
            }

            v74 = v90[2];
            v91 = v90[3];
            v114 = v90;
            v75 = v74 + 1;
            if (v74 >= v91 >> 1)
            {
              v114 = sub_1DEF38204((v91 > 1), v74 + 1, 1, v114);
            }

            v61(v120, v13);
            v38 = v114;
            v39 = v98;
            v36 = v119;
          }

          else
          {
LABEL_17:
            if (qword_1ECDE2E48 != -1)
            {
              swift_once();
            }

            v62 = sub_1DEF8D508();
            __swift_project_value_buffer(v62, qword_1ECDF5FF8);
            v63 = v100;
            sub_1DEEE42FC(v37, v100);
            v64 = sub_1DEF8D4D8();
            v65 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v121 = v67;
              *v66 = v101.n128_u32[0];
              v68 = &v63[*(v115 + 20)];
              v69 = *v68;
              v70 = v68[1];

              sub_1DEF0A300(v63, type metadata accessor for PairingRelationship);
              v71 = v69;
              v37 = v104;
              v72 = sub_1DEE12A5C(v71, v70, &v121);
              v36 = v119;

              *(v66 + 4) = v72;
              _os_log_impl(&dword_1DEE0F000, v64, v65, "Device %{public}s not recognized by AuthKit", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v67);
              MEMORY[0x1E12CCD70](v67, -1, -1);
              MEMORY[0x1E12CCD70](v66, -1, -1);
            }

            else
            {

              sub_1DEF0A300(v63, type metadata accessor for PairingRelationship);
            }

            sub_1DEEE42FC(v37, v106);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v12 = v105;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v113 = sub_1DEF38204(0, v113[2] + 1, 1, v113);
            }

            v74 = v113[2];
            v77 = v113[3];
            v75 = v74 + 1;
            if (v74 >= v77 >> 1)
            {
              v113 = sub_1DEF38204((v77 > 1), v74 + 1, 1, v113);
            }

            (*v118)(v120, v13);
            v38 = v113;
            v39 = v106;
          }
        }

        ++v34;
        sub_1DEF0A300(v37, type metadata accessor for PairingRelationship);
        v38[2] = v75;
        v35 = v108;
        sub_1DEF0A360(v39, v38 + v110 + v74 * v108);
      }

      while (v34 != v111);
    }

    else
    {
      v113 = MEMORY[0x1E69E7CC0];
      v114 = MEMORY[0x1E69E7CC0];
    }

    v121 = v114;
    v122 = v113;
    v123 = 0;
    (v96)(&v121, v31);
  }

  sub_1DEEA8A18(v121, v122, v123);
}

void sub_1DEF07EFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v14 = [v69 accounts];
  v68 = v10;
  if (!v14 || (v15 = v14, aBlock = 0, sub_1DEE1EA18(0, &qword_1ECDE2B78, 0x1E6959A28), sub_1DEF8DAC8(), v15, (v16 = aBlock) == 0))
  {
    v67 = v7;
    v7 = a1;
    if (qword_1ECDE2E48 == -1)
    {
LABEL_21:
      v25 = sub_1DEF8D508();
      __swift_project_value_buffer(v25, qword_1ECDF5FF8);
      v26 = sub_1DEF8D4D8();
      v27 = sub_1DEF8DC98();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DEE0F000, v26, v27, "No accounts available to AuthKit", v28, 2u);
        MEMORY[0x1E12CCD70](v28, -1, -1);
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v7;
      *(v29 + 24) = a2;
      v77 = sub_1DEF0A448;
      v78 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v74 = 1107296256;
      v75 = sub_1DEE3F0C0;
      v76 = &block_descriptor_13;
      v30 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v72 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEECE95C();
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v13, v9, v30);

      _Block_release(v30);
      (*(v67 + 8))(v9, v6);
LABEL_24:
      (*(v11 + 1))(v13, v68);
LABEL_25:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_21;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  v66 = a1;
  if (!v17)
  {

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v39 = sub_1DEF8D508();
    __swift_project_value_buffer(v39, qword_1ECDF5FF8);
    v40 = sub_1DEF8D4D8();
    v41 = sub_1DEF8DC98();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DEE0F000, v40, v41, "Failed to create AuthKit controller", v42, 2u);
      MEMORY[0x1E12CCD70](v42, -1, -1);
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v66;
    *(v43 + 24) = a2;
    v77 = sub_1DEF0A44C;
    v78 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1DEE3F0C0;
    v76 = &block_descriptor_15_0;
    v44 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v72 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v13, v9, v44);

    _Block_release(v44);
    (*(v7 + 8))(v9, v6);
    goto LABEL_24;
  }

  v63 = v17;
  v71 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    v18 = sub_1DEF8DE68();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v3;
  v65 = a2;
  v59 = v13;
  v60 = v9;
  v61 = v11;
  v62 = v6;
  v67 = v7;
  v11 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v9 = v18;
    a2 = 0;
    v13 = v71;
    v70 = v18;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1E12CB6E0](a2, v16);
      }

      else
      {
        if (a2 >= *(v13 + 2))
        {
          goto LABEL_39;
        }

        v20 = *(v16 + 8 * a2 + 32);
      }

      v21 = v20;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v72 = v20;
      sub_1DEF08AC4(&v72, &aBlock);

      v7 = v74;
      if (v74)
      {
        v22 = aBlock;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1DEF3805C(0, *(v11 + 2) + 1, 1, v11);
        }

        v24 = *(v11 + 2);
        v23 = *(v11 + 3);
        if (v24 >= v23 >> 1)
        {
          v11 = sub_1DEF3805C((v23 > 1), v24 + 1, 1, v11);
        }

        *(v11 + 2) = v24 + 1;
        v19 = &v11[16 * v24];
        *(v19 + 4) = v22;
        *(v19 + 5) = v7;
        v9 = v70;
        v13 = v71;
      }

      ++a2;
      if (v6 == v9)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_26:

  if (!*(v11 + 2))
  {

    v45 = v65;
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v46 = sub_1DEF8D508();
    __swift_project_value_buffer(v46, qword_1ECDF5FF8);
    v47 = sub_1DEF8D4D8();
    v48 = sub_1DEF8DC98();
    v49 = os_log_type_enabled(v47, v48);
    v51 = v61;
    v50 = v62;
    v52 = v67;
    v53 = v68;
    if (v49)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DEE0F000, v47, v48, "Failed to retrieve altDSIS from AuthKit", v54, 2u);
      MEMORY[0x1E12CCD70](v54, -1, -1);
    }

    v55 = swift_allocObject();
    *(v55 + 16) = v66;
    *(v55 + 24) = v45;
    v77 = sub_1DEF0A1B4;
    v78 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1DEE3F0C0;
    v76 = &block_descriptor_27_0;
    v56 = _Block_copy(&aBlock);

    v57 = v59;
    sub_1DEF8D6B8();
    v72 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v58 = v60;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v57, v58, v56);

    _Block_release(v56);
    (*(v52 + 8))(v58, v50);
    (*(v51 + 1))(v57, v53);
    goto LABEL_25;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E698DD68]) init];
  v32 = sub_1DEF8D918();

  [v31 setAltDSID_];

  v33 = swift_allocObject();
  v34 = v65;
  v35 = v66;
  v33[2] = v64;
  v33[3] = v35;
  v33[4] = v34;
  v77 = sub_1DEF0A1A8;
  v78 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1DEF0A11C;
  v76 = &block_descriptor_21;
  v36 = _Block_copy(&aBlock);
  v37 = v31;

  v38 = v63;
  [v63 deviceListWithContext:v37 completion:v36];
  _Block_release(v36);
}

uint64_t sub_1DEF089EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_1DEF07EFC(sub_1DEF0A468, v6);
}

void sub_1DEF08AC4(id *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v3 = *a1;
  v4 = [v3 accountProperties];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  strcpy(v12, "accountClass");
  BYTE13(v12[0]) = 0;
  HIWORD(v12[0]) = -5120;
  v6 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  sub_1DEF8DDE8();
  swift_unknownObjectRelease();
  sub_1DEE117C0(v12, v13);
  sub_1DEE12F7C(v13, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v11[0] == __PAIR128__(0xE700000000000000, 0x7972616D697270))
  {

    goto LABEL_9;
  }

  v7 = sub_1DEF8E4E8();

  if ((v7 & 1) == 0)
  {
LABEL_12:

    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_16;
  }

LABEL_9:
  *&v11[0] = 0x44495344746C61;
  *(&v11[0] + 1) = 0xE700000000000000;
  v8 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_14;
  }

  sub_1DEF8DDE8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1DEE117C0(v11, v12);
  sub_1DEE117C0(v12, v11);
  if (swift_dynamicCast())
  {
    *a2 = v9;
    a2[1] = v10;
    return;
  }

LABEL_16:
  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1DEF08D2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v136 = a5;
  v135 = a4;
  v134 = a3;
  v143 = a1;
  v152 = *MEMORY[0x1E69E9840];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v129);
  v7 = &v114 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v114 - v9;
  v11 = type metadata accessor for UniformHasher(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D3F8();
  v142 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v114 - v21;
  v23 = sub_1DEF8D698();
  v138 = *(v23 - 8);
  v139 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1DEF8D6D8();
  v25 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = a2;
    if (qword_1ECDE2E48 != -1)
    {
LABEL_55:
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF5FF8);
    v30 = a2;
    v31 = sub_1DEF8D4D8();
    v32 = sub_1DEF8DC98();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1DEE0F000, v31, v32, "Failed to fetch device list AuthKit: %{public}@", v33, 0xCu);
      sub_1DEE171B4(v34, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v34, -1, -1);
      MEMORY[0x1E12CCD70](v33, -1, -1);
    }

    v37 = swift_allocObject();
    v38 = v136;
    v37[2] = v135;
    v37[3] = v38;
    v37[4] = a2;
    v150 = sub_1DEF0A2CC;
    v151 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v147 = 1107296256;
    v148 = sub_1DEE3F0C0;
    v149 = &block_descriptor_51;
    v39 = _Block_copy(&aBlock);
    v40 = a2;

    sub_1DEF8D6B8();
    v145 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v41 = v137;
    v42 = v139;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v27, v41, v39);
    _Block_release(v39);

    (*(v138 + 8))(v41, v42);
    (*(v25 + 8))(v27, v140);
  }

  v122 = v22;
  v123 = v19;
  v124 = v16;
  v133 = v13;
  v125 = v10;
  v126 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v25;
  if (!v143)
  {
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v83 = sub_1DEF8D508();
    __swift_project_value_buffer(v83, qword_1ECDF5FF8);
    v84 = sub_1DEF8D4D8();
    v85 = sub_1DEF8DC98();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v140;
    if (v86)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1DEE0F000, v84, v85, "AuthKit response is nil", v88, 2u);
      MEMORY[0x1E12CCD70](v88, -1, -1);
    }

    v89 = swift_allocObject();
    v90 = v136;
    *(v89 + 16) = v135;
    *(v89 + 24) = v90;
    v150 = sub_1DEF0A228;
    v151 = v89;
    aBlock = MEMORY[0x1E69E9820];
    v147 = 1107296256;
    v148 = sub_1DEE3F0C0;
    v149 = &block_descriptor_33;
    v91 = _Block_copy(&aBlock);

    v92 = v126;
    sub_1DEF8D6B8();
    v145 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v93 = v137;
    v94 = v139;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v92, v93, v91);
    goto LABEL_43;
  }

  v120 = v143;
  v43 = [v120 deviceList];
  if (!v43)
  {
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v96 = sub_1DEF8D508();
    __swift_project_value_buffer(v96, qword_1ECDF5FF8);
    v97 = sub_1DEF8D4D8();
    v98 = sub_1DEF8DC98();
    v99 = os_log_type_enabled(v97, v98);
    v87 = v140;
    if (v99)
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_1DEE0F000, v97, v98, "AuthKit device list is nil", v100, 2u);
      MEMORY[0x1E12CCD70](v100, -1, -1);
    }

    v101 = swift_allocObject();
    v102 = v136;
    *(v101 + 16) = v135;
    *(v101 + 24) = v102;
    v150 = sub_1DEF0A44C;
    v151 = v101;
    aBlock = MEMORY[0x1E69E9820];
    v147 = 1107296256;
    v148 = sub_1DEE3F0C0;
    v149 = &block_descriptor_39_0;
    v91 = _Block_copy(&aBlock);

    v92 = v126;
    sub_1DEF8D6B8();
    v145 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v93 = v137;
    v94 = v139;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v92, v93, v91);

LABEL_43:
    _Block_release(v91);
LABEL_51:
    (*(v138 + 8))(v93, v94);
    (*(v127 + 8))(v92, v87);
  }

  v44 = v43;
  sub_1DEE1EA18(0, &qword_1ECDE2C18, 0x1E698DDD8);
  v45 = sub_1DEF8DAD8();

  v145 = MEMORY[0x1E69E7CD0];
  if (v45 >> 62)
  {
    v47 = sub_1DEF8DE68();
  }

  else
  {
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v133;
  v48 = v142;
  if (!v47)
  {
    v95 = MEMORY[0x1E69E7CD0];
LABEL_45:
    v87 = v140;

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v103 = sub_1DEF8D508();
    __swift_project_value_buffer(v103, qword_1ECDF5FF8);

    v104 = sub_1DEF8D4D8();
    v105 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      aBlock = v107;
      *v106 = 134349314;
      *(v106 + 4) = *(v95 + 16);

      *(v106 + 12) = 2082;
      sub_1DEE1B9B0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v108 = sub_1DEF8DBF8();
      v110 = sub_1DEE12A5C(v108, v109, &aBlock);

      *(v106 + 14) = v110;
      _os_log_impl(&dword_1DEE0F000, v104, v105, "Fetched %{public}ld serial numbers from AuthKit: %{public}s", v106, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x1E12CCD70](v107, -1, -1);
      MEMORY[0x1E12CCD70](v106, -1, -1);
    }

    else
    {
    }

    v111 = swift_allocObject();
    v112 = v136;
    v111[2] = v135;
    v111[3] = v112;
    v111[4] = v95;
    v150 = sub_1DEF0A248;
    v151 = v111;
    aBlock = MEMORY[0x1E69E9820];
    v147 = 1107296256;
    v148 = sub_1DEE3F0C0;
    v149 = &block_descriptor_45_0;
    v113 = _Block_copy(&aBlock);

    v92 = v126;
    sub_1DEF8D6B8();
    v145 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v93 = v137;
    v94 = v139;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v92, v93, v113);
    _Block_release(v113);

    goto LABEL_51;
  }

  v49 = 0;
  a2 = 0;
  v141 = v45 & 0xFFFFFFFFFFFFFF8;
  v142 = v45 & 0xC000000000000001;
  v118 = (v48 + 48);
  v117 = (v48 + 32);
  v116 = (v48 + 16);
  v115 = (v48 + 8);
  v121 = @"STRPCodingErrorDomain";
  *&v46 = 136380675;
  v128 = v46;
  v132 = v14;
  v119 = v7;
  v131 = v45;
  v130 = v47;
  while (1)
  {
    if (v142)
    {
      v50 = MEMORY[0x1E12CB6E0](v49, v45);
    }

    else
    {
      if (v49 >= *(v141 + 16))
      {
        goto LABEL_54;
      }

      v50 = *(v45 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v53 = [v50 serialNumber];
    if (v53)
    {
      break;
    }

LABEL_13:
    ++v49;
    if (v52 == v47)
    {
      v95 = v145;
      goto LABEL_45;
    }
  }

  v143 = v51;
  v54 = v53;
  v55 = sub_1DEF8D948();
  v57 = v56;

  v58 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
  v27 = MEMORY[0x1E12CC160](v58);
  v149 = MEMORY[0x1E69E6158];
  v150 = MEMORY[0x1E69E6160];
  aBlock = v55;
  v147 = v57;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v60 = sub_1DEE29274(&aBlock);
  v144 = 0;
  NSData = OPACKEncoderCreateNSData(v60);
  if (!NSData)
  {
    v63 = 0;
    v65 = 0xF000000000000000;
    goto LABEL_24;
  }

  v62 = NSData;
  v63 = sub_1DEF8D278();
  v65 = v64;

  LODWORD(v62) = v144;
  if (v62 != sub_1DEF8D558())
  {
LABEL_24:
    v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v76 = [v75 initWithDomain:v121 code:2 userInfo:0];
    swift_willThrow();
    sub_1DEE2416C(v63, v65);
    swift_unknownObjectRelease();
    a2 = 0;
    v25 = v133;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    objc_autoreleasePoolPop(v27);
    sub_1DEF0A300(v25, type metadata accessor for UniformHasher);
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v77 = sub_1DEF8D508();
    __swift_project_value_buffer(v77, qword_1ECDF5FF8);

    v78 = sub_1DEF8D4D8();
    v79 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v80 = v128;
      v81 = sub_1DEE12A5C(v55, v57, &aBlock);

      *(v80 + 4) = v81;
      _os_log_impl(&dword_1DEE0F000, v78, v79, "Failed to hash serial number from AuthKit: %{private}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12CCD70](v27, -1, -1);
      v82 = v80;
      v25 = v133;
      MEMORY[0x1E12CCD70](v82, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1DEE1BFF4(v63, v65);
  v25 = v133;
  a2 = 0;
  sub_1DEF11C10(v63, v65, v133);
  sub_1DEE1BFA0(v63, v65);
  sub_1DEE1BFA0(v63, v65);
  objc_autoreleasePoolPop(v27);
  v66 = v119;
  sub_1DEF8D7F8();
  *(v66 + *(v129 + 36)) = 16;
  v67 = sub_1DEF7F578(v66);
  v68 = v125;
  sub_1DEE3DF08(v67, v69, v125);
  v70 = v132;
  result = (*v118)(v68, 1, v132);
  if (result != 1)
  {
    sub_1DEF0A300(v25, type metadata accessor for UniformHasher);
    v72 = v122;
    (*v117)(v122, v68, v70);

    v73 = v124;
    (*v116)(v124, v72, v70);
    v27 = v123;
    sub_1DEF386D8(v123, v73);
    v74 = *v115;
    (*v115)(v27, v70);
    v74(v72, v70);

LABEL_30:
    v45 = v131;
    v47 = v130;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1DEF0A0A8(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_1DEF0A1D4();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

void sub_1DEF0A11C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_1DEF0A1D4()
{
  result = qword_1ECDE4BE8;
  if (!qword_1ECDE4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BE8);
  }

  return result;
}

uint64_t objectdestroy_41Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1DEF0A300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEF0A360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEF0A3D8()
{
  result = qword_1ECDE4BF0;
  if (!qword_1ECDE4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BF0);
  }

  return result;
}

void sub_1DEF0A46C()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v18);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v18;
  v18 = MEMORY[0x1E69E7CD0];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v10;
    v12 = v5;
    v13 = v10;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1DEE2774C(v6);

      sub_1DEF41310(v18);

      return;
    }

    while (1)
    {
      v16 = *(v15 + 32);

      sub_1DEF389B8(&v17, v16);

      v10 = v13;
      v5 = v14;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8E0D8())
      {
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v15 = v17;
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v13 = v10;
        v14 = v5;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1DEF0A6D8()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0A758()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E028(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.__allocating_init(persistentStore:zoneVersionStore:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  MetadataStore.init(persistentStore:zoneVersionStore:)(a1, a2);
  return v4;
}

uint64_t MetadataStore.init(persistentStore:zoneVersionStore:)(uint64_t a1, void *a2)
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = v6;
  *(v2 + 136) = 1;
  *(v2 + 144) = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  v8 = sub_1DEF8D378();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1DEF11ED0(a1, v2 + 16);
  swift_endAccess();
  v9 = sub_1DEE29594(a2, v2 + 56);
  v10 = MEMORY[0x1E12CC160](v9);
  sub_1DEF0F7FC(v2);
  objc_autoreleasePoolPop(v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1DEE171B4(a1, &qword_1ECDE4BF8, &unk_1DEF95468);
  return v2;
}

void *MetadataStore.deinit()
{
  sub_1DEE171B4(v0 + 16, &qword_1ECDE4BF8, &unk_1DEF95468);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate, &qword_1ECDE4DC0, &qword_1DEF91640);
  return v0;
}

uint64_t MetadataStore.__deallocating_deinit()
{
  MetadataStore.deinit();

  return swift_deallocClassInstance();
}

void sub_1DEF0AA40()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void MetadataStore.zoneVersion(for:pairingRelationship:)()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF8C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

unint64_t MetadataStore.zoneVersions(for:)(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for PairingRelationship(0) + 32);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 == 2)
  {
    sub_1DEE4F8D4(v3, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    sub_1DEF0A46C();
    v5 = *(v1 + 96);
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v5 + 4);
    sub_1DEE2E040(&v11);
    os_unfair_lock_unlock(v5 + 4);

    return v11;
  }

  else
  {
    v9 = *v2;
    sub_1DEE4F8C0(v3, *(v2 + 8));
    sub_1DEE4F8D4(v9, v4);
    sub_1DEE4F8D4(0, 2uLL);
    v10 = MEMORY[0x1E69E7CC0];

    return sub_1DEEA32D8(v10);
  }
}

uint64_t MetadataStore.clientDefinedID(for:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1DEE17214(v1 + 16, v10, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v11)
  {
    sub_1DEE29594(v10, v7);
    sub_1DEE171B4(v10, &qword_1ECDE4BF8, &unk_1DEF95468);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(*(v4 + 8) + 56))(a1, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1DEE171B4(v10, &qword_1ECDE4BF8, &unk_1DEF95468);
    return 0;
  }

  return v5;
}

uint64_t MetadataStore.metadata(for:)()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E028(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 112);

  v7 = sub_1DEF718D0(a2, v6);

  *a3 = v7;
  return result;
}

uint64_t sub_1DEF0AEFC@<X0>(uint64_t *a2@<X8>, void *x1_0@<X1>)
{
  swift_beginAccess();

  v6 = sub_1DEF128C8(v5, x1_0);

  *a2 = v6;
  return result;
}

uint64_t sub_1DEF0AF84()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12BFC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.localDeviceID.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE27850(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B058()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.isEnabled.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B12C()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B198()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.allowListEnabled.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B26C()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.allowList.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B364()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B3D8()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1DEF0B44C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.allowListEnabled.setter(char a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE15434(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864(v10);
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 72))(a1 & 1, v7, v8);
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.allowListEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5;
  return sub_1DEF0B630;
}

void sub_1DEF0B658(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE2E040(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.allowList.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864(v10);
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 88))(a1, v7, v8);
  }

  else
  {
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.allowList.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE2E040(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_1DEF0B844;
}

uint64_t sub_1DEF0B844(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MetadataStore.allowList.setter(*a1);
  }

  MetadataStore.allowList.setter(v2);
}

double sub_1DEF0B89C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12BFC(&v5);
  os_unfair_lock_unlock(v3 + 4);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t MetadataStore.localDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  os_unfair_lock_lock(v5 + 4);
  sub_1DEE3DEF0(v6);
  os_unfair_lock_unlock(v5 + 4);
  v8 = sub_1DEF02864(v12);
  v9 = *(v7 + 24);
  if (v9)
  {
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
    (*(v10 + 16))(a1, a2, v9, v10);
  }

  else
  {
  }

  return (v8)(v12, 0);
}

uint64_t (*MetadataStore.localDeviceID.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12BFC(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_1DEF0BA9C;
}

uint64_t sub_1DEF0BA9C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MetadataStore.localDeviceID.setter(*a1, v2);
  }

  MetadataStore.localDeviceID.setter(v3, v2);
}

void sub_1DEF0BB10(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.isEnabled.setter(char a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864(v10);
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 32))(a1 & 1, v7, v8);
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.isEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5;
  return sub_1DEF0BCF4;
}

void MetadataStore.lastAuthKitReconciliationDate.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF8C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF0BD84(uint64_t a1)
{
  v1 = *(*a1 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF0BDF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DEE17214(a1, &v6 - v3, &qword_1ECDE4DC0, &qword_1DEF91640);
  return MetadataStore.lastAuthKitReconciliationDate.setter(v4);
}

uint64_t MetadataStore.lastAuthKitReconciliationDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = *(v1 + 96);
  v18 = v1;
  v19 = a1;
  v15 = sub_1DEF1226C;
  v16 = &v17;
  os_unfair_lock_lock(v6 + 4);
  sub_1DEE3DEF0(v7);
  os_unfair_lock_unlock(v6 + 4);
  v9 = sub_1DEF02864(v20);
  if (*(v8 + 24))
  {
    v10 = v8;
    sub_1DEE17214(a1, v5, &qword_1ECDE4DC0, &qword_1DEF91640);
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 56))(v5, v11, v12);
  }

  (v9)(v20, 0);
  return sub_1DEE171B4(a1, &qword_1ECDE4DC0, &qword_1DEF91640);
}

uint64_t sub_1DEF0C004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1DEE17214(a2, &v9 - v5, &qword_1ECDE4DC0, &qword_1DEF91640);
  v7 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(v6, a1 + v7);
  return swift_endAccess();
}

void (*MetadataStore.lastAuthKitReconciliationDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 96);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v5 + 4);
  sub_1DEF12CEC(v6);
  os_unfair_lock_unlock(v5 + 4);
  return sub_1DEF0C1FC;
}

void sub_1DEF0C1FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1DEE17214(*(a1 + 16), v2, &qword_1ECDE4DC0, &qword_1DEF91640);
    MetadataStore.lastAuthKitReconciliationDate.setter(v2);
    sub_1DEE171B4(v3, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    MetadataStore.lastAuthKitReconciliationDate.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall MetadataStore.removeAll()()
{
  v1 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Removing all metadata store records", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = v1[12];
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_1DEE3DEF0(v8);
  os_unfair_lock_unlock(v6 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v16, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v17)
  {
    sub_1DEE29594(v16, v13);
    sub_1DEE171B4(v16, &qword_1ECDE4BF8, &unk_1DEF95468);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v10 + 104))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1DEE171B4(v16, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v11 = v1[10];
  v12 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v11);
  (*(v12 + 48))(v11, v12);
}

void MetadataStore.update(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - v9;
  v10 = *(v2 + 96);
  v41 = v2;
  v42 = a1;
  v31 = a1;
  v38 = sub_1DEF1234C;
  v39 = &v40;
  os_unfair_lock_lock(v10 + 4);
  sub_1DEE2E040(v46);
  os_unfair_lock_unlock(v10 + 4);
  v12 = v46[0] + 56;
  v11 = *(v46[0] + 56);
  v37 = v46[0];
  v13 = 1 << *(v46[0] + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  v34 = v5 + 16;
  v33 = v5 + 32;
  v36 = v5;
  v32 = (v5 + 8);
  if (v15)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = v36;
        v21 = v35;
        (*(v36 + 16))(v35, *(v37 + 48) + *(v36 + 72) * (v19 | (v18 << 6)), v4);
        (*(v20 + 32))(v7, v21, v4);
        sub_1DEE17214(v2 + 16, v46, &qword_1ECDE4BF8, &unk_1DEF95468);
        if (v47)
        {
          sub_1DEE29594(v46, v43);
          sub_1DEE171B4(v46, &qword_1ECDE4BF8, &unk_1DEF95468);
          v22 = v4;
          v23 = v2;
          v24 = v44;
          v25 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v26 = *(v25 + 120);
          v27 = v25;
          v2 = v23;
          v4 = v22;
          v26(v7, v24, v27);
          (*v32)(v7, v22);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v16 = v18;
          if (!v15)
          {
            goto LABEL_6;
          }
        }

        else
        {
          (*v32)(v7, v4);
          sub_1DEE171B4(v46, &qword_1ECDE4BF8, &unk_1DEF95468);
          v16 = v18;
          if (!v15)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v18 = v16;
      }
    }
  }

  swift_beginAccess();
  sub_1DEE17214(v2 + 16, v46, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v47)
  {
    sub_1DEE29594(v46, v43);
    sub_1DEE171B4(v46, &qword_1ECDE4BF8, &unk_1DEF95468);
    v28 = v44;
    v29 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v29 + 112))(v31, v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1DEE171B4(v46, &qword_1ECDE4BF8, &unk_1DEF95468);
  }
}

void sub_1DEF0C8E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v57[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v57 - v5;
  v62 = type metadata accessor for PairingRelationship(0);
  v69 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v77 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = v57 - v8;
  v78 = sub_1DEF8D3F8();
  v9 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v58 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v74 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  v79 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v61 = a1;
  v22 = *(a1 + 104);
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v59 = (v24 + 63) >> 6;
  v73 = (v9 + 16);
  v76 = (v9 + 32);
  v67 = v9;
  v68 = v22;
  v70 = (v9 + 8);

  v27 = 0;
  v64 = v21;
  v65 = v13;
  v71 = v23;
  v72 = v18;
  while (v26)
  {
    v28 = v27;
LABEL_16:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v28 << 6);
    v34 = v67;
    v33 = v68;
    v35 = v74;
    v36 = v78;
    (*(v67 + 16))(v74, *(v68 + 48) + *(v67 + 72) * v32, v78);
    v37 = *(v33 + 56) + *(v69 + 72) * v32;
    v38 = v66;
    sub_1DEF12ADC(v37, v66, type metadata accessor for PairingRelationship);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v18 = v72;
    v41(v72, v35, v36);
    sub_1DEE13958(v38, &v18[v40], type metadata accessor for PairingRelationship);
    (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
    v21 = v64;
    v13 = v65;
LABEL_17:
    sub_1DEE1BA88(v18, v21, &qword_1ECDE3C98, &unk_1DEF95610);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v42 - 8) + 48))(v21, 1, v42) == 1)
    {

      v54 = v74;
      v55 = v75;
      (*v73)(v74, v75, v78);
      v56 = v60;
      sub_1DEF12ADC(v55, v60, type metadata accessor for PairingRelationship);
      (*(v69 + 56))(v56, 0, 1, v62);
      swift_beginAccess();
      sub_1DEF32880(v56, v54);
      swift_endAccess();
      *v57[0] = v79;
      return;
    }

    v43 = *(v42 + 48);
    (*v76)(v13, v21, v78);
    sub_1DEE13958(&v21[v43], v77, type metadata accessor for PairingRelationship);
    sub_1DEE1E3C0(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    if (sub_1DEF8D908() & 1) == 0 && ((v44 = *(v62 + 20), v45 = (v77 + v44), v46 = *(v77 + v44 + 8), v47 = (v75 + v44), *v45 == *v47) && v46 == v47[1] || (sub_1DEF8E4E8()))
    {
      v48 = v58;
      v49 = v78;
      (*v73)(v58, v13, v78);
      v50 = v74;
      sub_1DEF386D8(v74, v48);
      v63 = *v70;
      v63(v50, v49);
      swift_beginAccess();
      v51 = v60;
      sub_1DEF75068(v13, v60);
      sub_1DEE171B4(v51, &qword_1ECDE3C18, &unk_1DEF94D20);
      swift_endAccess();
      v52 = v49;
      v18 = v72;
      v63(v13, v52);
    }

    else
    {
      (*v70)(v13, v78);
    }

    sub_1DEE27400(v77, type metadata accessor for PairingRelationship);
    v23 = v71;
  }

  if (v59 <= v27 + 1)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v59;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v59)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v53 - 8) + 56))(v18, 1, 1, v53);
      v26 = 0;
      v27 = v30;
      goto LABEL_17;
    }

    v26 = *(v23 + 8 * v28);
    ++v27;
    if (v26)
    {
      v27 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t MetadataStore.removePairingRelationship(with:)(uint64_t a1)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v13, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v14)
  {
    sub_1DEE29594(v13, v10);
    sub_1DEE171B4(v13, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 120))(a1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1DEE171B4(v13, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v7 = v1[10];
  v8 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v7);
  return (*(v8 + 32))(a1, v7, v8);
}

uint64_t sub_1DEF0D25C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1DEF8D3F8();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2, v7);
  v11 = type metadata accessor for PairingRelationship(0);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  swift_beginAccess();
  sub_1DEF32880(v5, v9);
  return swift_endAccess();
}

Swift::Void __swiftcall MetadataStore.update(_:)(Swift::OpaquePointer a1)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v17, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v17[3])
  {
    sub_1DEE29594(v17, v14);
    sub_1DEE171B4(v17, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v6 + 128))(a1._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
    if (!(a1._rawValue >> 62))
    {
LABEL_3:
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    sub_1DEE171B4(v17, &qword_1ECDE4BF8, &unk_1DEF95468);
    if (!(a1._rawValue >> 62))
    {
      goto LABEL_3;
    }
  }

  v7 = sub_1DEF8DE68();
LABEL_4:
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_15:
    v12 = v1[10];
    v13 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
    (*(v13 + 40))(v8, v12, v13);

    return;
  }

  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        MEMORY[0x1E12CB6E0]();

        swift_unknownObjectRelease();
        sub_1DEF8DFB8();
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      v11 = a1._rawValue + 32;
      do
      {
        v11 += 8;

        sub_1DEF8DFB8();
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        --v7;
      }

      while (v7);
    }

    v8 = v17[0];
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1DEF0D658(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v85 = &v76[-v8];
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v14 = 0;
    v84 = a1 & 0xC000000000000001;
    v78 = a1 & 0xFFFFFFFFFFFFFF8;
    v77 = a1 + 32;
    v83 = (v10 + 16);
    v92 = (v10 + 32);
    v95 = (v10 + 48);
    v90 = (v10 + 8);
    *&v11 = 136446210;
    v79 = v11;
    v82 = a1;
    v86 = a2;
    v81 = i;
    while (v84)
    {
      v15 = MEMORY[0x1E12CB6E0](v14, a1);
      v16 = __OFADD__(v14, 1);
      v17 = v14 + 1;
      if (v16)
      {
        goto LABEL_53;
      }

LABEL_12:
      v87 = v17;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v18 = sub_1DEF8D508();
      __swift_project_value_buffer(v18, qword_1ECDF6028);

      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();

      v21 = os_log_type_enabled(v19, v20);
      v89 = v15;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v96[0] = v23;
        *v22 = v79;

        v24 = RecordMetadata.description.getter();
        v26 = v25;

        v27 = sub_1DEE12A5C(v24, v26, v96);
        v15 = v89;

        *(v22 + 4) = v27;
        _os_log_impl(&dword_1DEE0F000, v19, v20, "Updating record metadata: %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1E12CCD70](v23, -1, -1);
        MEMORY[0x1E12CCD70](v22, -1, -1);
      }

      a1 = *(v15 + 16);
      v28 = v15 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
      v29 = v15;
      v30 = v93;
      (*v83)(v93, v28, v9);
      v10 = *(v29 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      v31 = v85;
      sub_1DEE17214(v29 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v85, &qword_1ECDE4DC0, &qword_1DEF91640);
      v32 = *(v29 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      v33 = type metadata accessor for RecordMetadata(0);
      v34 = swift_allocObject();
      *(v34 + 16) = a1;
      *(v34 + 24) = 0;
      v35 = v30;
      v36 = v34;
      v91 = *v92;
      v91(v34 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v35, v9);
      *(v36 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v10;
      sub_1DEE1BA88(v31, v36 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v36 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v32;
      a2 = v86;
      swift_beginAccess();
      v37 = *(a2 + 112);
      v88 = v36;
      if ((v37 & 0xC000000000000001) == 0)
      {

        v39 = a1;
LABEL_43:
        a1 = v82;
        goto LABEL_44;
      }

      if (v37 < 0)
      {
        a2 = v37;
      }

      else
      {
        a2 = v37 & 0xFFFFFFFFFFFFFF8;
      }

      v38 = sub_1DEF8DE68();
      v10 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_55;
      }

      v39 = a1;
      if (v38 == -1)
      {

        a2 = v86;
        *(v86 + 112) = MEMORY[0x1E69E7CC8];
        goto LABEL_43;
      }

      v80 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
      v40 = sub_1DEF8E138();
      v97 = v40;
      v10 = sub_1DEF8E038();
      v41 = sub_1DEF8E0D8();
      if (v41)
      {
        v43 = v41;
        v44 = v42;
        a2 = type metadata accessor for Record.ID(0);
        do
        {
          v96[0] = v43;
          swift_dynamicCast();
          v96[0] = v44;
          swift_dynamicCast();
          v47 = *(v40 + 16);
          if (*(v40 + 24) <= v47)
          {
            sub_1DEEB1864(v47 + 1, 1);
          }

          v40 = v97;
          v48 = v96[9];
          a1 = v96[10];
          sub_1DEF8E7A8();
          sub_1DEF8D9B8();
          sub_1DEF8D9B8();

          sub_1DEF8D9B8();

          sub_1DEF12ADC(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v6, type metadata accessor for Record.ID.Ownership);
          if ((*v95)(v6, 1, v9) == 1)
          {
            MEMORY[0x1E12CBF60](0);
          }

          else
          {
            v94 = v48;
            v49 = v33;
            v50 = v10;
            v51 = a2;
            v52 = v6;
            v53 = v93;
            v91(v93, v52, v9);
            MEMORY[0x1E12CBF60](1);
            sub_1DEE1E3C0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
            sub_1DEF8D8C8();
            v54 = v53;
            v6 = v52;
            a2 = v51;
            v10 = v50;
            v33 = v49;
            v48 = v94;
            (*v90)(v54, v9);
          }

          v55 = sub_1DEF8E7F8();
          v56 = v40 + 64;
          v57 = -1 << *(v40 + 32);
          v58 = v55 & ~v57;
          v59 = v58 >> 6;
          if (((-1 << v58) & ~*(v40 + 64 + 8 * (v58 >> 6))) != 0)
          {
            v45 = __clz(__rbit64((-1 << v58) & ~*(v40 + 64 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v60 = 0;
            v61 = (63 - v57) >> 6;
            do
            {
              if (++v59 == v61 && (v60 & 1) != 0)
              {
                __break(1u);
                goto LABEL_53;
              }

              v62 = v59 == v61;
              if (v59 == v61)
              {
                v59 = 0;
              }

              v60 |= v62;
              v63 = *(v56 + 8 * v59);
            }

            while (v63 == -1);
            v45 = __clz(__rbit64(~v63)) + (v59 << 6);
          }

          *(v56 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
          *(*(v40 + 48) + 8 * v45) = a1;
          *(*(v40 + 56) + 8 * v45) = v48;
          ++*(v40 + 16);
          v43 = sub_1DEF8E0D8();
          v44 = v46;
        }

        while (v43);
      }

      a2 = v86;
      *(v86 + 112) = v40;
      a1 = v82;
      v39 = v80;
LABEL_44:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96[0] = *(a2 + 112);
      v65 = v96[0];
      *(a2 + 112) = 0x8000000000000000;
      v66 = sub_1DEEAF3E8(v39);
      v68 = *(v65 + 16);
      v69 = (v67 & 1) == 0;
      v16 = __OFADD__(v68, v69);
      v70 = v68 + v69;
      if (v16)
      {
        goto LABEL_54;
      }

      v10 = v67;
      if (*(v65 + 24) >= v70)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = v66;
          sub_1DEEB7AC8();
          v66 = v75;
        }
      }

      else
      {
        sub_1DEEB1864(v70, isUniquelyReferenced_nonNull_native);
        v66 = sub_1DEEAF3E8(v39);
        if ((v10 & 1) != (v71 & 1))
        {
          type metadata accessor for Record.ID(0);
          sub_1DEF8E6E8();
          __break(1u);
          return;
        }
      }

      v14 = v87;
      v72 = v96[0];
      if (v10)
      {
        v10 = v88;
        *(*(v96[0] + 56) + 8 * v66) = v88;
      }

      else
      {
        *(v96[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
        *(v72[6] + 8 * v66) = v39;
        *(v72[7] + 8 * v66) = v88;
        v73 = v72[2];
        v16 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v16)
        {
          goto LABEL_56;
        }

        v72[2] = v74;

        v10 = v88;
      }

      *(a2 + 112) = v72;
      swift_endAccess();

      if (v14 == v81)
      {
        return;
      }
    }

    if (v14 >= *(v78 + 16))
    {
      goto LABEL_57;
    }

    v15 = *(v77 + 8 * v14);

    v16 = __OFADD__(v14, 1);
    v17 = v14 + 1;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }
}

Swift::Void __swiftcall MetadataStore.remove(recordIDs:)(Swift::OpaquePointer recordIDs)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v12, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v13)
  {
    sub_1DEE29594(v12, v9);
    sub_1DEE171B4(v12, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 136))(recordIDs._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1DEE171B4(v12, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v7 = v1[10];
  v8 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v7);
  (*(v8 + 40))(recordIDs._rawValue, v7, v8);
}

unint64_t sub_1DEF0E1E4(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1DEF8DE68();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v22[4] = a2;
    v20 = v3 & 0xC000000000000001;
    v21 = v3;
    do
    {
      if (v6)
      {
        MEMORY[0x1E12CB6E0](v5, v3);
      }

      else
      {
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v8 = sub_1DEF8D508();
      __swift_project_value_buffer(v8, qword_1ECDF6028);

      v9 = sub_1DEF8D4D8();
      v10 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136446210;

        v13 = Record.ID.description.getter();
        v14 = v4;
        v16 = v15;

        v17 = sub_1DEE12A5C(v13, v16, v22);
        v4 = v14;

        *(v11 + 4) = v17;
        _os_log_impl(&dword_1DEE0F000, v9, v10, "Removing record metadata: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v18 = v12;
        v3 = v21;
        MEMORY[0x1E12CCD70](v18, -1, -1);
        v19 = v11;
        v6 = v20;
        MEMORY[0x1E12CCD70](v19, -1, -1);
      }

      ++v5;
      swift_beginAccess();

      sub_1DEF75014(v7);
      swift_endAccess();
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_1DEF0E454(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v60 = a1;
  v56 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_1DEF8D3F8();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for ZoneVersion(0);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = *a2;
  v27 = a3[10];
  v26 = a3[11];
  v55 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 7, v27);
  v28 = v56;
  (*(v26 + 16))();
  v29 = v62;
  v30 = *(v62 + 48);
  v61 = v13;
  if (v30(v12, 1, v13) == 1)
  {
    v50 = v24;
    sub_1DEE171B4(v12, &unk_1ECDE3E80, &unk_1DEF90970);
    v31 = v28;
    v32 = v28;
    v33 = v54;
    sub_1DEF12ADC(v32, v54, type metadata accessor for PairingRelationship);
    v34 = type metadata accessor for PairingRelationship(0);
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    v35 = v52;
    v36 = v55;
    sub_1DEF0E9DC(v25, v33, v52);
    sub_1DEE171B4(v33, &qword_1ECDE3C18, &unk_1DEF94D20);
    v37 = v53;
    sub_1DEF12ADC(v35, v53, type metadata accessor for ZoneVersion);
    if (v30(v37, 1, v61) != 1)
    {
      v38 = v62;
      v39 = v51;
      v40 = v61;
      (*(v62 + 32))(v51, v37, v61);
      v41 = v36[10];
      v42 = v36[11];
      __swift_project_boxed_opaque_existential_1(v36 + 7, v41);
      (*(v42 + 24))(v31, v25, v39, v41, v42);
      (*(v38 + 8))(v39, v40);
    }

    v43 = v35;
    v24 = v50;
    sub_1DEE13958(v43, v50, type metadata accessor for ZoneVersion);
  }

  else
  {
    v44 = *(v29 + 32);
    v45 = v12;
    v46 = v61;
    v44(v17, v45, v61);
    v44(v24, v17, v46);
    (*(v29 + 56))(v24, 0, 1, v46);
  }

  v47 = v59;
  sub_1DEF12ADC(v24, v59, type metadata accessor for ZoneVersion);
  (*(v57 + 56))(v47, 0, 1, v58);

  sub_1DEF331E0(v47, v25);
  return sub_1DEE27400(v24, type metadata accessor for ZoneVersion);
}

uint64_t sub_1DEF0E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  swift_beginAccess();
  v10 = *(v3 + 112);
  v18 = a1;
  v19 = a2;

  sub_1DEF3508C(MEMORY[0x1E69E7CC0], sub_1DEF12B44, v17, v10);
  v12 = v11;

  static MetadataStore.hash(hashes:)(v12, v9);

  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1DEE171B4(v9, &unk_1ECDE3E80, &unk_1DEF90970);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a3, v9, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a3, v15, 1, v13);
}

uint64_t (*sub_1DEF0EBB8(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  *(a1 + 16) = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12BFC(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *a1 = v6;
  return sub_1DEF0BA9C;
}

uint64_t (*sub_1DEF0EC70(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6;
  return sub_1DEF0BCF4;
}

void sub_1DEF0ED04()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void (*sub_1DEF0ED94(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = MetadataStore.lastAuthKitReconciliationDate.modify(v2);
  return sub_1DEEEAC48;
}

uint64_t (*sub_1DEF0EE2C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6;
  return sub_1DEF0B630;
}

uint64_t (*sub_1DEF0EEE4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEE2E040(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *a1 = v6;
  return sub_1DEF0B844;
}

uint64_t sub_1DEF0F02C(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v28 = a1;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = *(v14 + 32);
  v17 = a3[2] == v16[2] && a3[3] == v16[3];
  if (v17 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
  {
    v19 = a3[4] == v16[4] && a3[5] == v16[5];
    if (v19 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
    {
      v20 = type metadata accessor for PairingRelationship(0);
      v21 = *(*(v20 - 8) + 48);
      if (v21(a4, 1, v20) == 1)
      {
        goto LABEL_14;
      }

      sub_1DEE17214(a4, v13, &qword_1ECDE3C18, &unk_1DEF94D20);
      result = (v21)(v13, 1, v20);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v22 = RecordMetadata.isRelevantToZoneVersionCalculation(for:)(v13);
      result = sub_1DEE27400(v13, type metadata accessor for PairingRelationship);
      if (v22)
      {
LABEL_14:
        (*(v8 + 16))(v10, v15 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v7);
        v23 = v28;
        v24 = *v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1DEF38168(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1DEF38168((v25 > 1), v26 + 1, 1, v24);
        }

        v24[2] = v26 + 1;
        result = (*(v8 + 32))(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v10, v7);
        *v23 = v24;
      }
    }
  }

  return result;
}

uint64_t static MetadataStore.hash(hashes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DEF8D7E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D818();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8CFA8();
  swift_allocObject();
  sub_1DEF8CF98();
  v23 = a1;

  sub_1DEF104D8(&v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
  sub_1DEF123BC();
  v11 = sub_1DEF8CF88();
  v21 = v8;
  v12 = v11;
  v14 = v13;

  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  sub_1DEE1BFF4(v12, v14);
  sub_1DEF11C10(v12, v14, v10);
  sub_1DEE1BFA0(v12, v14);
  sub_1DEF8D7F8();
  v15 = sub_1DEF8D3F8();
  v20 = v4;
  v16 = a2;
  v17 = v15;
  sub_1DEF8D7D8();

  sub_1DEE1BFA0(v12, v14);
  (*(v5 + 8))(v7, v20);
  (*(v22 + 8))(v10, v21);
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_1DEF0F630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C00, &qword_1DEF955F8);
  v21[3] = v9;
  v21[4] = sub_1DEF1268C();
  v10 = swift_allocObject();
  v21[0] = v10;
  *(v10 + 16) = xmmword_1DEF95450;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = __swift_project_boxed_opaque_existential_1(v21, v9);
  v12 = v11[1];
  v18[0] = *v11;
  v18[1] = v12;
  sub_1DEF8E778();
  v13 = v19;
  v14 = v20;
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_1DEE3DF08(v13, v14, v8);
  v15 = sub_1DEF8D3F8();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v8, 1, v15);
  if (result != 1)
  {
    return (*(v16 + 32))(a3, v8, v15);
  }

  __break(1u);
  return result;
}

void sub_1DEF0F7FC(uint64_t a1)
{
  swift_beginAccess();
  sub_1DEE17214(a1 + 16, &v15, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v16)
  {
    sub_1DEE2F1AC(&v15, v17);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DEF8D508();
    __swift_project_value_buffer(v3, qword_1ECDF6028);
    v4 = sub_1DEF8D4D8();
    v5 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DEE0F000, v4, v5, "Restoring metadata", v6, 2u);
      MEMORY[0x1E12CCD70](v6, -1, -1);
    }

    v7 = *(a1 + 96);
    MEMORY[0x1EEE9AC00](v8);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v7 + 4);
    sub_1DEE3DEF0(v10);
    os_unfair_lock_unlock(v7 + 4);
    if (v1)
    {
      __break(1u);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
    sub_1DEE171B4(&v15, &qword_1ECDE4BF8, &unk_1DEF95468);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v11 = sub_1DEF8D508();
    __swift_project_value_buffer(v11, qword_1ECDF6028);
    v12 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DEE0F000, v12, v13, "Persistent store is not set; not restoring metadata", v14, 2u);
      MEMORY[0x1E12CCD70](v14, -1, -1);
    }
  }
}

void sub_1DEF0FAA0(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v6 = (*(*(v4 + 8) + 24))(v5);
  swift_beginAccess();
  *(a1 + 112) = v6;

  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v9 = (*(*(v7 + 8) + 32))(v8);
  swift_beginAccess();
  *(a1 + 104) = v9;

  v11 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  *(a1 + 120) = (*(*(v10 + 8) + 8))(v11);
  *(a1 + 128) = v12;

  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  *(a1 + 144) = (*(*(v13 + 8) + 48))(v14);

  v16 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  *(a1 + 137) = (*(*(v15 + 8) + 40))(v16) & 1;
  v18 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  *(a1 + 136) = (*(*(v17 + 8) + 16))(v18) & 1;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    v23 = *(a1 + 112);
    if ((v23 & 0xC000000000000001) != 0)
    {

      v24 = sub_1DEF8DE68();
    }

    else
    {
      v24 = *(v23 + 16);
    }

    *(v22 + 4) = v24;

    _os_log_impl(&dword_1DEE0F000, v20, v21, "Restored %{public}ld record metadata items", v22, 0xCu);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  else
  {
  }
}

unint64_t MetadataStore.description.getter()
{
  sub_1DEF8DF28();

  v10 = 0xD000000000000010;
  v11 = 0x80000001DEF9D1E0;
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v9);
  os_unfair_lock_unlock(v1 + 4);
  type metadata accessor for Record.ID(0);
  type metadata accessor for RecordMetadata(0);
  sub_1DEE1E3C0(&unk_1ECDE4EB0, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
  v2 = sub_1DEF8D858();
  v4 = v3;

  MEMORY[0x1E12CB180](v2, v4);

  MEMORY[0x1E12CB180](0xD000000000000018, 0x80000001DEF9D200);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v9);
  os_unfair_lock_unlock(v1 + 4);
  sub_1DEF8D3F8();
  type metadata accessor for PairingRelationship(0);
  sub_1DEE1E3C0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v5 = sub_1DEF8D858();
  v7 = v6;

  MEMORY[0x1E12CB180](v5, v7);

  return v10;
}

Swift::Bool __swiftcall MetadataStore.blockedByAllowList(ID:)(Swift::String ID)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3];
  v5 = *(v1 + 96);
  v15 = sub_1DEF12CA4;
  v16 = v1;
  os_unfair_lock_lock(v5 + 4);
  sub_1DEF12CD4(v17);
  os_unfair_lock_unlock(v5 + 4);
  if (v17[0] == 1)
  {
    MEMORY[0x1EEE9AC00](v6);
    *&v14[-16] = sub_1DEF12C2C;
    *&v14[-8] = v1;
    os_unfair_lock_lock(v5 + 4);
    sub_1DEE2E040(v17);
    os_unfair_lock_unlock(v5 + 4);
    v7 = *v17;
    sub_1DEF8D388();
    v8 = sub_1DEF8D3F8();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v4, 1, v8);
    if (v10 == 1)
    {
      __break(1u);
      return v10;
    }

    v11 = sub_1DEF01C4C(v4, v7);

    (*(v9 + 8))(v4, v8);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v10) = v12 & 1;
  return v10;
}

uint64_t sub_1DEF101C4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4];
  v6 = *v2;
  v7 = *(*v2 + 96);
  v17 = sub_1DEF12CA4;
  v18 = v6;
  os_unfair_lock_lock(v7 + 4);
  sub_1DEF12CD4(v19);
  os_unfair_lock_unlock(v7 + 4);
  if (v19[0] != 1)
  {
    v15 = 0;
    return v15 & 1;
  }

  v9 = *(v6 + 96);
  MEMORY[0x1EEE9AC00](v8);
  *&v16[-16] = sub_1DEF12C2C;
  *&v16[-8] = v6;
  os_unfair_lock_lock(v9 + 4);
  sub_1DEE2E040(v19);
  os_unfair_lock_unlock(v9 + 4);
  v10 = *v19;
  sub_1DEF8D388();
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v5, 1, v11);
  if (result != 1)
  {
    v14 = sub_1DEF01C4C(v5, v10);

    (*(v12 + 8))(v5, v11);
    v15 = v14 ^ 1;
    return v15 & 1;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1DEF103A8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DEEFC6AC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DEF11FB8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DEF12034(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DEF1043C(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1DEEA4718(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1DEF104D8(uint64_t *a1)
{
  v2 = *(sub_1DEF8D3F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DEF06ED4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1DEF10580(v5);
  *a1 = v3;
}

void sub_1DEF10580(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DEF8E2D8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DEF8D3F8();
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DEF8D3F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEF109B8(v8, v9, a1, v4);
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
    sub_1DEF106AC(0, v2, 1, a1);
  }
}

void sub_1DEF106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DEF8D3F8();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_1DEF8D398();
      v27 = v26;
      if (v25 == sub_1DEF8D398() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_1DEF8E4E8();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1DEF109B8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1DEF8D3F8();
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_1DEF11574(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1DEF06BB8(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_1DEF06B2C(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_1DEF06BB8(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_1DEF8D398();
      v37 = v36;
      v38 = sub_1DEF8D398();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1DEF8E4E8();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_1DEF8D398();
        v52 = v51;
        if (v50 == sub_1DEF8D398() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1DEF8E4E8();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DEF06DBC(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_1DEF06DBC((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1DEF11574(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1DEF06BB8(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_1DEF06B2C(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_1DEF8D398();
    v69 = v68;
    if (v5 == sub_1DEF8D398() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1DEF8E4E8();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

void sub_1DEF11574(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_1DEF8D3F8();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_1DEF8D398();
            v51 = v50;
            if (v49 == sub_1DEF8D398() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_1DEF8E4E8();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_1DEF8D398();
        v31 = v30;
        if (v29 == sub_1DEF8D398() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_1DEF8E4E8();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_1DEF06CBC(&v73, &v72, &v71);
}

uint64_t sub_1DEF11C10(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DEF8D818();
      sub_1DEE1E3C0(&unk_1ED785FB0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DEF8D7C8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DEF11DF0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DEF11DF0(v5, v6);
  }

  sub_1DEF8D818();
  sub_1DEE1E3C0(&unk_1ED785FB0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1DEF8D7C8();
}

uint64_t sub_1DEF11DF0(uint64_t a1, uint64_t a2)
{
  result = sub_1DEF8D018();
  if (!result || (result = sub_1DEF8D048(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DEF8D038();
      sub_1DEF8D818();
      sub_1DEE1E3C0(&unk_1ED785FB0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DEF8D7C8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF11ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BF8, &unk_1DEF95468);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1DEF11F74@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEF11FB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DEF8D068();
  swift_allocObject();
  result = sub_1DEF8D008();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8D238();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DEF12034(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DEF8D068();
  swift_allocObject();
  result = sub_1DEF8D008();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DEF120B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5[1] = *(v1 + 24);
  result = sub_1DEF34F48(MEMORY[0x1E69E7CC8], sub_1DEF12AC0, v5, v3);
  *a1 = result;
  return result;
}

double sub_1DEF12198@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 144);

  return result;
}

uint64_t sub_1DEF121C8()
{
  *(*(v0 + 16) + 144) = *(v0 + 24);
}

uint64_t sub_1DEF12204()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 120) = v0[3];
  *(v1 + 128) = v2;
}

uint64_t sub_1DEF12288@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEE17214(v1 + v3, a1, &qword_1ECDE4DC0, &qword_1DEF91640);
}

uint64_t sub_1DEF122F8()
{
  swift_beginAccess();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DEF123BC()
{
  result = qword_1ECDE2C68;
  if (!qword_1ECDE2C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE1E3C0(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C68);
  }

  return result;
}

uint64_t type metadata accessor for MetadataStore(uint64_t a1)
{
  result = qword_1ECDE34B0;
  if (!qword_1ECDE34B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF124D8(uint64_t a1)
{
  sub_1DEECFC40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1DEF12628@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;

  return result;
}

double sub_1DEF12648@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1DEF1268C()
{
  result = qword_1ECDE2B60;
  if (!qword_1ECDE2B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4C00, &qword_1DEF955F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2B60);
  }

  return result;
}

uint64_t sub_1DEF12708(uint64_t a1, void *a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1DEF1043C(v13, v8, a1, a2);
      MEMORY[0x1E12CCD70](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1DEEA4718(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DEF128C8(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v12 = MEMORY[0x1E69E7CC8];
    v4 = sub_1DEF8E038();

    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Record.ID(0);
      v3 = MEMORY[0x1E69E7CC8];
      do
      {
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        if (!v11)
        {
          break;
        }

        v5 = *(v11 + 32);
        v6 = a2[2] == v5[2] && a2[3] == v5[3];
        if (v6 || (sub_1DEF8E4E8()) && (a2[4] == v5[4] ? (v7 = a2[5] == v5[5]) : (v7 = 0), v7 || (sub_1DEF8E4E8()))
        {
          v8 = *(v3 + 16);
          if (*(v3 + 24) <= v8)
          {
            sub_1DEEB1864(v8 + 1, 1);
          }

          v3 = v12;
          sub_1DEF41EC0();
        }

        else
        {
        }
      }

      while (sub_1DEF8E0D8());
    }

    sub_1DEE2774C(v4 | 0x8000000000000000);
  }

  else
  {

    v3 = sub_1DEF12708(a1, a2);
  }

  return v3;
}

uint64_t sub_1DEF12ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1DEF12B60@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 112);

  return result;
}

uint64_t ScreenDescriptor.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ScreenDescriptor.init(size:scale:cornerRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

void static ScreenDescriptor.mainScreen.getter(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainDisplay];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v3;
  v5 = [v3 nativeOrientation];
  v6 = sub_1DEF8D948();
  v8 = v7;

  [v4 frame];
  Width = CGRectGetWidth(v25);
  [v4 frame];
  Height = CGRectGetHeight(v26);
  if (sub_1DEF8D948() == v6 && v11 == v8)
  {

    goto LABEL_19;
  }

  v13 = sub_1DEF8E4E8();

  if (v13)
  {
    goto LABEL_12;
  }

  if (sub_1DEF8D948() == v6 && v14 == v8)
  {

LABEL_12:

    goto LABEL_19;
  }

  v15 = sub_1DEF8E4E8();

  if (v15)
  {
    v16 = Width;
  }

  else
  {
    v16 = Height;
  }

  if ((v15 & 1) == 0)
  {
    Height = Width;
  }

  Width = v16;
LABEL_19:
  v17 = [v2 mainDisplay];
  if (!v17)
  {
LABEL_23:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 256;
    return;
  }

  v18 = v17;
  v19 = [v17 currentMode];
  v20 = [v19 preferredScale];

  sub_1DEF1303C();
  v21 = sub_1DEF8DDB8();
  MGGetFloat32Answer();
  v23 = v22;

  *a1 = Height;
  *(a1 + 8) = Width;
  v24 = v23;
  if (v23 <= -1.0)
  {
    v24 = 0.0;
  }

  *(a1 + 16) = v20;
  *(a1 + 24) = v24;
  *(a1 + 32) = v23 <= -1.0;
  *(a1 + 33) = 0;
}

unint64_t sub_1DEF1303C()
{
  result = qword_1ECDE2B80;
  if (!qword_1ECDE2B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2B80);
  }

  return result;
}

uint64_t sub_1DEF1308C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF13758(a2, a3);
  *a1 = result;
  return result;
}