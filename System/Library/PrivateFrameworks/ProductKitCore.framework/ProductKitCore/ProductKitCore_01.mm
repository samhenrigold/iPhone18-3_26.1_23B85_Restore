uint64_t HeadphonePairing.Assets.FileIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_29EC01138();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_29EBD19CC()
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBD1A40(uint64_t a1)
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBD1A94@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_29EC01138();

  *a2 = v3 != 0;
  return result;
}

ProductKitCore::HeadphonePairing::Assets::VideoIdentifier_optional __swiftcall HeadphonePairing.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_29EC01138();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000016;
  if (v2 != 5)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29EBD1C58(uint64_t a1)
{
  sub_29EC00B88();
}

unint64_t sub_29EBD1D5C@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "ProxCard_loop-charged";
  v5 = 0xD000000000000016;
  if (v3 != 5)
  {
    v5 = 0xD000000000000014;
    v4 = "ProxCard_loop-charging";
  }

  v6 = "ProxCard_connect-loop";
  if (v3 == 3)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  if (v3 != 3)
  {
    v6 = "ProxCard_loop-fit";
  }

  if (*v1 <= 4u)
  {
    v5 = result;
    v4 = v6;
  }

  v8 = "ProxCard_features";
  if (v3 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v8 = "Card_L";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000017;
    v9 = "BatterySwap_loop";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

uint64_t HeadphonePairing.Assets.adjustedImage(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v28 - v6;
  v8 = *a1;
  v9 = 0x800000029EC06D50;
  v10 = 0xD00000000000001BLL;
  v11 = 0xEA0000000000525FLL;
  if (v8 == 4)
  {
    v11 = 0xEA00000000004C5FLL;
  }

  if (v8 != 3)
  {
    v10 = 0x64726143786F7250;
    v9 = v11;
  }

  v12 = 0x800000029EC06CF0;
  v13 = 0x800000029EC06D10;
  v14 = 0xD00000000000001DLL;
  if (v8 != 1)
  {
    v14 = 0xD00000000000001ALL;
    v13 = 0x800000029EC06D30;
  }

  if (*a1)
  {
    v12 = v13;
  }

  else
  {
    v14 = 0xD00000000000001CLL;
  }

  if (*a1 <= 2u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (*a1 <= 2u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v9;
  }

  v17 = *(v2 + 48);
  v28[0] = v15;
  v28[1] = v16;
  v28[2] = v17;
  v28[3] = 6778480;
  v28[4] = 0xE300000000000000;
  v29 = 1;
  v18 = v17;
  GenericAsset.fileURL.getter(v7);
  v19 = sub_29EC00828();
  v20 = (*(*(v19 - 8) + 48))(v7, 1, v19);
  sub_29EBC0FF4(v7);
  if (v20 == 1)
  {
    LOBYTE(v28[0]) = v8;
    v21 = _s14ProductKitCore16HeadphonePairingV6AssetsC16fallbackFilenameySSSgAE23AdjustedImageIdentifierOFZ_0(v28);
    if (v22)
    {
      v23 = v21;
      v24 = v22;

      v15 = v23;
      v16 = v24;
    }
  }

  v25 = *(type metadata accessor for AdjustedAsset(0) + 20);

  v26 = v18;

  sub_29EBC08E0(a2 + v25);
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v26;
  *(a2 + 24) = 6778480;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 1;
}

id HeadphonePairing.Assets.file(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x800000029EC06D90;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0x7473696C70;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return v2;
}

uint64_t HeadphonePairing.Assets.video(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v31 - v6;
  v8 = 0xD000000000000017;
  v9 = *a1;
  v10 = "BatterySwap_loop";
  v11 = "ProxCard_loop-charged";
  v12 = 0xD000000000000016;
  if (v9 != 5)
  {
    v12 = 0xD000000000000014;
    v11 = "ProxCard_loop-charging";
  }

  v13 = "ProxCard_connect-loop";
  v14 = 0xD000000000000015;
  if (v9 == 3)
  {
    v15 = 0xD000000000000011;
  }

  else
  {
    v15 = 0xD000000000000015;
  }

  if (v9 != 3)
  {
    v13 = "ProxCard_loop-fit";
  }

  if (*a1 <= 4u)
  {
    v12 = v15;
    v11 = v13;
  }

  v16 = "ProxCard_features";
  if (v9 != 1)
  {
    v14 = 0xD000000000000011;
    v16 = "Card_L";
  }

  if (*a1)
  {
    v8 = v14;
    v10 = v16;
  }

  if (*a1 <= 2u)
  {
    v17 = v8;
  }

  else
  {
    v17 = v12;
  }

  if (*a1 <= 2u)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  v19 = *(v2 + 48);
  v20 = v18 | 0x8000000000000000;
  v31[0] = v17;
  v31[1] = v18 | 0x8000000000000000;
  v31[2] = v19;
  v31[3] = 7761773;
  v31[4] = 0xE300000000000000;
  v32 = 0;
  v21 = v19;
  GenericAsset.fileURL.getter(v7);
  v22 = sub_29EC00828();
  v23 = (*(*(v22 - 8) + 48))(v7, 1, v22);
  sub_29EBC0FF4(v7);
  if (v23 == 1)
  {
    LOBYTE(v31[0]) = v9;
    v24 = _s14ProductKitCore16HeadphonePairingV6AssetsC16fallbackFilenameySSSgAE15VideoIdentifierOFZ_0(v31);
    if (v25)
    {
      v26 = v24;
      v27 = v25;

      v17 = v26;
      v20 = v27;
    }
  }

  v28 = *(type metadata accessor for AdjustedAsset(0) + 20);

  v29 = v21;

  sub_29EBC08E0(a2 + v28);
  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v29;
  *(a2 + 24) = 7761773;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 0;
}

uint64_t HeadphonePairing.Assets.deinit()
{
  sub_29EBCEC60(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t HeadphonePairing.Assets.__deallocating_deinit()
{
  sub_29EBCEC60(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void HeadphonePairing.Assets.updateTaskObserverWithResult(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  sub_29EBBFF48(v2, v3);
  v10 = v5;
  sub_29EBCEC60(v6, v7, v8, v9);
}

void sub_29EBD2438(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  sub_29EBBFF48(v3, v4);
  v11 = v6;
  sub_29EBCEC60(v7, v8, v9, v10);
}

unint64_t sub_29EBD24D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EBD259C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29EBBD854(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_29EBD259C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29EBD26A8(a5, a6);
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
    result = sub_29EC01078();
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

void *sub_29EBD26A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_29EBD26F4(a1, a2);
  sub_29EBD2824(&unk_2A254CB50);
  return v3;
}

void *sub_29EBD26F4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EBFF270(v5, 0);
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

  result = sub_29EC01078();
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
        v10 = sub_29EC00BB8();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EBFF270(v10, 0);
        result = sub_29EC01008();
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

uint64_t sub_29EBD2824(uint64_t result)
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

  result = sub_29EBD2910(result, v11, 1, v3);
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

char *sub_29EBD2910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FB0, &unk_29EC03520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

unint64_t _s14ProductKitCore16HeadphonePairingV6AssetsC16fallbackFilenameySSSgAE23AdjustedImageIdentifierOFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 2 && !*a1)
  {
    goto LABEL_5;
  }

  v2 = sub_29EC011F8();

  if (v2)
  {
    return 0xD000000000000014;
  }

  if (v1 == 1)
  {
LABEL_5:

    return 0xD000000000000014;
  }

  v3 = sub_29EC011F8();

  if (v3)
  {
    return 0xD000000000000014;
  }

  if (v1 <= 2 && v1)
  {
    goto LABEL_12;
  }

  v5 = sub_29EC011F8();

  if (v5)
  {
    return 0xD000000000000012;
  }

  if (v1 == 3)
  {
LABEL_12:

    return 0xD000000000000012;
  }

  v6 = sub_29EC011F8();

  if (v6)
  {
    return 0xD000000000000012;
  }

  return 0;
}

uint64_t _s14ProductKitCore16HeadphonePairingV6AssetsC16fallbackFilenameySSSgAE15VideoIdentifierOFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    if (!*a1)
    {
      goto LABEL_7;
    }

    v2 = "ProxCard_features";
    if (v1 != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*a1 > 4u || v1 == 3)
    {
      goto LABEL_7;
    }

    v2 = "ProxCard_loop-fit";
  }

  if ((v2 | 0x8000000000000000) == 0x800000029EC06DB0)
  {
    goto LABEL_17;
  }

LABEL_7:
  v3 = sub_29EC011F8();

  if (v3)
  {
    return 0x64726143786F7250;
  }

  if (v1 > 2)
  {
    if (v1 > 4 || v1 == 3)
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0x64726143786F7250;
  }

  if (v1 == 1 && 0x800000029EC06DF0 == 0x800000029EC06DB0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v4 = sub_29EC011F8();

  if (v4)
  {
    return 0x64726143786F7250;
  }

  if (v1 > 4 && v1 == 5)
  {
    goto LABEL_17;
  }

  v5 = sub_29EC011F8();

  if (v5)
  {
    return 0x64726143786F7250;
  }

  return 0;
}

unint64_t sub_29EBD3078()
{
  result = qword_2A1889F58;
  if (!qword_2A1889F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F58);
  }

  return result;
}

unint64_t sub_29EBD30D0()
{
  result = qword_2A1889F60;
  if (!qword_2A1889F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F60);
  }

  return result;
}

unint64_t sub_29EBD3128()
{
  result = qword_2A1889F68;
  if (!qword_2A1889F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F68);
  }

  return result;
}

unint64_t sub_29EBD31B0()
{
  result = qword_2A1889F80;
  if (!qword_2A1889F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F80);
  }

  return result;
}

unint64_t sub_29EBD3238()
{
  result = qword_2A1889F98;
  if (!qword_2A1889F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.AdjustedImageIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.AdjustedImageIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ProductKitCore::VideoViewFeatureTimings::Section __swiftcall VideoViewFeatureTimings.Section.init(startTime:duration:)(Swift::Double startTime, Swift::Double duration)
{
  *v2 = startTime;
  v2[1] = duration;
  result.duration = duration;
  result.startTime = startTime;
  return result;
}

uint64_t sub_29EBD35D8()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_29EBD3618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_29EC011F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EC011F8();

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

uint64_t sub_29EBD3714(uint64_t a1)
{
  v2 = sub_29EBD3914();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBD3750(uint64_t a1)
{
  v2 = sub_29EBD3914();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t VideoViewFeatureTimings.Section.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FB8, &qword_29EC03530);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBD3914();
  sub_29EC01308();
  v8[15] = 0;
  sub_29EC011A8();
  if (!v1)
  {
    v8[14] = 1;
    sub_29EC011A8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29EBD3914()
{
  result = qword_2A1889FC0;
  if (!qword_2A1889FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889FC0);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.Section.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FC8, &qword_29EC03538);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBD3914();
  sub_29EC012F8();
  if (!v2)
  {
    v16 = 0;
    sub_29EC01168();
    v10 = v9;
    v15 = 1;
    sub_29EC01168();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_29EBD3B50()
{
  sub_29EC012B8();
  MEMORY[0x29EDABD90](0);
  return sub_29EC012D8();
}

uint64_t sub_29EBD3BBC(uint64_t a1)
{
  sub_29EC012B8();
  MEMORY[0x29EDABD90](0);
  return sub_29EC012D8();
}

uint64_t sub_29EBD3C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EC011F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EBD3C9C(uint64_t a1)
{
  v2 = sub_29EBD3EB8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBD3CD8(uint64_t a1)
{
  v2 = sub_29EBD3EB8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t VideoViewFeatureTimings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FD0, &qword_29EC03540);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBD3EB8();

  sub_29EC01308();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FE0, &qword_29EC03548);
  sub_29EBD4110(&qword_2A1889FE8, sub_29EBD3F0C, MEMORY[0x29EDC9A48]);
  sub_29EC011C8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29EBD3EB8()
{
  result = qword_2A1889FD8;
  if (!qword_2A1889FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889FD8);
  }

  return result;
}

unint64_t sub_29EBD3F0C()
{
  result = qword_2A1889FF0;
  if (!qword_2A1889FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889FF0);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FF8, &qword_29EC03550);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBD3EB8();
  sub_29EC012F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FE0, &qword_29EC03548);
    sub_29EBD4110(&qword_2A188A000, sub_29EBD4188, MEMORY[0x29EDC9A78]);
    sub_29EC01188();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_29EBD4110(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1889FE0, &qword_29EC03548);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EBD4188()
{
  result = qword_2A188A008;
  if (!qword_2A188A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A008);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_29EBD42A4()
{
  result = qword_2A188A010;
  if (!qword_2A188A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A010);
  }

  return result;
}

unint64_t sub_29EBD42FC()
{
  result = qword_2A188A018;
  if (!qword_2A188A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A018);
  }

  return result;
}

unint64_t sub_29EBD4354()
{
  result = qword_2A188A020;
  if (!qword_2A188A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A020);
  }

  return result;
}

unint64_t sub_29EBD43AC()
{
  result = qword_2A188A028;
  if (!qword_2A188A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A028);
  }

  return result;
}

unint64_t sub_29EBD4404()
{
  result = qword_2A188A030;
  if (!qword_2A188A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A030);
  }

  return result;
}

unint64_t sub_29EBD445C()
{
  result = qword_2A188A038;
  if (!qword_2A188A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A038);
  }

  return result;
}

uint64_t AppleHardware.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{

  AppleHardware.Model.init(rawValue:)(&v9);
  v6 = v9;
  if (v9 == 291)
  {
    if (a1 == 0x656E6F685069 && a2 == 0xE600000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 166;
    }

    else if (a1 == 1684099177 && a2 == 0xE400000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 107;
    }

    else if (a1 == 0x6E696D2064615069 && a2 == 0xE900000000000069 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 77;
    }

    else if (a1 == 1685016681 && a2 == 0xE400000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 188;
    }

    else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB000000006F7250 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 233;
    }

    else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB00000000726941 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 193;
    }

    else if (a1 == 0x6F72502063614D69 && a2 == 0xE800000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 22;
    }

    else if (a1 == 1667321193 && a2 == 0xE400000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 17;
    }

    else if (a1 == 0x696E696D2063614DLL && a2 == 0xE800000000000000 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 242;
    }

    else if (a1 == 0x647574532063614DLL && a2 == 0xEA00000000006F69 || (sub_29EC011F8() & 1) != 0)
    {

      v6 = 190;
    }

    else
    {
      if (a1 == 0x695620656C707041 && a2 == 0xEC0000006E6F6973)
      {
      }

      else
      {
        v8 = sub_29EC011F8();

        if ((v8 & 1) == 0)
        {
          v6 = 291;
          goto LABEL_7;
        }
      }

      v6 = 278;
    }
  }

  else
  {
  }

LABEL_7:
  *a3 = v6;
  return result;
}

uint64_t sub_29EBD48E8@<X0>(uint64_t *a1@<X8>)
{
  result = AppleHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EBD4924@<X0>(uint64_t *a1@<X8>)
{
  result = _s14ProductKitCore13AppleHardwareV8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

char *sub_29EBD494C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EBD49AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29EBD496C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EBD4AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EBD498C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EBD4C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EBD49AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A068, &qword_29EC03950);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29EBD4AB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A058, &qword_29EC03940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A060, &qword_29EC03948);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EBD4C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A050, "Tb");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t _s14ProductKitCore13AppleHardwareV8allCasesSayACGvgZ_0()
{
  v5 = MEMORY[0x29EDCA190];
  sub_29EBD498C(0, 291, 0);
  result = v5;
  v1 = *(v5 + 16);
  v2 = 0x20u;
  do
  {
    v3 = *(&unk_2A254D388 + v2);
    v6 = result;
    v4 = *(result + 24);
    if (v1 >= v4 >> 1)
    {
      sub_29EBD498C((v4 > 1), v1 + 1, 1);
      result = v6;
    }

    *(result + 16) = v1 + 1;
    *(result + 2 * v1 + 32) = v3;
    v2 += 2;
    ++v1;
  }

  while (v2 != 614);
  return result;
}

unint64_t sub_29EBD4DCC()
{
  result = qword_2A188A040;
  if (!qword_2A188A040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188A048, &qword_29EC038C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A040);
  }

  return result;
}

uint64_t _s5ModelOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFEDE)
  {
    goto LABEL_17;
  }

  if (a2 + 290 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 290 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 290;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 290;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 290;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x123;
  v8 = v6 - 291;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s5ModelOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 290 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 290 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEDD)
  {
    v6 = ((a2 - 65246) >> 16) + 1;
    *result = a2 + 290;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 290;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t AppleHardware.Model.init(rawValue:)@<X0>(__int16 *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A070, &qword_29EC04B88);
  v4 = swift_allocObject();
  sub_29EBC6D14(v4, 291);
  *v5 = "iMac13,1";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  *(v5 + 24) = "iMac13,2";
  *(v5 + 32) = 8;
  *(v5 + 40) = 2;
  *(v5 + 48) = "iMac13,3";
  *(v5 + 56) = 8;
  *(v5 + 64) = 2;
  *(v5 + 72) = "iMac14,1";
  *(v5 + 80) = 8;
  *(v5 + 88) = 2;
  *(v5 + 96) = "iMac14,2";
  *(v5 + 104) = 8;
  *(v5 + 112) = 2;
  *(v5 + 120) = "iMac14,3";
  *(v5 + 128) = 8;
  *(v5 + 136) = 2;
  *(v5 + 144) = "iMac14,4";
  *(v5 + 152) = 8;
  *(v5 + 160) = 2;
  *(v5 + 168) = "iMac15,1";
  *(v5 + 176) = 8;
  *(v5 + 184) = 2;
  *(v5 + 192) = "iMac16,1";
  *(v5 + 200) = 8;
  *(v5 + 208) = 2;
  *(v5 + 216) = "iMac16,2";
  *(v5 + 224) = 8;
  *(v5 + 232) = 2;
  *(v5 + 240) = "iMac17,1";
  *(v5 + 248) = 8;
  *(v5 + 256) = 2;
  *(v5 + 264) = "iMac18,1";
  *(v5 + 272) = 8;
  *(v5 + 280) = 2;
  *(v5 + 288) = "iMac18,2";
  *(v5 + 296) = 8;
  *(v5 + 304) = 2;
  *(v5 + 312) = "iMac18,3";
  *(v5 + 320) = 8;
  *(v5 + 328) = 2;
  *(v5 + 336) = "iMac19,1";
  *(v5 + 344) = 8;
  *(v5 + 352) = 2;
  *(v5 + 360) = "iMac19,2";
  *(v5 + 368) = 8;
  *(v5 + 376) = 2;
  *(v5 + 384) = "iMac20,1";
  *(v5 + 392) = 8;
  *(v5 + 400) = 2;
  *(v5 + 408) = "iMac20,2";
  *(v5 + 416) = 8;
  *(v5 + 424) = 2;
  *(v5 + 432) = "iMac21,1";
  *(v5 + 440) = 8;
  *(v5 + 448) = 2;
  *(v5 + 456) = "Mac15,4";
  *(v5 + 464) = 7;
  *(v5 + 472) = 2;
  *(v5 + 480) = "Mac15,5";
  *(v5 + 488) = 7;
  *(v5 + 496) = 2;
  *(v5 + 504) = "iMac21,2";
  *(v5 + 512) = 8;
  *(v5 + 520) = 2;
  *(v5 + 528) = "iMacPro1,1";
  *(v5 + 536) = 10;
  *(v5 + 544) = 2;
  *(v5 + 552) = "iPad1,1";
  *(v5 + 560) = 7;
  *(v5 + 568) = 2;
  *(v5 + 576) = "iPad2,1";
  *(v5 + 584) = 7;
  *(v5 + 592) = 2;
  *(v5 + 600) = "iPad2,2";
  *(v5 + 608) = 7;
  *(v5 + 616) = 2;
  *(v5 + 624) = "iPad2,3";
  *(v5 + 632) = 7;
  *(v5 + 640) = 2;
  *(v5 + 648) = "iPad2,4";
  *(v5 + 656) = 7;
  *(v5 + 664) = 2;
  *(v5 + 672) = "iPad2,5";
  *(v5 + 680) = 7;
  *(v5 + 688) = 2;
  *(v5 + 696) = "iPad2,6";
  *(v5 + 704) = 7;
  *(v5 + 712) = 2;
  *(v5 + 720) = "iPad2,7";
  *(v5 + 728) = 7;
  *(v5 + 736) = 2;
  *(v5 + 744) = "iPad3,1";
  *(v5 + 752) = 7;
  *(v5 + 760) = 2;
  *(v5 + 768) = "iPad3,2";
  *(v5 + 776) = 7;
  *(v5 + 784) = 2;
  *(v5 + 792) = "iPad3,3";
  *(v5 + 800) = 7;
  *(v5 + 808) = 2;
  *(v5 + 816) = "iPad3,4";
  *(v5 + 824) = 7;
  *(v5 + 832) = 2;
  *(v5 + 840) = "iPad3,5";
  *(v5 + 848) = 7;
  *(v5 + 856) = 2;
  *(v5 + 864) = "iPad3,6";
  *(v5 + 872) = 7;
  *(v5 + 880) = 2;
  *(v5 + 888) = "iPad4,1";
  *(v5 + 896) = 7;
  *(v5 + 904) = 2;
  *(v5 + 912) = "iPad4,2";
  *(v5 + 920) = 7;
  *(v5 + 928) = 2;
  *(v5 + 936) = "iPad4,3";
  *(v5 + 944) = 7;
  *(v5 + 952) = 2;
  *(v5 + 960) = "iPad4,4";
  *(v5 + 968) = 7;
  *(v5 + 976) = 2;
  *(v5 + 984) = "iPad4,5";
  *(v5 + 992) = 7;
  *(v5 + 1000) = 2;
  *(v5 + 1008) = "iPad4,6";
  *(v5 + 1016) = 7;
  *(v5 + 1024) = 2;
  *(v5 + 1032) = "iPad4,7";
  *(v5 + 1040) = 7;
  *(v5 + 1048) = 2;
  *(v5 + 1056) = "iPad4,8";
  *(v5 + 1064) = 7;
  *(v5 + 1072) = 2;
  *(v5 + 1080) = "iPad4,9";
  *(v5 + 1088) = 7;
  *(v5 + 1096) = 2;
  *(v5 + 1104) = "iPad5,1";
  *(v5 + 1112) = 7;
  *(v5 + 1120) = 2;
  *(v5 + 1128) = "iPad5,2";
  *(v5 + 1136) = 7;
  *(v5 + 1144) = 2;
  *(v5 + 1152) = "iPad5,3";
  *(v5 + 1160) = 7;
  *(v5 + 1168) = 2;
  *(v5 + 1176) = "iPad5,4";
  *(v5 + 1184) = 7;
  *(v5 + 1192) = 2;
  *(v5 + 1200) = "iPad6,3";
  *(v5 + 1208) = 7;
  *(v5 + 1216) = 2;
  *(v5 + 1224) = "iPad6,4";
  *(v5 + 1232) = 7;
  *(v5 + 1240) = 2;
  *(v5 + 1248) = "iPad6,7";
  *(v5 + 1256) = 7;
  *(v5 + 1264) = 2;
  *(v5 + 1272) = "iPad6,8";
  *(v5 + 1280) = 7;
  *(v5 + 1288) = 2;
  *(v5 + 1296) = "iPad6,11";
  *(v5 + 1304) = 8;
  *(v5 + 1312) = 2;
  *(v5 + 1320) = "iPad6,12";
  *(v5 + 1328) = 8;
  *(v5 + 1336) = 2;
  *(v5 + 1344) = "iPad7,1";
  *(v5 + 1352) = 7;
  *(v5 + 1360) = 2;
  *(v5 + 1368) = "iPad7,2";
  *(v5 + 1376) = 7;
  *(v5 + 1384) = 2;
  *(v5 + 1392) = "iPad7,3";
  *(v5 + 1400) = 7;
  *(v5 + 1408) = 2;
  *(v5 + 1416) = "iPad7,4";
  *(v5 + 1424) = 7;
  *(v5 + 1432) = 2;
  *(v5 + 1440) = "iPad7,5";
  *(v5 + 1448) = 7;
  *(v5 + 1456) = 2;
  *(v5 + 1464) = "iPad7,6";
  *(v5 + 1472) = 7;
  *(v5 + 1480) = 2;
  *(v5 + 1488) = "iPad7,11";
  *(v5 + 1496) = 8;
  *(v5 + 1504) = 2;
  *(v5 + 1512) = "iPad7,12";
  *(v5 + 1520) = 8;
  *(v5 + 1528) = 2;
  *(v5 + 1536) = "iPad8,1";
  *(v5 + 1544) = 7;
  *(v5 + 1552) = 2;
  *(v5 + 1560) = "iPad8,2";
  *(v5 + 1568) = 7;
  *(v5 + 1576) = 2;
  *(v5 + 1584) = "iPad8,3";
  *(v5 + 1592) = 7;
  *(v5 + 1600) = 2;
  *(v5 + 1608) = "iPad8,4";
  *(v5 + 1616) = 7;
  *(v5 + 1624) = 2;
  *(v5 + 1632) = "iPad8,5";
  *(v5 + 1640) = 7;
  *(v5 + 1648) = 2;
  *(v5 + 1656) = "iPad8,6";
  *(v5 + 1664) = 7;
  *(v5 + 1680) = "iPad8,7";
  *(v5 + 1704) = "iPad8,8";
  *(v5 + 1728) = "iPad8,9";
  *(v5 + 1752) = "iPad8,10";
  *(v5 + 1776) = "iPad8,11";
  *(v5 + 1800) = "iPad8,12";
  *(v5 + 1824) = "iPad11,1";
  *(v5 + 1848) = "iPad11,2";
  *(v5 + 1872) = "iPad11,3";
  *(v5 + 1896) = "iPad11,4";
  *(v5 + 1920) = "iPad11,6";
  *(v5 + 1944) = "iPad11,7";
  *(v5 + 1968) = "iPad12,1";
  *(v5 + 1992) = "iPad12,2";
  *(v5 + 2232) = "iPad13,11";
  *(v5 + 2328) = "iPad13,19";
  *(v5 + 2424) = "iPad14,4";
  *(v5 + 2520) = "iPad16,4";
  *(v5 + 2616) = "iPad14,9";
  *(v5 + 2712) = "iPad16,2";
  *(v5 + 2808) = "iPad15,6";
  *(v5 + 2904) = "iPhone1,2";
  *(v5 + 3000) = "iPhone3,3";
  *(v5 + 3096) = "iPhone5,3";
  *(v5 + 3192) = "iPhone7,1";
  *(v5 + 3288) = "iPhone8,4";
  *(v5 + 3528) = "iPhone10,6";
  *(v5 + 3624) = "iPhone11,8";
  *(v5 + 3720) = "iPhone12,8";
  *(v5 + 3816) = "iPhone13,4";
  *(v5 + 3912) = "iPhone14,5";
  *(v5 + 4008) = "iPhone15,2";
  *(v5 + 4104) = "iPhone16,1";
  *(v5 + 4200) = "iPhone17,1";
  *(v5 + 4296) = "iPhone18,1";
  *(v5 + 4392) = "iPod2,1";
  *(v5 + 4488) = "iPod7,1";
  *(v5 + 4584) = "Mac14,13";
  *(v5 + 4680) = "Mac14,15";
  *(v5 + 4920) = "MacBookAir7,2";
  *(v5 + 4896) = "MacBookAir7,1";
  *(v5 + 4888) = 2;
  *(v5 + 4904) = 13;
  *(v5 + 4912) = 2;
  *(v5 + 4872) = "MacBookAir6,2";
  *(v5 + 4856) = 13;
  *(v5 + 4864) = 2;
  *(v5 + 4880) = 13;
  *(v5 + 1672) = 2;
  *(v5 + 4848) = "MacBookAir6,1";
  *(v5 + 4832) = 13;
  *(v5 + 4840) = 2;
  *(v5 + 4800) = "MacBookAir5,1";
  *(v5 + 4808) = 13;
  *(v5 + 4816) = 2;
  *(v5 + 4824) = "MacBookAir5,2";
  *(v5 + 4744) = 2;
  *(v5 + 4776) = "MacBookAir3,1";
  *(v5 + 4784) = 13;
  *(v5 + 4792) = 2;
  *(v5 + 4752) = "MacBook10,1";
  *(v5 + 4760) = 11;
  *(v5 + 4768) = 2;
  *(v5 + 4728) = "MacBook9,1";
  *(v5 + 4712) = 10;
  *(v5 + 4720) = 2;
  *(v5 + 4736) = 10;
  *(v5 + 1688) = 7;
  *(v5 + 4704) = "MacBook8,1";
  *(v5 + 4688) = 8;
  *(v5 + 4696) = 2;
  *(v5 + 4656) = "Mac14,7";
  *(v5 + 4648) = 2;
  *(v5 + 4664) = 7;
  *(v5 + 4672) = 2;
  *(v5 + 4632) = "Mac14,2";
  *(v5 + 4616) = 8;
  *(v5 + 4624) = 2;
  *(v5 + 4640) = 7;
  *(v5 + 1696) = 2;
  *(v5 + 4608) = "Mac14,14";
  *(v5 + 4592) = 8;
  *(v5 + 4600) = 2;
  *(v5 + 4560) = "Mac13,2";
  *(v5 + 4552) = 2;
  *(v5 + 4568) = 7;
  *(v5 + 4576) = 2;
  *(v5 + 4536) = "Mac13,1";
  *(v5 + 4520) = 7;
  *(v5 + 4528) = 2;
  *(v5 + 4544) = 7;
  *(v5 + 1712) = 7;
  *(v5 + 4512) = "iPod9,1";
  *(v5 + 4496) = 7;
  *(v5 + 4504) = 2;
  *(v5 + 4464) = "iPod5,1";
  *(v5 + 4456) = 2;
  *(v5 + 4472) = 7;
  *(v5 + 4480) = 2;
  *(v5 + 4440) = "iPod4,1";
  *(v5 + 4424) = 7;
  *(v5 + 4432) = 2;
  *(v5 + 4448) = 7;
  *(v5 + 1720) = 2;
  *(v5 + 4416) = "iPod3,1";
  *(v5 + 4400) = 7;
  *(v5 + 4408) = 2;
  *(v5 + 4368) = "iPod1,1";
  *(v5 + 4360) = 2;
  *(v5 + 4376) = 7;
  *(v5 + 4384) = 2;
  *(v5 + 4344) = "iPhone18,4";
  *(v5 + 4328) = 10;
  *(v5 + 4336) = 2;
  *(v5 + 4352) = 10;
  *(v5 + 1736) = 7;
  *(v5 + 4320) = "iPhone18,2";
  *(v5 + 4304) = 10;
  *(v5 + 4312) = 2;
  *(v5 + 4272) = "iPhone18,3";
  *(v5 + 4264) = 2;
  *(v5 + 4280) = 10;
  *(v5 + 4288) = 2;
  *(v5 + 4248) = "iPhone17,5";
  *(v5 + 4232) = 10;
  *(v5 + 4240) = 2;
  *(v5 + 4256) = 10;
  *(v5 + 1744) = 2;
  *(v5 + 4224) = "iPhone17,2";
  *(v5 + 4208) = 10;
  *(v5 + 4216) = 2;
  *(v5 + 4176) = "iPhone17,4";
  *(v5 + 4168) = 2;
  *(v5 + 4184) = 10;
  *(v5 + 4192) = 2;
  *(v5 + 4152) = "iPhone17,3";
  *(v5 + 4136) = 10;
  *(v5 + 4144) = 2;
  *(v5 + 4160) = 10;
  *(v5 + 1760) = 8;
  *(v5 + 4128) = "iPhone16,2";
  *(v5 + 4112) = 10;
  *(v5 + 4120) = 2;
  *(v5 + 4080) = "iPhone15,5";
  *(v5 + 4072) = 2;
  *(v5 + 4088) = 10;
  *(v5 + 4096) = 2;
  *(v5 + 4056) = "iPhone15,4";
  *(v5 + 4040) = 10;
  *(v5 + 4048) = 2;
  *(v5 + 4064) = 10;
  *(v5 + 1768) = 2;
  *(v5 + 4032) = "iPhone15,3";
  *(v5 + 4016) = 10;
  *(v5 + 4024) = 2;
  *(v5 + 3984) = "iPhone14,8";
  *(v5 + 3976) = 2;
  *(v5 + 3992) = 10;
  *(v5 + 4000) = 2;
  *(v5 + 3960) = "iPhone14,7";
  *(v5 + 3944) = 10;
  *(v5 + 3952) = 2;
  *(v5 + 3968) = 10;
  *(v5 + 1784) = 8;
  *(v5 + 3936) = "iPhone14,6";
  *(v5 + 3920) = 10;
  *(v5 + 3928) = 2;
  *(v5 + 3888) = "iPhone14,4";
  *(v5 + 3880) = 2;
  *(v5 + 3896) = 10;
  *(v5 + 3904) = 2;
  *(v5 + 3864) = "iPhone14,3";
  *(v5 + 3848) = 10;
  *(v5 + 3856) = 2;
  *(v5 + 3872) = 10;
  *(v5 + 1792) = 2;
  *(v5 + 3840) = "iPhone14,2";
  *(v5 + 3824) = 10;
  *(v5 + 3832) = 2;
  *(v5 + 3792) = "iPhone13,3";
  *(v5 + 3784) = 2;
  *(v5 + 3800) = 10;
  *(v5 + 3808) = 2;
  *(v5 + 3768) = "iPhone13,2";
  *(v5 + 3752) = 10;
  *(v5 + 3760) = 2;
  *(v5 + 3776) = 10;
  *(v5 + 1808) = 8;
  *(v5 + 3744) = "iPhone13,1";
  *(v5 + 3728) = 10;
  *(v5 + 3736) = 2;
  *(v5 + 3696) = "iPhone12,5";
  *(v5 + 3688) = 2;
  *(v5 + 3704) = 10;
  *(v5 + 3712) = 2;
  *(v5 + 3672) = "iPhone12,3";
  *(v5 + 3656) = 10;
  *(v5 + 3664) = 2;
  *(v5 + 3680) = 10;
  *(v5 + 1816) = 2;
  *(v5 + 3648) = "iPhone12,1";
  *(v5 + 3632) = 10;
  *(v5 + 3640) = 2;
  *(v5 + 3600) = "iPhone11,6";
  *(v5 + 3592) = 2;
  *(v5 + 3608) = 10;
  *(v5 + 3616) = 2;
  *(v5 + 3576) = "iPhone11,4";
  *(v5 + 3560) = 10;
  *(v5 + 3568) = 2;
  *(v5 + 3584) = 10;
  *(v5 + 1832) = 8;
  *(v5 + 3552) = "iPhone11,2";
  *(v5 + 3536) = 10;
  *(v5 + 3544) = 2;
  *(v5 + 3504) = "iPhone10,5";
  *(v5 + 3496) = 2;
  *(v5 + 3512) = 10;
  *(v5 + 3520) = 2;
  *(v5 + 3480) = "iPhone10,4";
  *(v5 + 3464) = 10;
  *(v5 + 3472) = 2;
  *(v5 + 3488) = 10;
  *(v5 + 1840) = 2;
  *(v5 + 3456) = "iPhone10,3";
  *(v5 + 3440) = 10;
  *(v5 + 3448) = 2;
  *(v5 + 3384) = "iPhone9,4";
  *(v5 + 3416) = 10;
  *(v5 + 3424) = 2;
  *(v5 + 3432) = "iPhone10,2";
  *(v5 + 3408) = "iPhone10,1";
  *(v5 + 3392) = 9;
  *(v5 + 3400) = 2;
  *(v5 + 3360) = "iPhone9,3";
  *(v5 + 3352) = 2;
  *(v5 + 3368) = 9;
  *(v5 + 3376) = 2;
  *(v5 + 3336) = "iPhone9,2";
  *(v5 + 3320) = 9;
  *(v5 + 3328) = 2;
  *(v5 + 3344) = 9;
  *(v5 + 1856) = 8;
  *(v5 + 3312) = "iPhone9,1";
  *(v5 + 3296) = 9;
  *(v5 + 3304) = 2;
  *(v5 + 3264) = "iPhone8,2";
  *(v5 + 3256) = 2;
  *(v5 + 3272) = 9;
  *(v5 + 3280) = 2;
  *(v5 + 3240) = "iPhone8,1";
  *(v5 + 3224) = 9;
  *(v5 + 3232) = 2;
  *(v5 + 3248) = 9;
  *(v5 + 1864) = 2;
  *(v5 + 3216) = "iPhone7,2";
  *(v5 + 3200) = 9;
  *(v5 + 3208) = 2;
  *(v5 + 3168) = "iPhone6,2";
  *(v5 + 3160) = 2;
  *(v5 + 3176) = 9;
  *(v5 + 3184) = 2;
  *(v5 + 3144) = "iPhone6,1";
  *(v5 + 3128) = 9;
  *(v5 + 3136) = 2;
  *(v5 + 3152) = 9;
  *(v5 + 1880) = 8;
  *(v5 + 3120) = "iPhone5,4";
  *(v5 + 3104) = 9;
  *(v5 + 3112) = 2;
  *(v5 + 3072) = "iPhone5,2";
  *(v5 + 3064) = 2;
  *(v5 + 3080) = 9;
  *(v5 + 3088) = 2;
  *(v5 + 3048) = "iPhone5,1";
  *(v5 + 3032) = 9;
  *(v5 + 3040) = 2;
  *(v5 + 3056) = 9;
  *(v5 + 1888) = 2;
  *(v5 + 3024) = "iPhone4,1";
  *(v5 + 3008) = 9;
  *(v5 + 3016) = 2;
  *(v5 + 2976) = "iPhone3,2";
  *(v5 + 2968) = 2;
  *(v5 + 2984) = 9;
  *(v5 + 2992) = 2;
  *(v5 + 2952) = "iPhone3,1";
  *(v5 + 2936) = 9;
  *(v5 + 2944) = 2;
  *(v5 + 2960) = 9;
  *(v5 + 1904) = 8;
  *(v5 + 2928) = "iPhone2,1";
  *(v5 + 2912) = 9;
  *(v5 + 2920) = 2;
  *(v5 + 2880) = "iPhone1,1";
  *(v5 + 2872) = 2;
  *(v5 + 2888) = 9;
  *(v5 + 2896) = 2;
  *(v5 + 2856) = "iPad15,8";
  *(v5 + 2840) = 8;
  *(v5 + 2848) = 2;
  *(v5 + 2864) = 8;
  *(v5 + 1912) = 2;
  *(v5 + 2832) = "iPad15,7";
  *(v5 + 2816) = 8;
  *(v5 + 2824) = 2;
  *(v5 + 2784) = "iPad15,5";
  *(v5 + 2776) = 2;
  *(v5 + 2792) = 8;
  *(v5 + 2800) = 2;
  *(v5 + 2760) = "iPad15,4";
  *(v5 + 2744) = 8;
  *(v5 + 2752) = 2;
  *(v5 + 2768) = 8;
  *(v5 + 1928) = 8;
  *(v5 + 2736) = "iPad15,3";
  *(v5 + 2720) = 8;
  *(v5 + 2728) = 2;
  *(v5 + 2688) = "iPad16,1";
  *(v5 + 2680) = 2;
  *(v5 + 2696) = 8;
  *(v5 + 2704) = 2;
  *(v5 + 2664) = "iPad14,11";
  *(v5 + 2648) = 9;
  *(v5 + 2656) = 2;
  *(v5 + 2672) = 9;
  *(v5 + 1936) = 2;
  *(v5 + 2640) = "iPad14,10";
  *(v5 + 2624) = 8;
  *(v5 + 2632) = 2;
  *(v5 + 2592) = "iPad14,8";
  *(v5 + 2584) = 2;
  *(v5 + 2600) = 8;
  *(v5 + 2608) = 2;
  *(v5 + 2568) = "iPad16,6";
  *(v5 + 2552) = 8;
  *(v5 + 2560) = 2;
  *(v5 + 2576) = 8;
  *(v5 + 1952) = 8;
  *(v5 + 2544) = "iPad16,5";
  *(v5 + 2528) = 8;
  *(v5 + 2536) = 2;
  *(v5 + 2496) = "iPad16,3";
  *(v5 + 2488) = 2;
  *(v5 + 2504) = 8;
  *(v5 + 2512) = 2;
  *(v5 + 2472) = "iPad14,6";
  *(v5 + 2456) = 8;
  *(v5 + 2464) = 2;
  *(v5 + 2480) = 8;
  *(v5 + 1960) = 2;
  *(v5 + 2448) = "iPad14,5";
  *(v5 + 2432) = 8;
  *(v5 + 2440) = 2;
  *(v5 + 2400) = "iPad14,3";
  *(v5 + 2392) = 2;
  *(v5 + 2408) = 8;
  *(v5 + 2416) = 2;
  *(v5 + 2376) = "iPad14,2";
  *(v5 + 2360) = 8;
  *(v5 + 2368) = 2;
  *(v5 + 2384) = 8;
  *(v5 + 1976) = 8;
  *(v5 + 2352) = "iPad14,1";
  *(v5 + 2336) = 9;
  *(v5 + 2344) = 2;
  *(v5 + 2304) = "iPad13,18";
  *(v5 + 2296) = 2;
  *(v5 + 2312) = 9;
  *(v5 + 2320) = 2;
  *(v5 + 2280) = "iPad13,17";
  *(v5 + 2264) = 9;
  *(v5 + 2272) = 2;
  *(v5 + 2288) = 9;
  *(v5 + 1984) = 2;
  *(v5 + 2256) = "iPad13,16";
  *(v5 + 2240) = 9;
  *(v5 + 2248) = 2;
  *(v5 + 2208) = "iPad13,10";
  *(v5 + 2200) = 2;
  *(v5 + 2216) = 9;
  *(v5 + 2224) = 2;
  *(v5 + 2184) = "iPad13,9";
  *(v5 + 2168) = 8;
  *(v5 + 2176) = 2;
  *(v5 + 2192) = 8;
  *(v5 + 2000) = 8;
  *(v5 + 2160) = "iPad13,8";
  *(v5 + 2144) = 8;
  *(v5 + 2152) = 2;
  *(v5 + 2112) = "iPad13,6";
  *(v5 + 2120) = 8;
  *(v5 + 2128) = 2;
  *(v5 + 2136) = "iPad13,7";
  *(v5 + 2080) = 2;
  *(v5 + 2088) = "iPad13,5";
  *(v5 + 2096) = 8;
  *(v5 + 2104) = 2;
  *(v5 + 2048) = 8;
  *(v5 + 2056) = 2;
  *(v5 + 2064) = "iPad13,4";
  *(v5 + 2072) = 8;
  *(v5 + 2008) = 2;
  *(v5 + 2024) = 8;
  *(v5 + 2032) = 2;
  *(v5 + 2040) = "iPad13,2";
  *(v5 + 2016) = "iPad13,1";
  *(v5 + 4928) = 13;
  *(v5 + 4936) = 2;
  *(v5 + 4944) = "MacBookAir8,1";
  *(v5 + 4952) = 13;
  *(v5 + 4960) = 2;
  *(v5 + 4968) = "MacBookAir8,2";
  *(v5 + 4976) = 13;
  *(v5 + 4984) = 2;
  *(v5 + 4992) = "MacBookAir9,1";
  *(v5 + 5000) = 13;
  *(v5 + 5008) = 2;
  *(v5 + 5016) = "MacBookAir10,1";
  *(v5 + 5024) = 14;
  *(v5 + 5032) = 2;
  *(v5 + 5040) = "MacBookPro9,1";
  *(v5 + 5048) = 13;
  *(v5 + 5056) = 2;
  *(v5 + 5064) = "MacBookPro9,2";
  *(v5 + 5072) = 13;
  *(v5 + 5080) = 2;
  *(v5 + 5088) = "MacBookPro10,1";
  *(v5 + 5096) = 14;
  *(v5 + 5104) = 2;
  *(v5 + 5112) = "MacBookPro10,2";
  *(v5 + 5120) = 14;
  *(v5 + 5128) = 2;
  *(v5 + 5136) = "MacBookPro11,1";
  *(v5 + 5144) = 14;
  *(v5 + 5152) = 2;
  *(v5 + 5160) = "MacBookPro11,2";
  *(v5 + 5168) = 14;
  *(v5 + 5176) = 2;
  *(v5 + 5184) = "MacBookPro11,3";
  *(v5 + 5192) = 14;
  *(v5 + 5200) = 2;
  *(v5 + 5208) = "MacBookPro11,4";
  *(v5 + 5216) = 14;
  *(v5 + 5224) = 2;
  *(v5 + 5232) = "MacBookPro11,5";
  *(v5 + 5240) = 14;
  *(v5 + 5248) = 2;
  *(v5 + 5256) = "MacBookPro12,1";
  *(v5 + 5264) = 14;
  *(v5 + 5272) = 2;
  *(v5 + 5280) = "MacBookPro13,1";
  *(v5 + 5288) = 14;
  *(v5 + 5296) = 2;
  *(v5 + 5304) = "MacBookPro13,2";
  *(v5 + 5312) = 14;
  *(v5 + 5320) = 2;
  *(v5 + 5328) = "MacBookPro13,3";
  *(v5 + 5336) = 14;
  *(v5 + 5344) = 2;
  *(v5 + 5352) = "MacBookPro14,1";
  *(v5 + 5360) = 14;
  *(v5 + 5368) = 2;
  *(v5 + 5376) = "MacBookPro14,2";
  *(v5 + 5384) = 14;
  *(v5 + 5392) = 2;
  *(v5 + 5400) = "MacBookPro14,3";
  *(v5 + 5408) = 14;
  *(v5 + 5416) = 2;
  *(v5 + 5424) = "MacBookPro15,1";
  *(v5 + 5432) = 14;
  *(v5 + 5440) = 2;
  *(v5 + 5448) = "MacBookPro15,2";
  *(v5 + 5456) = 14;
  *(v5 + 5464) = 2;
  *(v5 + 5472) = "MacBookPro15,3";
  *(v5 + 5480) = 14;
  *(v5 + 5488) = 2;
  *(v5 + 5496) = "MacBookPro15,4";
  *(v5 + 5504) = 14;
  *(v5 + 5512) = 2;
  *(v5 + 5520) = "MacBookPro16,1";
  *(v5 + 5528) = 14;
  *(v5 + 5536) = 2;
  *(v5 + 5544) = "MacBookPro16,2";
  *(v5 + 5552) = 14;
  *(v5 + 5560) = 2;
  *(v5 + 5568) = "MacBookPro16,3";
  *(v5 + 5576) = 14;
  *(v5 + 5584) = 2;
  *(v5 + 5592) = "MacBookPro16,4";
  *(v5 + 5600) = 14;
  *(v5 + 5608) = 2;
  *(v5 + 5616) = "MacBookPro17,1";
  *(v5 + 5624) = 14;
  *(v5 + 5632) = 2;
  *(v5 + 5640) = "MacBookPro18,1";
  *(v5 + 5648) = 14;
  *(v5 + 5656) = 2;
  *(v5 + 5664) = "MacBookPro18,2";
  *(v5 + 5672) = 14;
  *(v5 + 5680) = 2;
  *(v5 + 5688) = "MacBookPro18,3";
  *(v5 + 5696) = 14;
  *(v5 + 5704) = 2;
  *(v5 + 5712) = "MacBookPro18,4";
  *(v5 + 5720) = 14;
  *(v5 + 5728) = 2;
  *(v5 + 5736) = "Macmini6,1";
  *(v5 + 5744) = 10;
  *(v5 + 5752) = 2;
  *(v5 + 5760) = "Macmini6,2";
  *(v5 + 5768) = 10;
  *(v5 + 5776) = 2;
  *(v5 + 5784) = "Macmini7,1";
  *(v5 + 5792) = 10;
  *(v5 + 5800) = 2;
  *(v5 + 5808) = "Macmini8,1";
  *(v5 + 5816) = 10;
  *(v5 + 5824) = 2;
  *(v5 + 5832) = "Macmini9,1";
  *(v5 + 5840) = 10;
  *(v5 + 5848) = 2;
  *(v5 + 5856) = "MacPro5,1";
  *(v5 + 5864) = 9;
  *(v5 + 5872) = 2;
  *(v5 + 5880) = "MacPro6,1";
  *(v5 + 5888) = 9;
  *(v5 + 5896) = 2;
  *(v5 + 5904) = "MacPro7,1";
  *(v5 + 5912) = 9;
  *(v5 + 5920) = 2;
  *(v5 + 5928) = "Mac14,8";
  *(v5 + 5936) = 7;
  *(v5 + 5944) = 2;
  *(v5 + 5952) = "VirtualMac2,1";
  *(v5 + 5960) = 13;
  *(v5 + 5968) = 2;
  *(v5 + 5976) = "Mac14,3";
  *(v5 + 5984) = 7;
  *(v5 + 5992) = 2;
  *(v5 + 6000) = "Mac14,12";
  *(v5 + 6008) = 8;
  *(v5 + 6016) = 2;
  *(v5 + 6024) = "Mac14,5";
  *(v5 + 6032) = 7;
  *(v5 + 6040) = 2;
  *(v5 + 6048) = "Mac14,6";
  *(v5 + 6056) = 7;
  *(v5 + 6064) = 2;
  *(v5 + 6072) = "Mac14,9";
  *(v5 + 6080) = 7;
  *(v5 + 6088) = 2;
  *(v5 + 6096) = "Mac14,10";
  *(v5 + 6104) = 8;
  *(v5 + 6112) = 2;
  *(v5 + 6120) = "Mac15,3";
  *(v5 + 6128) = 7;
  *(v5 + 6136) = 2;
  *(v5 + 6144) = "Mac15,8";
  *(v5 + 6152) = 7;
  *(v5 + 6160) = 2;
  *(v5 + 6168) = "Mac15,6";
  *(v5 + 6176) = 7;
  *(v5 + 6184) = 2;
  *(v5 + 6192) = "Mac15,10";
  *(v5 + 6200) = 8;
  *(v5 + 6208) = 2;
  *(v5 + 6216) = "Mac15,9";
  *(v5 + 6224) = 7;
  *(v5 + 6232) = 2;
  *(v5 + 6240) = "Mac15,7";
  *(v5 + 6248) = 7;
  *(v5 + 6256) = 2;
  *(v5 + 6264) = "Mac15,11";
  *(v5 + 6272) = 8;
  *(v5 + 6280) = 2;
  *(v5 + 6288) = "Mac15,12";
  *(v5 + 6296) = 8;
  *(v5 + 6304) = 2;
  *(v5 + 6312) = "Mac15,13";
  *(v5 + 6320) = 8;
  *(v5 + 6328) = 2;
  *(v5 + 6336) = "Mac16,1";
  *(v5 + 6344) = 7;
  *(v5 + 6352) = 2;
  *(v5 + 6360) = "Mac16,2";
  *(v5 + 6368) = 7;
  *(v5 + 6376) = 2;
  *(v5 + 6384) = "Mac16,3";
  *(v5 + 6392) = 7;
  *(v5 + 6400) = 2;
  *(v5 + 6408) = "Mac16,10";
  *(v5 + 6416) = 8;
  *(v5 + 6424) = 2;
  *(v5 + 6432) = "Mac16,11";
  *(v5 + 6440) = 8;
  *(v5 + 6448) = 2;
  *(v5 + 6456) = "Mac16,9";
  *(v5 + 6464) = 7;
  *(v5 + 6472) = 2;
  *(v5 + 6480) = "Mac15,14";
  *(v5 + 6488) = 8;
  *(v5 + 6496) = 2;
  *(v5 + 6504) = "Mac16,12";
  *(v5 + 6512) = 8;
  *(v5 + 6520) = 2;
  *(v5 + 6528) = "Mac16,13";
  *(v5 + 6536) = 8;
  *(v5 + 6544) = 2;
  *(v5 + 6552) = "Mac16,6";
  *(v5 + 6560) = 7;
  *(v5 + 6568) = 2;
  *(v5 + 6576) = "Mac16,8";
  *(v5 + 6584) = 7;
  *(v5 + 6592) = 2;
  *(v5 + 6600) = "Mac16,5";
  *(v5 + 6608) = 7;
  *(v5 + 6616) = 2;
  *(v5 + 6624) = "Mac16,7";
  *(v5 + 6632) = 7;
  *(v5 + 6640) = 2;
  *(v5 + 6648) = "Mac17,2";
  *(v5 + 6656) = 7;
  *(v5 + 6664) = 2;
  *(v5 + 6672) = "RealityDevice14,1";
  *(v5 + 6680) = 17;
  *(v5 + 6688) = 2;
  *(v5 + 6696) = "RealityDevice17,1";
  *(v5 + 6704) = 17;
  *(v5 + 6712) = 2;
  *(v5 + 6720) = "iPhone";
  *(v5 + 6728) = 6;
  *(v5 + 6736) = 2;
  *(v5 + 6744) = "iPad";
  *(v5 + 6752) = 4;
  *(v5 + 6760) = 2;
  *(v5 + 6768) = "iPad mini";
  *(v5 + 6776) = 9;
  *(v5 + 6784) = 2;
  *(v5 + 6792) = "iPod";
  *(v5 + 6800) = 4;
  *(v5 + 6808) = 2;
  *(v5 + 6816) = "MacBook Pro";
  *(v5 + 6824) = 11;
  *(v5 + 6832) = 2;
  *(v5 + 6840) = "MacBook Air";
  *(v5 + 6848) = 11;
  *(v5 + 6856) = 2;
  *(v5 + 6864) = "Mac Pro";
  *(v5 + 6872) = 7;
  *(v5 + 6880) = 2;
  *(v5 + 6888) = "iMac Pro";
  *(v5 + 6896) = 8;
  *(v5 + 6904) = 2;
  *(v5 + 6912) = "iMac";
  *(v5 + 6920) = 4;
  *(v5 + 6928) = 2;
  *(v5 + 6936) = "Mac mini";
  *(v5 + 6944) = 8;
  *(v5 + 6952) = 2;
  *(v5 + 6960) = "Mac Studio";
  *(v5 + 6968) = 10;
  *(v5 + 6976) = 2;
  nullsub_1();
  v6 = sub_29EC01138();

  v8 = v6 - 128;
  if (v6 < 0x80)
  {
    goto LABEL_6;
  }

  if (v8 < 0x40)
  {
    LOWORD(v6) = v8 | 0x80;
LABEL_6:
    v9 = v6;
    goto LABEL_7;
  }

  if (v6 - 192 < 0x40)
  {
    LOWORD(v6) = (v6 - 192) | 0xC0;
    goto LABEL_6;
  }

  v10 = v6 - 256;
  v9 = 273;
  LOWORD(v6) = 256;
  switch(v10)
  {
    case 0uLL:
      goto LABEL_6;
    case 1uLL:
      LOWORD(v6) = 257;
      goto LABEL_6;
    case 2uLL:
      LOWORD(v6) = 258;
      goto LABEL_6;
    case 3uLL:
      LOWORD(v6) = 259;
      goto LABEL_6;
    case 4uLL:
      LOWORD(v6) = 260;
      goto LABEL_6;
    case 5uLL:
      LOWORD(v6) = 261;
      goto LABEL_6;
    case 6uLL:
      LOWORD(v6) = 262;
      goto LABEL_6;
    case 7uLL:
      LOWORD(v6) = 263;
      goto LABEL_6;
    case 8uLL:
      LOWORD(v6) = 264;
      goto LABEL_6;
    case 9uLL:
      LOWORD(v6) = 265;
      goto LABEL_6;
    case 0xAuLL:
      LOWORD(v6) = 266;
      goto LABEL_6;
    case 0xBuLL:
      LOWORD(v6) = 267;
      goto LABEL_6;
    case 0xCuLL:
      LOWORD(v6) = 268;
      goto LABEL_6;
    case 0xDuLL:
      LOWORD(v6) = 269;
      goto LABEL_6;
    case 0xEuLL:
      LOWORD(v6) = 270;
      goto LABEL_6;
    case 0xFuLL:
      LOWORD(v6) = 271;
      goto LABEL_6;
    case 0x10uLL:
      LOWORD(v6) = 272;
      goto LABEL_6;
    case 0x11uLL:
      break;
    case 0x12uLL:
      v9 = 274;
      break;
    case 0x13uLL:
      v9 = 275;
      break;
    case 0x14uLL:
      v9 = 276;
      break;
    case 0x15uLL:
      v9 = 277;
      break;
    case 0x16uLL:
      v9 = 278;
      break;
    case 0x17uLL:
      v9 = 279;
      break;
    case 0x18uLL:
      v9 = 280;
      break;
    case 0x19uLL:
      v9 = 281;
      break;
    case 0x1AuLL:
      v9 = 282;
      break;
    case 0x1BuLL:
      v9 = 283;
      break;
    case 0x1CuLL:
      v9 = 284;
      break;
    case 0x1DuLL:
      v9 = 285;
      break;
    case 0x1EuLL:
      v9 = 286;
      break;
    case 0x1FuLL:
      v9 = 287;
      break;
    case 0x20uLL:
      v9 = 288;
      break;
    case 0x21uLL:
      v9 = 289;
      break;
    case 0x22uLL:
      v9 = 290;
      break;
    default:
      v9 = 291;
      break;
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t AppleHardware.Model.rawValue.getter()
{
  result = 0x312C333163614D69;
  switch(*v0)
  {
    case 1:
      v2 = 1667321193;
      return v2 | 0x322C333100000000;
    case 2:
      return 0x332C333163614D69;
    case 3:
      v20 = 1667321193;
      return v20 | 0x312C343100000000;
    case 4:
      return 0x322C343163614D69;
    case 5:
      return 0x332C343163614D69;
    case 6:
      return 0x342C343163614D69;
    case 7:
      return 0x312C353163614D69;
    case 8:
      v21 = 1667321193;
      return v21 | 0x312C363100000000;
    case 9:
      return 0x322C363163614D69;
    case 0xA:
      return 0x312C373163614D69;
    case 0xB:
      return 0x312C383163614D69;
    case 0xC:
      return 0x322C383163614D69;
    case 0xD:
      return 0x332C383163614D69;
    case 0xE:
      return 0x312C393163614D69;
    case 0xF:
      return 0x322C393163614D69;
    case 0x10:
      return 0x312C303263614D69;
    case 0x11:
      return 0x322C303263614D69;
    case 0x12:
      return 0x312C313263614D69;
    case 0x13:
      v22 = 828596557;
      return v22 | 0x342C3500000000;
    case 0x14:
      return 0x352C353163614DLL;
    case 0x15:
      return 0x322C313263614D69;
    case 0x16:
      return 0x316F725063614D69;
    case 0x17:
      return 0x312C3164615069;
    case 0x18:
      return 0x312C3264615069;
    case 0x19:
      return 0x322C3264615069;
    case 0x1A:
      return 0x332C3264615069;
    case 0x1B:
      return 0x342C3264615069;
    case 0x1C:
      return 0x352C3264615069;
    case 0x1D:
      return 0x362C3264615069;
    case 0x1E:
      return 0x372C3264615069;
    case 0x1F:
      v19 = 1684099177;
      return v19 | 0x312C3300000000;
    case 0x20:
      return 0x322C3364615069;
    case 0x21:
      return 0x332C3364615069;
    case 0x22:
      return 0x342C3364615069;
    case 0x23:
      return 0x352C3364615069;
    case 0x24:
      return 0x362C3364615069;
    case 0x25:
      return 0x312C3464615069;
    case 0x26:
      return 0x322C3464615069;
    case 0x27:
      v3 = 1684099177;
      return v3 | 0x332C3400000000;
    case 0x28:
      return 0x342C3464615069;
    case 0x29:
      return 0x352C3464615069;
    case 0x2A:
      v17 = 1684099177;
      return v17 | 0x362C3400000000;
    case 0x2B:
      return 0x372C3464615069;
    case 0x2C:
      v6 = 1684099177;
      return v6 | 0x382C3400000000;
    case 0x2D:
      return 0x392C3464615069;
    case 0x2E:
      return 0x312C3564615069;
    case 0x2F:
      return 0x322C3564615069;
    case 0x30:
      return 0x332C3564615069;
    case 0x31:
      v22 = 1684099177;
      return v22 | 0x342C3500000000;
    case 0x32:
      return 0x332C3664615069;
    case 0x33:
      return 0x342C3664615069;
    case 0x34:
      return 0x372C3664615069;
    case 0x35:
      return 0x382C3664615069;
    case 0x36:
      v16 = 1684099177;
      goto LABEL_283;
    case 0x37:
      return 0x32312C3664615069;
    case 0x38:
      return 0x312C3764615069;
    case 0x39:
      return 0x322C3764615069;
    case 0x3A:
      return 0x332C3764615069;
    case 0x3B:
      return 0x342C3764615069;
    case 0x3C:
      return 0x352C3764615069;
    case 0x3D:
      return 0x362C3764615069;
    case 0x3E:
      return 0x31312C3764615069;
    case 0x3F:
      return 0x32312C3764615069;
    case 0x40:
      return 0x312C3864615069;
    case 0x41:
      return 0x322C3864615069;
    case 0x42:
      return 0x332C3864615069;
    case 0x43:
      return 0x342C3864615069;
    case 0x44:
      return 0x352C3864615069;
    case 0x45:
      return 0x362C3864615069;
    case 0x46:
      return 0x372C3864615069;
    case 0x47:
      return 0x382C3864615069;
    case 0x48:
      return 0x392C3864615069;
    case 0x49:
      return 0x30312C3864615069;
    case 0x4A:
      return 0x31312C3864615069;
    case 0x4B:
      return 0x32312C3864615069;
    case 0x4C:
      return 0x312C313164615069;
    case 0x4D:
      return 0x322C313164615069;
    case 0x4E:
      return 0x332C313164615069;
    case 0x4F:
      return 0x342C313164615069;
    case 0x50:
      return 0x362C313164615069;
    case 0x51:
      return 0x372C313164615069;
    case 0x52:
      return 0x312C323164615069;
    case 0x53:
      return 0x322C323164615069;
    case 0x54:
      return 0x312C333164615069;
    case 0x55:
      v2 = 1684099177;
      return v2 | 0x322C333100000000;
    case 0x56:
      return 0x342C333164615069;
    case 0x57:
      return 0x352C333164615069;
    case 0x58:
      return 0x362C333164615069;
    case 0x59:
      return 0x372C333164615069;
    case 0x5A:
      return 0x382C333164615069;
    case 0x5B:
      return 0x392C333164615069;
    case 0x5C:
      v4 = 0x333164615069;
      return v4 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5D:
      v7 = 0x333164615069;
      return v7 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5E:
      return 0x312C333164615069;
    case 0x5F:
      return 0x312C333164615069;
    case 0x60:
      return 0x312C333164615069;
    case 0x61:
      return 0x312C333164615069;
    case 0x62:
      v20 = 1684099177;
      return v20 | 0x312C343100000000;
    case 0x63:
      return 0x322C343164615069;
    case 0x64:
      return 0x332C343164615069;
    case 0x65:
      return 0x342C343164615069;
    case 0x66:
      return 0x352C343164615069;
    case 0x67:
      return 0x362C343164615069;
    case 0x68:
      return 0x332C363164615069;
    case 0x69:
      return 0x342C363164615069;
    case 0x6A:
      return 0x352C363164615069;
    case 0x6B:
      return 0x362C363164615069;
    case 0x6C:
      return 0x382C343164615069;
    case 0x6D:
      return 0x392C343164615069;
    case 0x6E:
      v4 = 0x343164615069;
      return v4 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x6F:
      v7 = 0x343164615069;
      return v7 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x70:
      v21 = 1684099177;
      return v21 | 0x312C363100000000;
    case 0x71:
      return 0x322C363164615069;
    case 0x72:
      return 0x332C353164615069;
    case 0x73:
      return 0x342C353164615069;
    case 0x74:
      return 0x352C353164615069;
    case 0x75:
      return 0x362C353164615069;
    case 0x76:
      return 0x372C353164615069;
    case 0x77:
      return 0x382C353164615069;
    case 0x78:
      return 0x2C31656E6F685069;
    case 0x79:
      return 0x2C31656E6F685069;
    case 0x7A:
      return 0x2C32656E6F685069;
    case 0x7B:
      return 0x2C33656E6F685069;
    case 0x7C:
      return 0x2C33656E6F685069;
    case 0x7D:
      return 0x2C33656E6F685069;
    case 0x7E:
      return 0x2C34656E6F685069;
    case 0x7F:
      v18 = 0x656E6F685069;
      return v18 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0x80:
      return 0x2C35656E6F685069;
    case 0x81:
      return 0x2C35656E6F685069;
    case 0x82:
      return 0x2C35656E6F685069;
    case 0x83:
      v9 = 0x656E6F685069;
      return v9 & 0xFFFFFFFFFFFFLL | 0x2C36000000000000;
    case 0x84:
      return 0x2C36656E6F685069;
    case 0x85:
      v5 = 0x656E6F685069;
      return v5 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0x86:
      return 0x2C37656E6F685069;
    case 0x87:
      return 0x2C38656E6F685069;
    case 0x88:
      return 0x2C38656E6F685069;
    case 0x89:
      return 0x2C38656E6F685069;
    case 0x8A:
      return 0x2C39656E6F685069;
    case 0x8B:
      return 0x2C39656E6F685069;
    case 0x8C:
      return 0x2C39656E6F685069;
    case 0x8D:
      return 0x2C39656E6F685069;
    case 0x8E:
      return 0x3031656E6F685069;
    case 0x8F:
      return 0x3031656E6F685069;
    case 0x90:
      return 0x3031656E6F685069;
    case 0x91:
      return 0x3031656E6F685069;
    case 0x92:
      return 0x3031656E6F685069;
    case 0x93:
      return 0x3031656E6F685069;
    case 0x94:
      return 0x3131656E6F685069;
    case 0x95:
      return 0x3131656E6F685069;
    case 0x96:
      return 0x3131656E6F685069;
    case 0x97:
      return 0x3131656E6F685069;
    case 0x98:
      return 0x3231656E6F685069;
    case 0x99:
      return 0x3231656E6F685069;
    case 0x9A:
      return 0x3231656E6F685069;
    case 0x9B:
      return 0x3231656E6F685069;
    case 0x9C:
      return 0x3331656E6F685069;
    case 0x9D:
      return 0x3331656E6F685069;
    case 0x9E:
      return 0x3331656E6F685069;
    case 0x9F:
      return 0x3331656E6F685069;
    case 0xA0:
      return 0x3431656E6F685069;
    case 0xA1:
      return 0x3431656E6F685069;
    case 0xA2:
      return 0x3431656E6F685069;
    case 0xA3:
      return 0x3431656E6F685069;
    case 0xA4:
      return 0x3431656E6F685069;
    case 0xA5:
      return 0x3431656E6F685069;
    case 0xA6:
      return 0x3431656E6F685069;
    case 0xA7:
      return 0x3531656E6F685069;
    case 0xA8:
      return 0x3531656E6F685069;
    case 0xA9:
      return 0x3531656E6F685069;
    case 0xAA:
      return 0x3531656E6F685069;
    case 0xAB:
      return 0x3631656E6F685069;
    case 0xAC:
      return 0x3631656E6F685069;
    case 0xAD:
      return 0x3731656E6F685069;
    case 0xAE:
      return 0x3731656E6F685069;
    case 0xAF:
      return 0x3731656E6F685069;
    case 0xB0:
      return 0x3731656E6F685069;
    case 0xB1:
      return 0x3731656E6F685069;
    case 0xB2:
      return 0x3831656E6F685069;
    case 0xB3:
      return 0x3831656E6F685069;
    case 0xB4:
      return 0x3831656E6F685069;
    case 0xB5:
      return 0x3831656E6F685069;
    case 0xB6:
      v8 = 0x2C3164615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB7:
      v8 = 0x2C3264615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB8:
      v8 = 0x2C3364615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB9:
      v8 = 0x2C3464615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xBA:
      v8 = 0x2C3564615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xBB:
      v8 = 0x2C3764615069;
      return v8 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xBC:
      return 0x312C39646F5069;
    case 0xBD:
      v19 = 828596557;
      return v19 | 0x312C3300000000;
    case 0xBE:
      return 0x322C333163614DLL;
    case 0xBF:
      return 0x33312C343163614DLL;
    case 0xC0:
      return 0x34312C343163614DLL;
    case 0xC1:
      return 0x322C343163614DLL;
    case 0xC2:
      return 0x372C343163614DLL;
    case 0xC3:
      return 0x35312C343163614DLL;
    case 0xC4:
      return 0x386B6F6F4263614DLL;
    case 0xC5:
      return 0x396B6F6F4263614DLL;
    case 0xC6:
      return 0x316B6F6F4263614DLL;
    case 0xC7:
      return 0x416B6F6F4263614DLL;
    case 0xC8:
      return 0x416B6F6F4263614DLL;
    case 0xC9:
      return 0x416B6F6F4263614DLL;
    case 0xCA:
      return 0x416B6F6F4263614DLL;
    case 0xCB:
      return 0x416B6F6F4263614DLL;
    case 0xCC:
      return 0x416B6F6F4263614DLL;
    case 0xCD:
      return 0x416B6F6F4263614DLL;
    case 0xCE:
      return 0x416B6F6F4263614DLL;
    case 0xCF:
      return 0x416B6F6F4263614DLL;
    case 0xD0:
      return 0x416B6F6F4263614DLL;
    case 0xD1:
      return 0x416B6F6F4263614DLL;
    case 0xD2:
      return 0x506B6F6F4263614DLL;
    case 0xD3:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
    case 0xEB:
    case 0xEC:
    case 0xED:
    case 0xEE:
      return 0x506B6F6F4263614DLL;
    case 0xD4:
      return 0x506B6F6F4263614DLL;
    case 0xEF:
      return 0x36696E696D63614DLL;
    case 0xF0:
      return 0x36696E696D63614DLL;
    case 0xF1:
      return 0x37696E696D63614DLL;
    case 0xF2:
      return 0x38696E696D63614DLL;
    case 0xF3:
      return 0x39696E696D63614DLL;
    case 0xF4:
      v18 = 0x6F725063614DLL;
      return v18 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0xF5:
      v9 = 0x6F725063614DLL;
      return v9 & 0xFFFFFFFFFFFFLL | 0x2C36000000000000;
    case 0xF6:
      v5 = 0x6F725063614DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0xF7:
      v6 = 828596557;
      return v6 | 0x382C3400000000;
    case 0xF8:
      return 0x4D6C617574726956;
    case 0xF9:
      v3 = 828596557;
      return v3 | 0x332C3400000000;
    case 0xFA:
      return 0x32312C343163614DLL;
    case 0xFB:
      return 0x352C343163614DLL;
    case 0xFC:
      v17 = 828596557;
      return v17 | 0x362C3400000000;
    case 0xFD:
      return 0x392C343163614DLL;
    case 0xFE:
      return 0x30312C343163614DLL;
    case 0xFF:
      v10 = 0x2C353163614DLL;
      goto LABEL_139;
    case 0x100:
      v11 = 0x2C353163614DLL;
      goto LABEL_110;
    case 0x101:
      v13 = 0x2C353163614DLL;
      goto LABEL_155;
    case 0x102:
      return 0x30312C353163614DLL;
    case 0x103:
      v15 = 0x2C353163614DLL;
      goto LABEL_161;
    case 0x104:
      v12 = 0x2C353163614DLL;
      goto LABEL_169;
    case 0x105:
      return 0x31312C353163614DLL;
    case 0x106:
      return 0x32312C353163614DLL;
    case 0x107:
      return 0x33312C353163614DLL;
    case 0x108:
      return 0x312C363163614DLL;
    case 0x109:
      v14 = 0x2C363163614DLL;
      goto LABEL_163;
    case 0x10A:
      v10 = 0x2C363163614DLL;
LABEL_139:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x33000000000000;
      break;
    case 0x10B:
      result = 0x30312C363163614DLL;
      break;
    case 0x10C:
      v16 = 828596557;
LABEL_283:
      result = v16 | 0x31312C3600000000;
      break;
    case 0x10D:
      v15 = 0x2C363163614DLL;
LABEL_161:
      result = v15 & 0xFFFFFFFFFFFFLL | 0x39000000000000;
      break;
    case 0x10E:
      result = 0x34312C353163614DLL;
      break;
    case 0x10F:
      result = 0x32312C363163614DLL;
      break;
    case 0x110:
      result = 0x33312C363163614DLL;
      break;
    case 0x111:
      v13 = 0x2C363163614DLL;
LABEL_155:
      result = v13 & 0xFFFFFFFFFFFFLL | 0x36000000000000;
      break;
    case 0x112:
      v11 = 0x2C363163614DLL;
LABEL_110:
      result = v11 & 0xFFFFFFFFFFFFLL | 0x38000000000000;
      break;
    case 0x113:
      result = 0x352C363163614DLL;
      break;
    case 0x114:
      v12 = 0x2C363163614DLL;
LABEL_169:
      result = v12 & 0xFFFFFFFFFFFFLL | 0x37000000000000;
      break;
    case 0x115:
      v14 = 0x2C373163614DLL;
LABEL_163:
      result = v14 & 0xFFFFFFFFFFFFLL | 0x32000000000000;
      break;
    case 0x116:
    case 0x117:
      result = 0xD000000000000011;
      break;
    case 0x118:
      result = 0x656E6F685069;
      break;
    case 0x119:
      result = 1684099177;
      break;
    case 0x11A:
      result = 0x6E696D2064615069;
      break;
    case 0x11B:
      result = 1685016681;
      break;
    case 0x11C:
    case 0x11D:
      result = 0x206B6F6F4263614DLL;
      break;
    case 0x11E:
      result = 0x6F72502063614DLL;
      break;
    case 0x11F:
      result = 0x6F72502063614D69;
      break;
    case 0x120:
      result = 1667321193;
      break;
    case 0x121:
      result = 0x696E696D2063614DLL;
      break;
    case 0x122:
      result = 0x647574532063614DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29EBD8614()
{
  v0 = AppleHardware.Model.rawValue.getter();
  v2 = v1;
  if (v0 == AppleHardware.Model.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_29EC011F8();
  }

  return v5 & 1;
}

uint64_t sub_29EBD86B0()
{
  sub_29EC012B8();
  AppleHardware.Model.rawValue.getter();
  sub_29EC00B88();

  return sub_29EC012D8();
}

uint64_t sub_29EBD8718(uint64_t a1)
{
  AppleHardware.Model.rawValue.getter();
  sub_29EC00B88();
}

uint64_t sub_29EBD877C(uint64_t a1)
{
  sub_29EC012B8();
  AppleHardware.Model.rawValue.getter();
  sub_29EC00B88();

  return sub_29EC012D8();
}

uint64_t sub_29EBD87EC@<X0>(uint64_t *a1@<X8>)
{
  result = AppleHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_29EBD8828()
{
  result = qword_2A188A078;
  if (!qword_2A188A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A078);
  }

  return result;
}

unint64_t sub_29EBD8880()
{
  result = qword_2A188A080;
  if (!qword_2A188A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188A088, &qword_29EC04C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A080);
  }

  return result;
}

uint64_t PersonalizationAssetManager.__allocating_init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(a1, a2, a3);
  return v6;
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_29EC009C8();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = *a2;
  *(v3 + 272) = *(a2 + 16);
  *(v3 + 328) = *(a2 + 24);

  return MEMORY[0x2A1C73D48](sub_29EBD8A40, v2, 0);
}

uint64_t sub_29EBD8A40()
{
  if (*(v0 + 328))
  {
    if (*(v0 + 328) == 1)
    {
      v1 = *(v0 + 264);
      *(v0 + 176) = *(v0 + 256);
      *(v0 + 184) = v1;
      v2 = swift_task_alloc();
      *(v0 + 280) = v2;
      *v2 = v0;
      v2[1] = sub_29EBD8E14;

      return sub_29EBDAEDC(v0 + 136, (v0 + 176));
    }

    else
    {
      v22 = *(v0 + 256);
      v23 = *(v0 + 216);
      v24 = *(v0 + 264);
      *v23 = v22;
      *(v23 + 8) = v24;
      *(v23 + 24) = 0;
      sub_29EBBFF48(v22, v24);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v26 = v4;
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v27 = *(v0 + 232);
    v29 = *(v0 + 224);
    sub_29EC01018();
    *(v0 + 208) = sub_29EBD92DC(v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0C0, &qword_29EC05170);
    sub_29EBF1EAC(&qword_2A188A0C8, &qword_2A188A0C0, &qword_29EC05170, MEMORY[0x29EDC9A58]);
    v8 = sub_29EC00A88();
    v10 = v9;

    MEMORY[0x29EDAB670](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
    v11 = v10;
    v28 = v8;
    *(v0 + 296) = v10;
    sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
    sub_29EBEC27C(v7);
    sub_29EC009A8();
    (*(v6 + 8))(v7, v27);
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    sub_29EC00898();
    sub_29EBBFF9C(v13, v12);
    sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
    sub_29EC00EE8();
    v14 = sub_29EC00E88();
    *(v0 + 304) = v14;
    v15 = v29[10];
    v17 = v29[7];
    v16 = v29[8];
    *(v0 + 48) = v29[9];
    *(v0 + 64) = v15;
    *(v0 + 16) = v17;
    *(v0 + 32) = v16;
    sub_29EBBFF48(v5, v26);
    v18 = swift_task_alloc();
    *(v0 + 312) = v18;
    *v18 = v0;
    v18[1] = sub_29EBD8F2C;
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);

    return sub_29EBE3314(v0 + 80, v28, v11, v14, v0 + 16, v21, v19, v20);
  }
}

uint64_t sub_29EBD8E14()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_29EBD9270;
  }

  else
  {
    v4 = sub_29EBD91C8;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBD8F2C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 224);
  if (v0)
  {

    v5 = sub_29EBD9164;
  }

  else
  {

    v5 = sub_29EBD90A4;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBD90A4()
{
  v1 = v0[27];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  sub_29EBBFF48(v4, v5);
  sub_29EBBFF9C(v3, v2);

  sub_29EBBFF9C(v4, v5);
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EBD9164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EBD91C8()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  sub_29EBBFF48(v2, v3);

  sub_29EBBFF9C(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EBD9270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EBD92DC(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x29EDCA190];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x29EDCA190];
  if (v5)
  {
    v45 = MEMORY[0x29EDCA190];
    sub_29EBD494C(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
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
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_29EC006B8();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_29EC006D8();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_29EC006B8();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_29EC006D8();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A258, &qword_29EC05ED8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29EC02720;
      *(v20 + 56) = MEMORY[0x29EDCA018];
      *(v20 + 64) = MEMORY[0x29EDCA030];
      *(v20 + 32) = v19;
      v21 = sub_29EC00B08();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_29EBD494C((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_29EBD964C()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A188A090);
  v1 = __swift_project_value_buffer(v0, qword_2A188A090);
  if (qword_2A1889AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E698);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29EBD9714()
{
  v0 = sub_29EC00828();
  __swift_allocate_value_buffer(v0, qword_2A188A0A8);
  __swift_project_value_buffer(v0, qword_2A188A0A8);
  return sub_29EC007A8();
}

uint64_t static PersonalizationAssetManager.defaultCacheDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1889B00 != -1)
  {
    swift_once();
  }

  v2 = sub_29EC00828();
  v3 = __swift_project_value_buffer(v2, qword_2A188A0A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PersonalizationAssetManager.__allocating_init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationAssetManager.init(container:cacheDirectory:)(a1, a2);
  return v4;
}

uint64_t PersonalizationAssetManager.init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = _s19ParentDirectoryCRUDVMa(0);
  MEMORY[0x2A1C7C4A8](v45);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EC00828();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v11 = sub_29EC00988();
  __swift_project_value_buffer(v11, qword_2A188A090);
  v12 = *(v8 + 16);
  v47 = a2;
  v12(v10, a2, v7);
  v13 = a1;
  v14 = sub_29EC00968();
  v15 = sub_29EC00ED8();
  v48 = v8;
  v16 = v7;
  v17 = v15;

  if (os_log_type_enabled(v14, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    v44 = swift_slowAlloc();
    *&v49[0] = v44;
    *v18 = 138412546;
    *(v18 + 4) = v13;
    *v19 = v13;
    *(v18 + 12) = 2080;
    sub_29EBF2A70(&qword_2A1889BE0, 255, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v20 = v13;
    v21 = sub_29EC011D8();
    v23 = v22;
    (*(v48 + 8))(v10, v16);
    v24 = sub_29EBD24D0(v21, v23, v49);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_29EBB9000, v14, v17, "PersonalizationAssetManager INIT {container: %@, cacheDirectory: %s}", v18, 0x16u);
    v25 = v43;
    sub_29EBC6A78(v43, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v25, -1, -1);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x29EDAC460](v26, -1, -1);
    MEMORY[0x29EDAC460](v18, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v10, v16);
  }

  v27 = [v13 publicCloudDatabase];
  v28 = [v13 privateCloudDatabase];
  v29 = [v13 privateCloudDatabase];
  v30 = [objc_opt_self() defaultManager];
  v31 = v46;
  (*(v48 + 32))(&v46[*(v45 + 20)], v47, v16);
  *v31 = v30;
  sub_29EBD9CF0(v27, v28, v29, v31, v49);
  v32 = v49[13];
  *(v3 + 304) = v49[12];
  *(v3 + 320) = v32;
  v33 = v49[15];
  *(v3 + 336) = v49[14];
  *(v3 + 352) = v33;
  v34 = v49[9];
  *(v3 + 240) = v49[8];
  *(v3 + 256) = v34;
  v35 = v49[11];
  *(v3 + 272) = v49[10];
  *(v3 + 288) = v35;
  v36 = v49[5];
  *(v3 + 176) = v49[4];
  *(v3 + 192) = v36;
  v37 = v49[7];
  *(v3 + 208) = v49[6];
  *(v3 + 224) = v37;
  v38 = v49[1];
  *(v3 + 112) = v49[0];
  *(v3 + 128) = v38;
  v39 = v49[3];
  *(v3 + 144) = v49[2];
  *(v3 + 160) = v39;
  *(v3 + 368) = v13;
  *(v3 + 376) = v13;
  v40 = v13;
  return v3;
}

id sub_29EBD9CF0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = _s19ParentDirectoryCRUDVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  v43 = swift_allocObject();
  *(v43 + 16) = a3;
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  v41 = swift_allocObject();
  *(v41 + 16) = a3;
  sub_29EBF233C(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v40 = swift_allocObject();
  sub_29EBF23A4(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v13);
  sub_29EBF233C(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = swift_allocObject();
  sub_29EBF23A4(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v13);
  sub_29EBF233C(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_29EBF23A4(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_29EBF23A4(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_29EBF23A4(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  result = v21;
  v25 = v51;
  v26 = v52;
  *a5 = &unk_29EC05DF0;
  a5[1] = v26;
  a5[2] = &unk_29EC05E00;
  a5[3] = v25;
  v27 = v49;
  v28 = v50;
  a5[4] = &unk_29EC05E10;
  a5[5] = v28;
  a5[6] = &unk_29EC05E20;
  a5[7] = v27;
  v29 = v47;
  v30 = v48;
  a5[8] = &unk_29EC05E28;
  a5[9] = v30;
  a5[10] = &unk_29EC05E30;
  a5[11] = v29;
  v31 = v45;
  v32 = v46;
  a5[12] = &unk_29EC05E38;
  a5[13] = v32;
  a5[14] = &unk_29EC05E40;
  a5[15] = v31;
  v33 = v43;
  v34 = v44;
  a5[16] = &unk_29EC05E48;
  a5[17] = v34;
  a5[18] = &unk_29EC05E50;
  a5[19] = v33;
  v35 = v41;
  v36 = v42;
  a5[20] = &unk_29EC05E58;
  a5[21] = v36;
  a5[22] = &unk_29EC05E60;
  a5[23] = v35;
  v37 = v39;
  v38 = v40;
  a5[24] = &unk_29EC05E70;
  a5[25] = v38;
  a5[26] = &unk_29EC05E80;
  a5[27] = v37;
  a5[28] = &unk_29EC05E90;
  a5[29] = v14;
  a5[30] = &unk_29EC05EA0;
  a5[31] = v15;
  return result;
}

uint64_t PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v53 = _s19ParentDirectoryCRUDVMa(0);
  MEMORY[0x2A1C7C4A8](v53);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29EC00828();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_29EC00988();
  __swift_project_value_buffer(v13, qword_2A188A090);
  (*(v10 + 16))(v12, v55, v9);
  v14 = a1;
  v54 = v10;
  v15 = v14;
  v16 = a2;
  v17 = v9;
  v18 = sub_29EC00968();
  v19 = sub_29EC00ED8();

  v20 = os_log_type_enabled(v18, v19);
  v52 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v49 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v56[0] = v50;
    *v22 = 138412802;
    *(v22 + 4) = v15;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v16;
    *v23 = v15;
    v23[1] = v16;
    *(v22 + 22) = 2080;
    sub_29EBF2A70(&qword_2A1889BE0, 255, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v51 = v8;
    v24 = v15;
    v25 = v16;
    v48 = v19;
    v26 = v49;
    v27 = sub_29EC011D8();
    v29 = v28;
    (*(v54 + 8))(v12, v26);
    v30 = sub_29EBD24D0(v27, v29, v56);
    v8 = v51;

    *(v22 + 24) = v30;
    _os_log_impl(&dword_29EBB9000, v18, v48, "PersonalizationAssetManager INIT {container: %@, manateeContainer: %@, cacheDirectory: %s}", v22, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F10, &qword_29EC02D20);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v23, -1, -1);
    v31 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x29EDAC460](v31, -1, -1);
    MEMORY[0x29EDAC460](v22, -1, -1);

    v32 = v26;
  }

  else
  {

    (*(v54 + 8))(v12, v17);
    v32 = v17;
  }

  v33 = [v15 publicCloudDatabase];
  v34 = [v15 privateCloudDatabase];
  v35 = v52;
  v36 = [v52 privateCloudDatabase];
  v37 = [objc_opt_self() defaultManager];
  (*(v54 + 32))(v8 + *(v53 + 20), v55, v32);
  *v8 = v37;
  sub_29EBD9CF0(v33, v34, v36, v8, v56);
  v38 = v56[13];
  *(v4 + 304) = v56[12];
  *(v4 + 320) = v38;
  v39 = v56[15];
  *(v4 + 336) = v56[14];
  *(v4 + 352) = v39;
  v40 = v56[9];
  *(v4 + 240) = v56[8];
  *(v4 + 256) = v40;
  v41 = v56[11];
  *(v4 + 272) = v56[10];
  *(v4 + 288) = v41;
  v42 = v56[5];
  *(v4 + 176) = v56[4];
  *(v4 + 192) = v42;
  v43 = v56[7];
  *(v4 + 208) = v56[6];
  *(v4 + 224) = v43;
  v44 = v56[1];
  *(v4 + 112) = v56[0];
  *(v4 + 128) = v44;
  v45 = v56[3];
  *(v4 + 144) = v56[2];
  *(v4 + 160) = v45;
  *(v4 + 368) = v15;
  *(v4 + 376) = v35;
  return v4;
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v5 = sub_29EC009C8();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;

  return MEMORY[0x2A1C73D48](sub_29EBDA700, v2, 0);
}

uint64_t sub_29EBDA700()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v20 = v1;
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v21 = *(v0 + 176);
  v23 = *(v0 + 168);
  sub_29EC01018();
  *(v0 + 152) = sub_29EBD92DC(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0C0, &qword_29EC05170);
  sub_29EBF1EAC(&qword_2A188A0C8, &qword_2A188A0C0, &qword_29EC05170, MEMORY[0x29EDC9A58]);
  v5 = sub_29EC00A88();
  v7 = v6;

  MEMORY[0x29EDAB670](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v8 = v7;
  v22 = v5;
  *(v0 + 216) = v7;
  sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  sub_29EBEC27C(v4);
  sub_29EC009A8();
  (*(v3 + 8))(v4, v21);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  sub_29EC00898();
  sub_29EBBFF9C(v10, v9);
  sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
  sub_29EC00EE8();
  v11 = sub_29EC00E88();
  *(v0 + 224) = v11;
  v12 = v23[10];
  v14 = v23[7];
  v13 = v23[8];
  *(v0 + 48) = v23[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_29EBBFF48(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_29EBDA9C0;
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);

  return sub_29EBE3314(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_29EBDA9C0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 168);
  if (v0)
  {

    v5 = sub_29EBDABFC;
  }

  else
  {

    v5 = sub_29EBDAB38;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBDAB38()
{
  v1 = v0[20];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  sub_29EBBFF48(v4, v5);
  sub_29EBBFF9C(v2, v3);

  sub_29EBBFF9C(v4, v5);
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EBDABFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v4 = a2[1];
  v3[7] = *a2;
  v3[8] = v4;
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_29EBDAD0C;

  return sub_29EBDAEDC((v3 + 2), v3 + 7);
}

uint64_t sub_29EBDAD0C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_29EBDAEC4;
  }

  else
  {
    v4 = sub_29EBDAE24;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBDAE24()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_29EBBFF48(v2, v3);

  sub_29EBBFF9C(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_29EBDAEDC(uint64_t a1, uint64_t *a2)
{
  v3[37] = a1;
  v3[38] = v2;
  v5 = sub_29EC008F8();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0) - 8);
  v3[43] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[44] = v6;
  v3[45] = v7;
  v3[46] = v8;

  return MEMORY[0x2A1C73D48](sub_29EBDB020, v2, 0);
}

uint64_t sub_29EBDB020()
{
  v81 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EC00988();
  *(v0 + 376) = __swift_project_value_buffer(v1, qword_2A188A090);

  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v78 = v7;
    *v6 = 136315394;

    sub_29EC01018();

    v79 = v5;
    v80 = v4;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v8 = sub_29EBD24D0(v5, v4, &v78);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
    sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);

    sub_29EC00EE8();
    v9 = sub_29EC00E88();
    v10 = [v9 recordName];

    v11 = sub_29EC00AE8();
    v13 = v12;

    v14 = sub_29EBD24D0(v11, v13, &v78);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Fetching PrivateRecord START {cacheName: %s, recordName: %s}", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v7, -1, -1);
    MEMORY[0x29EDAC460](v6, -1, -1);
  }

  v15 = sub_29EBC5D0C();
  v16 = *(v15 + 16);
  swift_bridgeObjectRetain_n();
  if (!v16)
  {
    goto LABEL_10;
  }

  v18 = *(v0 + 360);
  v17 = *(v0 + 368);

  v19 = sub_29EBEECD0(v18, v17);
  if ((v20 & 1) == 0)
  {

LABEL_10:

    goto LABEL_11;
  }

  v22 = *(v0 + 344);
  v21 = *(v0 + 352);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  sub_29EBCEF60(*(v15 + 56) + *(*(v0 + 336) + 72) * v19, v21, &qword_2A188A260, &qword_29EC05EE0);

  sub_29EBCEF60(v21, v22, &qword_2A188A260, &qword_29EC05EE0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);

    sub_29EBC6A78(v26, &qword_2A188A260, &qword_29EC05EE0);
    sub_29EBC6A78(v25, &qword_2A188A260, &qword_29EC05EE0);
LABEL_11:
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 304);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_29EC01018();

    v79 = v28;
    v80 = v27;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v30 = v79;
    v31 = v80;
    *(v0 + 384) = v80;
    *(v0 + 392) = sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
    *(v0 + 400) = sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
    sub_29EC00EE8();
    v32 = sub_29EC00E88();
    *(v0 + 408) = v32;
    v33 = v29[18];
    v35 = v29[15];
    v34 = v29[16];
    *(v0 + 48) = v29[17];
    *(v0 + 64) = v33;
    *(v0 + 16) = v35;
    *(v0 + 32) = v34;
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    *v36 = v0;
    v36[1] = sub_29EBDB9BC;
    v37 = *(v0 + 304);

    return sub_29EBE4F14(v0 + 144, v30, v31, v32, v0 + 16, v37);
  }

  v39 = *(v0 + 344);
  v41 = *(v0 + 320);
  v40 = *(v0 + 328);
  v42 = *(v0 + 312);
  sub_29EC008E8();
  sub_29EC008D8();
  v44 = v43;
  v45 = *(v41 + 8);
  v45(v40, v42);
  v45(v39, v42);
  v46 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v47 = sub_29EC00AB8();
  v48 = [v46 initWithSuiteName_];

  if (!v48 || (v49 = sub_29EC00AB8(), v50 = [v48 integerForKey_], v49, v48, v50 < 1))
  {
    v51 = 1209600.0;
    if (v44 <= 1209600.0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v62 = *(v0 + 360);
    v61 = *(v0 + 368);
    v63 = *(v0 + 312);
    v64 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A268, &qword_29EC05EF8);
    v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00) - 8);
    v66 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_29EC02720;
    v68 = (v67 + v66);
    v69 = v65[14];
    *v68 = v62;
    *(v68 + 1) = v61;
    (*(v64 + 56))(&v68[v69], 1, 1, v63);
    v70 = sub_29EBF0904(v67);
    swift_setDeallocating();
    sub_29EBC6A78(v68, &unk_2A188A270, &unk_29EC05F00);
    swift_deallocClassInstance();
    sub_29EBC61DC(v70);

    v71 = sub_29EC00968();
    v72 = sub_29EC00ED8();

    if (os_log_type_enabled(v71, v72))
    {
      v74 = *(v0 + 360);
      v73 = *(v0 + 368);
      v75 = *(v0 + 352);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v77;
      *v76 = 136315650;
      *(v76 + 4) = sub_29EBD24D0(v74, v73, &v79);
      *(v76 + 12) = 2048;
      *(v76 + 14) = v44;
      *(v76 + 22) = 2048;
      *(v76 + 24) = v51;
      _os_log_impl(&dword_29EBB9000, v71, v72, "Time delta since last fetch for %s is %f (s) which is more than %f. Removing from shouldNotFetchStatusEngravingAssetForBtAddress", v76, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x29EDAC460](v77, -1, -1);
      MEMORY[0x29EDAC460](v76, -1, -1);
    }

    else
    {
      v75 = *(v0 + 352);
    }

    sub_29EBC6A78(v75, &qword_2A188A260, &qword_29EC05EE0);
    goto LABEL_11;
  }

  v51 = v50;
  if (v44 > v50)
  {
    goto LABEL_23;
  }

LABEL_17:
  swift_bridgeObjectRelease_n();

  v52 = sub_29EC00968();
  v53 = sub_29EC00ED8();

  if (os_log_type_enabled(v52, v53))
  {
    v55 = *(v0 + 360);
    v54 = *(v0 + 368);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v79 = v57;
    *v56 = 136315650;
    *(v56 + 4) = sub_29EBD24D0(v55, v54, &v79);
    *(v56 + 12) = 2048;
    *(v56 + 14) = v44;
    *(v56 + 22) = 2048;
    *(v56 + 24) = v51;
    _os_log_impl(&dword_29EBB9000, v52, v53, "Time delta since last fetch for %s is %f (s). which is less than %f. Assuming this device is not personalized so skipping engraving asset fetch", v56, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x29EDAC460](v57, -1, -1);
    MEMORY[0x29EDAC460](v56, -1, -1);
  }

  v58 = *(v0 + 352);
  sub_29EBBD72C();
  swift_allocError();
  *v59 = xmmword_29EC01BA0;
  *(v59 + 16) = 2;
  swift_willThrow();
  sub_29EBC6A78(v58, &qword_2A188A260, &qword_29EC05EE0);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_29EBDB9BC()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 304);

  if (v0)
  {

    v5 = sub_29EBDBD58;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_29EBDBB5C;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBDBB5C()
{
  v24 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v20 = v0[22];

  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[46];
  if (v7)
  {
    v18 = v4;
    v9 = v2;
    v10 = v0[45];
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_29EC01018();

    v22 = v10;
    v23 = v8;
    v2 = v9;
    v4 = v18;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v13 = sub_29EBD24D0(v22, v8, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetching PrivateRecord END --- manatee container {cacheName: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v14 = v12;
    v1 = v19;
    MEMORY[0x29EDAC460](v14, -1, -1);
    MEMORY[0x29EDAC460](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[37];
  *v15 = v1;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v15[4] = v20;

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EBDBD58()
{
  v31 = v0;
  v1 = *(v0 + 424);

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 360);
    v27 = *(v0 + 368);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    *(v0 + 288) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v10 = sub_29EC00B48();
    v12 = sub_29EBD24D0(v10, v11, &v28);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_29EC01018();

    v29 = v6;
    v30 = v27;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v13 = sub_29EBD24D0(v29, v30, &v28);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_29EBB9000, v3, v4, "### Error fetching from manatee CloudKit container --- fallback to non manatee {error: %s, cacheName: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 424);
  }

  v16 = *(v0 + 360);
  v15 = *(v0 + 368);
  v17 = *(v0 + 304);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_29EC01018();

  v29 = v16;
  v30 = v15;
  MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
  v18 = v29;
  v19 = v30;
  *(v0 + 432) = v30;
  sub_29EC00EE8();
  v20 = sub_29EC00E88();
  *(v0 + 440) = v20;
  v21 = v17[14];
  v23 = v17[11];
  v22 = v17[12];
  *(v0 + 112) = v17[13];
  *(v0 + 128) = v21;
  *(v0 + 80) = v23;
  *(v0 + 96) = v22;
  v24 = swift_task_alloc();
  *(v0 + 448) = v24;
  *v24 = v0;
  v24[1] = sub_29EBDC058;
  v25 = *(v0 + 304);

  return sub_29EBE68F8(v0 + 184, v18, v19, v20, v0 + 80, v25);
}

uint64_t sub_29EBDC058()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 304);

  if (v0)
  {

    v5 = sub_29EBDC3F4;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_29EBDC1F8;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBDC1F8()
{
  v24 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[26];
  v20 = v0[27];

  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[46];
  if (v7)
  {
    v18 = v4;
    v9 = v2;
    v10 = v0[45];
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_29EC01018();

    v22 = v10;
    v23 = v8;
    v2 = v9;
    v4 = v18;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v13 = sub_29EBD24D0(v22, v8, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetching PrivateRecord END --- fallback to non manatee container {cacheName: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v14 = v12;
    v1 = v19;
    MEMORY[0x29EDAC460](v14, -1, -1);
    MEMORY[0x29EDAC460](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[37];
  *v15 = v1;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v15[4] = v20;

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EBDC3F4()
{
  v50 = v0;
  v1 = *(v0 + 456);
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    if (v5 == 2 && v3 == 9 && v4 == 0)
    {
      v24 = *(v0 + 456);

      v25 = sub_29EC00968();
      v26 = sub_29EC00ED8();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 368);
      if (v27)
      {
        v29 = *(v0 + 360);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47 = v31;
        *v30 = 136315394;
        *(v0 + 248) = xmmword_29EC01BA0;
        *(v0 + 264) = 2;
        v32 = sub_29EC00B48();
        v34 = sub_29EBD24D0(v32, v33, &v47);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_29EC01018();

        v48 = v29;
        v49 = v28;
        MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
        v35 = sub_29EBD24D0(v48, v49, &v47);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_29EBB9000, v25, v26, "### assetNotFound so device has no engraving, caching to not fetch this asset again. {error: %s, cacheName: %s}", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29EDAC460](v31, -1, -1);
        MEMORY[0x29EDAC460](v30, -1, -1);
      }

      else
      {
      }

      v37 = *(v0 + 360);
      v36 = *(v0 + 368);
      v38 = *(v0 + 312);
      v39 = *(v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A268, &qword_29EC05EF8);
      v40 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00) - 8);
      v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_29EC02720;
      v43 = (v42 + v41);
      v44 = v40[14];
      *v43 = v37;
      *(v43 + 1) = v36;
      sub_29EC008E8();
      (*(v39 + 56))(&v43[v44], 0, 1, v38);
      v45 = sub_29EBF0904(v42);
      swift_setDeallocating();
      sub_29EBC6A78(v43, &unk_2A188A270, &unk_29EC05F00);
      swift_deallocClassInstance();
      sub_29EBC61DC(v45);
      sub_29EBBD72C();
      swift_allocError();
      *v46 = xmmword_29EC01BA0;
      *(v46 + 16) = 2;
      swift_willThrow();

      goto LABEL_14;
    }

    sub_29EBF2B0C(v3, v4, v5);
  }

  v8 = *(v0 + 456);
  swift_bridgeObjectRelease_n();

  v9 = v8;
  v10 = sub_29EC00968();
  v11 = sub_29EC00EB8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 456);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47 = v16;
    *v15 = 136315394;
    *(v0 + 280) = v12;
    v17 = v12;
    v18 = sub_29EC00B48();
    v20 = sub_29EBD24D0(v18, v19, &v47);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_29EC01018();

    v48 = v14;
    v49 = v13;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v21 = sub_29EBD24D0(v48, v49, &v47);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_29EBB9000, v10, v11, "### Error fetching from non manatee CloudKit container {error: %s, cacheName: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v16, -1, -1);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
LABEL_14:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t PersonalizationAssetManager.storeAsset(from:to:)(_OWORD *a1, void *a2)
{
  *(v3 + 304) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  *(v3 + 312) = swift_task_alloc();
  v6 = sub_29EC009C8();
  *(v3 + 320) = v6;
  *(v3 + 328) = *(v6 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = *a1;
  v7 = a2[1];
  *(v3 + 360) = *a2;
  *(v3 + 368) = v7;

  return MEMORY[0x2A1C73D48](sub_29EBDCAA4, v2, 0);
}

uint64_t sub_29EBDCAA4()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v20 = v1;
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v21 = *(v0 + 320);
  v5 = *(v0 + 304);
  sub_29EC01018();
  *(v0 + 288) = sub_29EBD92DC(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0C0, &qword_29EC05170);
  sub_29EBF1EAC(&qword_2A188A0C8, &qword_2A188A0C0, &qword_29EC05170, MEMORY[0x29EDC9A58]);
  v6 = sub_29EC00A88();
  v8 = v7;

  MEMORY[0x29EDAB670](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v22 = v6;
  *(v0 + 376) = v8;
  sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  sub_29EBEC27C(v4);
  sub_29EC009A8();
  (*(v3 + 8))(v4, v21);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  sub_29EC00898();
  sub_29EBBFF9C(v9, v10);
  sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
  sub_29EC00EE8();
  v11 = sub_29EC00E88();
  *(v0 + 384) = v11;
  v12 = v5[10];
  v14 = v5[7];
  v13 = v5[8];
  *(v0 + 48) = v5[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_29EBBFF48(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  v15[1] = sub_29EBDCD5C;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 304);

  return sub_29EBE3314(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_29EBDCD5C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 304);
  if (v0)
  {

    v5 = sub_29EBDD78C;
  }

  else
  {

    v5 = sub_29EBDCED4;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBDCED4()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 408) = *(v0 + 80);
  v5 = *(v0 + 112);
  *(v0 + 424) = *(v0 + 104);
  *(v0 + 432) = v5;
  v6 = *(v0 + 120);
  *(v0 + 440) = v6;
  *(v0 + 160) = v6;
  v7 = v6;
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  *(v0 + 152) = v5;
  v8 = sub_29EC00D98();
  *(v0 + 448) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v8);
  v12 = sub_29EBF2A70(&qword_2A188A0E8, v11, type metadata accessor for PersonalizationAssetManager, &protocol conformance descriptor for PersonalizationAssetManager);
  *(v0 + 472) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  v14 = *(v0 + 152);
  *(v13 + 48) = *(v0 + 136);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v0 + 168);
  *(v13 + 88) = v4;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_29EBBFF48(v5, v7);
  sub_29EBF05AC(v0 + 136, v0 + 176);
  v15 = sub_29EBDE31C(0, 0, v3, &unk_29EC051B0, v13);
  *(v0 + 480) = v15;
  v16 = swift_task_alloc();
  *(v0 + 488) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
  *(v0 + 496) = v17;
  *v16 = v0;
  v16[1] = sub_29EBDD118;
  v18 = MEMORY[0x29EDC9F20];
  v19 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73B88](v0 + 272, v15, v19, v17, v18);
}

uint64_t sub_29EBDD118()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2A1C73D48](sub_29EBDD244, v1, 0);
}

uint64_t sub_29EBDD244()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  *(v0 + 504) = *(v0 + 272);
  *(v0 + 282) = *(v0 + 280);
  v3(v6, 1, 1, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v7;
  *(v8 + 56) = *(v0 + 136);
  *(v8 + 72) = *(v0 + 152);
  *(v8 + 88) = *(v0 + 168);
  swift_retain_n();

  sub_29EBF05AC(v0 + 136, v0 + 216);
  v9 = sub_29EBDF018(0, 0, v6, &unk_29EC051C8, v8);
  *(v0 + 512) = v9;
  v10 = swift_task_alloc();
  *(v0 + 520) = v10;
  *v10 = v0;
  v10[1] = sub_29EBDD3C8;
  v11 = MEMORY[0x29EDC9F80];
  v12 = MEMORY[0x29EDC9F90];
  v13 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73B88](v0 + 281, v9, v13, v11, v12);
}

uint64_t sub_29EBDD3C8()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2A1C73D48](sub_29EBDD4F4, v1, 0);
}

uint64_t sub_29EBDD4F4(uint64_t a1)
{
  if (*(v1 + 281))
  {

    return swift_willThrowTypedImpl();
  }

  else if (*(v1 + 282))
  {
    v3 = *(v1 + 504);
    v4 = *(v1 + 432);
    v5 = *(v1 + 440);
    v6 = *(v1 + 416);
    v7 = *(v1 + 408);
    *(v1 + 296) = v3;
    v8 = v3;
    swift_willThrowTypedImpl();
    sub_29EBBD72C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
    sub_29EBF0710(v3, 1);
    sub_29EBF0710(v3, 1);
    sub_29EBF071C(v1 + 136);
    sub_29EBBFF9C(v7, v6);

    sub_29EBBFF9C(v4, v5);

    v10 = *(v1 + 8);

    return v10();
  }

  else
  {
    if (qword_2A1889AF8 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 344);
    v12 = *(v1 + 352);
    v13 = sub_29EC00988();
    v14 = __swift_project_value_buffer(v13, qword_2A188A090);
    sub_29EBBFF48(v11, v12);

    v15 = swift_task_alloc();
    *(v1 + 528) = v15;
    *v15 = v1;
    v15[1] = sub_29EBDD7FC;
    v16 = *(v1 + 344);
    v17 = *(v1 + 352);
    v18 = *(v1 + 304);

    return sub_29EBC17D8(0xD00000000000001ALL, 0x800000029EC07F10, v14, v18, v16, v17);
  }
}

uint64_t sub_29EBDD78C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EBDD7FC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 304);

  sub_29EBBFF9C(v2, v1);

  return MEMORY[0x2A1C73D48](sub_29EBDD950, v3, 0);
}

uint64_t sub_29EBDD950()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[51];
  sub_29EBF071C((v0 + 17));
  sub_29EBBFF9C(v4, v3);

  sub_29EBBFF9C(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EBDDA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  return MEMORY[0x2A1C73D48](sub_29EBDDA34, a7, 0);
}

uint64_t sub_29EBDDA34()
{
  v39 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_29EC00988();
  *(v0 + 208) = __swift_project_value_buffer(v2, qword_2A188A090);
  sub_29EBF05AC(v1, v0 + 16);
  sub_29EBF05AC(v1, v0 + 56);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315394;

    sub_29EC01018();

    v37 = v8;
    v38 = v7;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v11 = sub_29EBD24D0(v8, v7, &v36);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    v14 = v13 >> 62;
    v15 = *(v0 + 192);
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        sub_29EBF071C(v15);
        v16 = 0;
        goto LABEL_15;
      }

      v18 = v12 + 16;
      v12 = *(v12 + 16);
      v17 = *(v18 + 8);
      v15 = sub_29EBF071C(v15);
      v16 = v17 - v12;
      if (!__OFSUB__(v17, v12))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v14)
    {
      sub_29EBF071C(v15);
      v16 = BYTE6(v13);
LABEL_15:
      v20 = *(v0 + 192);
      *(v9 + 14) = v16;
      sub_29EBF071C(v20);
      _os_log_impl(&dword_29EBB9000, v3, v4, "Store imageData Local START {filename: %s, imageData.count: %ld}", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x29EDAC460](v10, -1, -1);
      MEMORY[0x29EDAC460](v9, -1, -1);
      goto LABEL_16;
    }

    result = sub_29EBF071C(v15);
    LODWORD(v16) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_15;
  }

  sub_29EBF071C(*(v0 + 192));
  sub_29EBF071C(v6);
LABEL_16:

  v21 = *(v0 + 192);
  sub_29EC00698();
  swift_allocObject();
  sub_29EC00688();
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  *(v0 + 96) = *v21;
  *(v0 + 112) = v23;
  *(v0 + 128) = v22;
  sub_29EBF1FE4();
  v24 = sub_29EC00678();
  *(v0 + 216) = v24;
  *(v0 + 224) = v25;
  v26 = v24;
  v27 = v25;
  v28 = *(v0 + 200);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);

  v31 = *(v28 + 304);
  v37 = 0;
  v38 = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_29EC01018();

  v37 = v30;
  v38 = v29;
  MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
  v32 = v37;
  v33 = v38;
  *(v0 + 232) = v38;
  *(v0 + 136) = v32;
  *(v0 + 144) = v33;
  *(v0 + 152) = v26;
  *(v0 + 160) = v27;
  v35 = (v31 + *v31);
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  *v34 = v0;
  v34[1] = sub_29EBDDE88;

  return v35(v0 + 136, v0 + 152);
}

uint64_t sub_29EBDDE88()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_29EBDE0C8;
  }

  else
  {

    v2 = sub_29EBDDFD0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBDDFEC(uint64_t a1)
{
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Store imageData Local END", v4, 2u);
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

  sub_29EBBFF9C(v1[27], v1[28]);

  v5 = v1[1];

  return v5();
}

uint64_t sub_29EBDE0E4()
{
  v22 = v0;
  v1 = v0[31];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v7 = v0[22];
    v6 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v0[21] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_29EC01018();

    v20 = v7;
    v21 = v6;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v14 = sub_29EBD24D0(v20, v21, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Store imageData Local FAILED -- {error: %s, filename: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[27];
  v16 = v0[28];
  swift_willThrow();
  sub_29EBBFF9C(v15, v16);
  v17 = v0[1];

  return v17();
}

uint64_t sub_29EBDE31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v22 - v9;
  sub_29EBCEF60(a3, v22 - v9, &qword_2A188A0E0, &qword_29EC051A0);
  v11 = sub_29EC00D98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_29EBC6A78(v10, &qword_2A188A0E0, &qword_29EC051A0);
  }

  else
  {
    sub_29EC00D88();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29EC00D08();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_29EC00B58() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_29EBC6A78(a3, &qword_2A188A0E0, &qword_29EC051A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29EBC6A78(a3, &qword_2A188A0E0, &qword_29EC051A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29EBDE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2A1C73D48](sub_29EBDE5EC, a6, 0);
}

uint64_t sub_29EBDE5EC()
{
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EC00988();
  v0[10] = __swift_project_value_buffer(v1, qword_2A188A090);

  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
    sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);

    sub_29EC00EE8();
    v6 = sub_29EC00E88();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Store imageData Private CloudKit database START {recordID: %@}", v4, 0xCu);
    sub_29EBC6A78(v5, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v5, -1, -1);
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

  v7 = v0[8];
  v8 = v0[9];

  v19 = *(v7 + 240);
  v0[11] = sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  v0[12] = sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
  swift_bridgeObjectRetain_n();
  sub_29EC00EE8();
  v9 = sub_29EC00E88();
  v0[13] = v9;
  v17 = *(v8 + 32);

  sub_29EC00EE8();
  v10 = sub_29EC00E88();
  sub_29EBF0B38(0, &qword_2A188A110, 0x29EDB8820);
  v11 = v10;
  v12 = sub_29EC00F28();
  v0[14] = v12;
  v13 = [v12 encryptedValues];
  swift_getObjectType();
  sub_29EC00898();
  sub_29EC00EF8();
  swift_unknownObjectRelease();
  v14 = [v12 encryptedValues];
  swift_getObjectType();
  v0[2] = v17;
  sub_29EC011D8();
  sub_29EC00EF8();

  swift_unknownObjectRelease();
  v0[3] = v9;
  v0[4] = v12;
  v18 = (v19 + *v19);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_29EBDEA6C;

  return (v18)(v0 + 3, v0 + 4);
}

uint64_t sub_29EBDEA6C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_29EBDED74;
  }

  else
  {
    v2 = sub_29EBDEB9C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBDEB9C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2A1C73D48](sub_29EBDEC0C, v2, 0);
}

uint64_t sub_29EBDEC0C()
{

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    sub_29EC00EE8();
    v5 = sub_29EC00E88();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_29EBB9000, v1, v2, "Store imageData Private CloudKit database END {recordID: %@}", v3, 0xCu);
    sub_29EBC6A78(v4, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v4, -1, -1);
    MEMORY[0x29EDAC460](v3, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29EBDED74()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2A1C73D48](sub_29EBDEDE4, v2, 0);
}

uint64_t sub_29EBDEDE4()
{
  v21 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v0[5] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_29EC01018();

    v19 = v7;
    v20 = v6;
    MEMORY[0x29EDAB670](0xD000000000000010, 0x800000029EC081D0);
    v14 = sub_29EBD24D0(v19, v20, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Store imageData Private CloudKit database FAILED -- {error: %s, filename: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  else
  {
    v15 = v0[16];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_29EBDF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29EBCEF60(a3, v25 - v10, &qword_2A188A0E0, &qword_29EC051A0);
  v12 = sub_29EC00D98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29EBC6A78(v11, &qword_2A188A0E0, &qword_29EC051A0);
  }

  else
  {
    sub_29EC00D88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29EC00D08();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29EC00B58() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29EBC6A78(a3, &qword_2A188A0E0, &qword_29EC051A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29EBC6A78(a3, &qword_2A188A0E0, &qword_29EC051A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_29EBDF318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBDF340, a1, 0);
}

uint64_t sub_29EBDF340()
{
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EC00988();
  __swift_project_value_buffer(v1, qword_2A188A090);
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Successfully saved imageData to local cache and Private CloudKit database -- deleting public record local cache", v4, 2u);
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = *(v7 + 352);
  sub_29EC01018();
  v0[4] = sub_29EBD92DC(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0C0, &qword_29EC05170);
  sub_29EBF1EAC(&qword_2A188A0C8, &qword_2A188A0C0, &qword_29EC05170, MEMORY[0x29EDC9A58]);
  v9 = sub_29EC00A88();
  v11 = v10;

  MEMORY[0x29EDAB670](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v0[8] = v11;
  v0[2] = v9;
  v0[3] = v11;
  v14 = (v8 + *v8);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_29EBDF5F4;

  return v14(v0 + 2);
}

uint64_t sub_29EBDF5F4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29EBDF740;
  }

  else
  {
    v2 = sub_29EBDF728;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBDF778()
{
  v77 = v0;
  v0[5] = &type metadata for ProductKitFeatureFlag;
  v0[6] = sub_29EBF0AE4();
  v1 = sub_29EC00938();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if ((v1 & 1) == 0)
  {
    if (qword_2A1889AF8 != -1)
    {
      swift_once();
    }

    v16 = sub_29EC00988();
    __swift_project_value_buffer(v16, qword_2A188A090);
    v17 = sub_29EC00968();
    v18 = sub_29EC00ED8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_29EBB9000, v17, v18, "ProductKit.ManateeMigration FeatureFlag not enabled, returning", v19, 2u);
      MEMORY[0x29EDAC460](v19, -1, -1);
    }

    v20 = v0[1];
    goto LABEL_39;
  }

  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_29EC00988();
  v0[42] = __swift_project_value_buffer(v2, qword_2A188A090);
  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Manatee container migration START", v5, 2u);
    MEMORY[0x29EDAC460](v5, -1, -1);
  }

  v6 = v0[41];

  v7 = *(v6 + 368);
  v0[43] = v7;
  if (!v7 || (v8 = *(v0[41] + 376), (v0[44] = v8) == 0))
  {

    v21 = sub_29EC00968();
    v22 = sub_29EC00EB8();

    if (os_log_type_enabled(v21, v22))
    {
      v74 = v0[41];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315394;
      v0[24] = v7;
      v25 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A108, &qword_29EC051D8);
      v26 = sub_29EC00B48();
      v28 = sub_29EBD24D0(v26, v27, &v75);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = *(v74 + 376);
      v0[25] = v29;
      v30 = v29;
      v31 = sub_29EC00B48();
      v33 = sub_29EBD24D0(v31, v32, &v75);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_29EBB9000, v21, v22, "Manatee container migration FAIL --- container nil {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v24, -1, -1);
      MEMORY[0x29EDAC460](v23, -1, -1);
    }

    else
    {

      v25 = v7;
    }

    v34 = v0[41];
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_29EC01018();
    MEMORY[0x29EDAB670](0xD00000000000004DLL, 0x800000029EC07F30);
    v0[22] = v7;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A108, &qword_29EC051D8);
    v36 = sub_29EC00B48();
    MEMORY[0x29EDAB670](v36);

    MEMORY[0x29EDAB670](0xD00000000000001CLL, 0x800000029EC07F80);
    v37 = *(v34 + 376);
    v0[23] = v37;
    v38 = v37;
    v39 = sub_29EC00B48();
    MEMORY[0x29EDAB670](v39);

    MEMORY[0x29EDAB670](125, 0xE100000000000000);
    v40 = v75;
    v41 = v76;
    sub_29EBBD72C();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 1;
    swift_willThrow();
    goto LABEL_38;
  }

  v73 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [v10 containerIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_29EC00AE8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v72 = v9;
  v43 = [v9 containerIdentifier];
  if (!v43)
  {
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v44 = v43;
  v45 = sub_29EC00AE8();
  v47 = v46;

  if (!v15)
  {
    if (!v47)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (!v47)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v13 == v45 && v15 == v47)
  {

LABEL_34:

    v51 = sub_29EC00968();
    v52 = sub_29EC00EB8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75 = v71;
      *v53 = 136315394;
      v0[39] = v7;
      v54 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A108, &qword_29EC051D8);
      v55 = sub_29EC00B48();
      v57 = sub_29EBD24D0(v55, v56, &v75);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = v72;
      v59 = v73;
      v0[40] = v73;
      v60 = v72;
      v61 = sub_29EC00B48();
      v63 = sub_29EBD24D0(v61, v62, &v75);

      *(v53 + 14) = v63;
      _os_log_impl(&dword_29EBB9000, v51, v52, "Manatee container migration FAIL --- containers are the same {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v71, -1, -1);
      MEMORY[0x29EDAC460](v53, -1, -1);
    }

    else
    {

      v58 = v72;
      v59 = v73;
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_29EC01018();
    MEMORY[0x29EDAB670](0xD000000000000057, 0x800000029EC07FC0);
    v0[37] = v7;
    v64 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A108, &qword_29EC051D8);
    v65 = sub_29EC00B48();
    MEMORY[0x29EDAB670](v65);

    MEMORY[0x29EDAB670](0xD00000000000001CLL, 0x800000029EC07F80);
    v0[38] = v59;
    v66 = v58;
    v67 = sub_29EC00B48();
    MEMORY[0x29EDAB670](v67);

    MEMORY[0x29EDAB670](125, 0xE100000000000000);
    v68 = v75;
    v69 = v76;
    sub_29EBBD72C();
    swift_allocError();
    *v70 = v68;
    *(v70 + 8) = v69;
    *(v70 + 16) = 1;
    swift_willThrow();

LABEL_38:
    v20 = v0[1];
LABEL_39:

    return v20();
  }

  v50 = sub_29EC011F8();

  if (v50)
  {
    goto LABEL_34;
  }

LABEL_30:
  v0[45] = [v10 privateCloudDatabase];
  v48 = swift_task_alloc();
  v0[46] = v48;
  *v48 = v0;
  v48[1] = sub_29EBE004C;

  return sub_29EBFB690(0xD000000000000015, 0x800000029EC07FA0);
}

uint64_t sub_29EBE004C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = *(v3 + 328);
    v5 = sub_29EBE2170;
  }

  else
  {
    v6 = *(v3 + 328);

    v5 = sub_29EBE0174;
    v4 = v6;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

void *sub_29EBE0174()
{
  v52 = v0;
  result = v0[47];
  v2 = result[2];
  v0[49] = v2;
  if (!v2)
  {

    v20 = sub_29EC00968();
    v21 = sub_29EC00ED8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[43];
    v23 = v0[44];
    if (v22)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_29EBB9000, v20, v21, "Manatee container migration END", v25, 2u);
      MEMORY[0x29EDAC460](v25, -1, -1);
    }

    else
    {

      v20 = v24;
    }

    v19 = v0[1];
LABEL_16:

    return v19();
  }

  v3 = v0[48];
  v0[50] = 0;
  if (!result[2])
  {
    __break(1u);
    return result;
  }

  v4 = result[4];
  v0[51] = v4;
  v5 = result[5];
  v0[52] = v5;
  v6 = v5;
  v7 = v4;
  sub_29EBE2304(v6, v0 + 7);
  if (v3)
  {

    v8 = v3;
    v9 = sub_29EC00968();
    v10 = sub_29EC00ED8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51[0] = v12;
      *v11 = 136315138;
      v0[26] = v3;
      v13 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v14 = sub_29EC00B48();
      v16 = sub_29EBD24D0(v14, v15, v51);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_29EBB9000, v9, v10, "Manatee container migration FAIL {error: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x29EDAC460](v12, -1, -1);
      MEMORY[0x29EDAC460](v11, -1, -1);
    }

    v18 = v0[43];
    v17 = v0[44];
    swift_willThrow();

    v19 = v0[1];
    goto LABEL_16;
  }

  v26 = v0[9];
  v27 = v0[10];
  v0[53] = v0[8];
  v0[54] = v26;
  v0[55] = v27;
  v49 = v0[11];
  v0[56] = sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);

  sub_29EC00EE8();
  v28 = sub_29EC00E88();
  sub_29EBF0B38(0, &qword_2A188A110, 0x29EDB8820);
  v29 = v28;
  v30 = sub_29EC00F28();
  v0[57] = v30;
  v31 = [v30 encryptedValues];
  swift_getObjectType();
  v32 = sub_29EC00898();
  v33 = MEMORY[0x29EDB87D0];
  v0[15] = MEMORY[0x29EDC99B0];
  v0[16] = v33;
  v0[12] = v32;
  v0[13] = v34;
  sub_29EC00EF8();
  swift_unknownObjectRelease();
  [v30 encryptedValues];
  swift_getObjectType();
  v0[27] = v49;
  v35 = sub_29EC011D8();
  v0[20] = MEMORY[0x29EDC99B0];
  v0[21] = v33;
  v0[17] = v35;
  v0[18] = v36;
  sub_29EC00EF8();

  swift_unknownObjectRelease();
  v37 = v7;
  v38 = sub_29EC00968();
  v39 = sub_29EC00ED8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v40 = 136315138;
    v0[36] = v37;
    v42 = v37;
    v43 = sub_29EC00B48();
    v45 = sub_29EBD24D0(v43, v44, v51);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_29EBB9000, v38, v39, "Migrate data to manatee CloudKit database START {recordID: %s}", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x29EDAC460](v41, -1, -1);
    MEMORY[0x29EDAC460](v40, -1, -1);
  }

  v46 = *(v0[41] + 240);
  v47 = [v30 recordID];
  v0[58] = v47;
  v0[28] = v47;
  v0[29] = v30;
  v50 = (v46 + *v46);
  v48 = swift_task_alloc();
  v0[59] = v48;
  *v48 = v0;
  v48[1] = sub_29EBE07A8;

  return (v50)(v0 + 28, v0 + 29);
}

uint64_t sub_29EBE07A8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_29EBE0C28;
  }

  else
  {
    v2 = sub_29EBE08C4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBE08C4()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2A1C73D48](sub_29EBE0930, v1, 0);
}

uint64_t sub_29EBE0930()
{
  v25 = v0;
  v1 = *(v0 + 456);
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 456);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    *(v0 + 280) = [v4 recordID];
    v7 = sub_29EC00B48();
    v9 = sub_29EBD24D0(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Migrate data to manatee CloudKit database END {recordID: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x29EDAC460](v6, -1, -1);
    MEMORY[0x29EDAC460](v5, -1, -1);
  }

  v10 = *(v0 + 408);
  v11 = sub_29EC00968();
  v12 = sub_29EC00ED8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 408);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    *(v0 + 272) = v13;
    v16 = v13;
    v17 = sub_29EC00B48();
    v19 = sub_29EBD24D0(v17, v18, &v24);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_29EBB9000, v11, v12, "Remove data from non manatee CloudKit database START {recordID: %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x29EDAC460](v15, -1, -1);
    MEMORY[0x29EDAC460](v14, -1, -1);
  }

  v20 = *(*(v0 + 328) + 224);
  *(v0 + 248) = *(v0 + 408);
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v0 + 488) = v21;
  *v21 = v0;
  v21[1] = sub_29EBE1040;

  return v23(v0 + 248);
}

uint64_t sub_29EBE0C28()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2A1C73D48](sub_29EBE0C94, v1, 0);
}

uint64_t sub_29EBE0C94()
{
  v48 = v0;
  v1 = v0;
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = v2;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 480);
    v8 = *(v0 + 456);
    v45 = *(v0 + 432);
    v46 = *(v0 + 440);
    v9 = *(v0 + 416);
    v43 = v8;
    v44 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v10 = 136315394;
    *(v0 + 240) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, v47);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = [v8 recordID];
    v17 = [v16 recordName];

    v18 = sub_29EC00AE8();
    v20 = v19;

    v21 = sub_29EBD24D0(v18, v20, v47);

    *(v10 + 14) = v21;
    v22 = v6;
    v23 = v44;
    _os_log_impl(&dword_29EBB9000, v5, v22, "Migrate data to manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);

    swift_willThrow();

    v24 = v45;
    v25 = v46;
  }

  else
  {
    v26 = *(v0 + 456);
    v27 = *(v0 + 432);
    v28 = *(v0 + 440);
    v9 = v1[52];
    v23 = v1[51];

    swift_willThrow();

    v24 = v27;
    v25 = v28;
  }

  sub_29EBBFF9C(v24, v25);

  v29 = v1[60];
  v30 = v29;
  v31 = sub_29EC00968();
  v32 = sub_29EC00ED8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136315138;
    v1[26] = v29;
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v36 = sub_29EC00B48();
    v38 = sub_29EBD24D0(v36, v37, v47);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_29EBB9000, v31, v32, "Manatee container migration FAIL {error: %s}", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x29EDAC460](v34, -1, -1);
    MEMORY[0x29EDAC460](v33, -1, -1);
  }

  v40 = v1[43];
  v39 = v1[44];
  swift_willThrow();

  v41 = v1[1];

  return v41();
}

uint64_t sub_29EBE1040()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_29EBE190C;
  }

  else
  {
    v2 = sub_29EBE1154;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

void sub_29EBE1170()
{
  v71 = v0;
  v1 = *(v0 + 408);
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();

  if (os_log_type_enabled(v2, v3))
  {
    v68 = *(v0 + 440);
    v65 = *(v0 + 456);
    v66 = *(v0 + 432);
    v4 = *(v0 + 416);
    v5 = *(v0 + 408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v70[0] = v7;
    *v6 = 136315138;
    *(v0 + 264) = v5;
    v8 = v5;
    v9 = sub_29EC00B48();
    v11 = sub_29EBD24D0(v9, v10, v70);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Remove data from non manatee CloudKit database END {recordID: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x29EDAC460](v7, -1, -1);
    MEMORY[0x29EDAC460](v6, -1, -1);

    sub_29EBBFF9C(v66, v68);
  }

  else
  {
    v12 = *(v0 + 456);
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 408);

    sub_29EBBFF9C(v14, v13);
  }

  v16 = *(v0 + 400) + 1;
  if (v16 == *(v0 + 392))
  {

    v17 = sub_29EC00968();
    v18 = sub_29EC00ED8();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_29EBB9000, v17, v18, "Manatee container migration END", v22, 2u);
      MEMORY[0x29EDAC460](v22, -1, -1);
    }

    else
    {

      v17 = v21;
    }

    v41 = *(v0 + 8);
LABEL_14:

    v41();
    return;
  }

  v23 = *(v0 + 496);
  *(v0 + 400) = v16;
  v24 = *(v0 + 376);
  if (v16 >= *(v24 + 16))
  {
    __break(1u);
    return;
  }

  v25 = v24 + 16 * v16;
  v26 = *(v25 + 32);
  *(v0 + 408) = v26;
  v27 = *(v25 + 40);
  *(v0 + 416) = v27;
  v28 = v27;
  v29 = v26;
  sub_29EBE2304(v28, (v0 + 56));
  if (v23)
  {

    v30 = v23;
    v31 = sub_29EC00968();
    v32 = sub_29EC00ED8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136315138;
      *(v0 + 208) = v23;
      v35 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v36 = sub_29EC00B48();
      v38 = sub_29EBD24D0(v36, v37, v70);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_29EBB9000, v31, v32, "Manatee container migration FAIL {error: %s}", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x29EDAC460](v34, -1, -1);
      MEMORY[0x29EDAC460](v33, -1, -1);
    }

    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    swift_willThrow();

    v41 = *(v0 + 8);
    goto LABEL_14;
  }

  v42 = *(v0 + 72);
  v43 = *(v0 + 80);
  *(v0 + 424) = *(v0 + 64);
  *(v0 + 432) = v42;
  *(v0 + 440) = v43;
  v67 = *(v0 + 88);
  *(v0 + 448) = sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);

  sub_29EC00EE8();
  v44 = sub_29EC00E88();
  sub_29EBF0B38(0, &qword_2A188A110, 0x29EDB8820);
  v45 = v44;
  v46 = sub_29EC00F28();
  *(v0 + 456) = v46;
  v47 = [v46 encryptedValues];
  swift_getObjectType();
  v48 = sub_29EC00898();
  v49 = MEMORY[0x29EDB87D0];
  *(v0 + 120) = MEMORY[0x29EDC99B0];
  *(v0 + 128) = v49;
  *(v0 + 96) = v48;
  *(v0 + 104) = v50;
  sub_29EC00EF8();
  swift_unknownObjectRelease();
  [v46 encryptedValues];
  swift_getObjectType();
  *(v0 + 216) = v67;
  v51 = sub_29EC011D8();
  *(v0 + 160) = MEMORY[0x29EDC99B0];
  *(v0 + 168) = v49;
  *(v0 + 136) = v51;
  *(v0 + 144) = v52;
  sub_29EC00EF8();

  swift_unknownObjectRelease();
  v53 = v29;
  v54 = sub_29EC00968();
  v55 = sub_29EC00ED8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315138;
    *(v0 + 288) = v53;
    v58 = v53;
    v59 = sub_29EC00B48();
    v61 = sub_29EBD24D0(v59, v60, v70);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_29EBB9000, v54, v55, "Migrate data to manatee CloudKit database START {recordID: %s}", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x29EDAC460](v57, -1, -1);
    MEMORY[0x29EDAC460](v56, -1, -1);
  }

  v62 = *(*(v0 + 328) + 240);
  v63 = [v46 recordID];
  *(v0 + 464) = v63;
  *(v0 + 224) = v63;
  *(v0 + 232) = v46;
  v69 = (v62 + *v62);
  v64 = swift_task_alloc();
  *(v0 + 472) = v64;
  *v64 = v0;
  v64[1] = sub_29EBE07A8;

  v69(v0 + 224, v0 + 232);
}

void sub_29EBE1928()
{
  v69 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 408);
  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00EB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 496);
    v66 = *(v0 + 440);
    v63 = *(v0 + 456);
    v64 = *(v0 + 432);
    v62 = *(v0 + 416);
    v7 = *(v0 + 408);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68[0] = v9;
    *v8 = 136315394;
    *(v0 + 256) = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, v68);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v7 recordName];
    v15 = sub_29EC00AE8();
    v17 = v16;

    v18 = sub_29EBD24D0(v15, v17, v68);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Remove data from non manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);

    sub_29EBBFF9C(v64, v66);
  }

  else
  {
    v19 = *(v0 + 496);
    v20 = *(v0 + 456);
    v22 = *(v0 + 432);
    v21 = *(v0 + 440);
    v23 = *(v0 + 408);

    sub_29EBBFF9C(v22, v21);
  }

  v24 = *(v0 + 400) + 1;
  if (v24 == *(v0 + 392))
  {

    v25 = sub_29EC00968();
    v26 = sub_29EC00ED8();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    if (v27)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_29EBB9000, v25, v26, "Manatee container migration END", v30, 2u);
      MEMORY[0x29EDAC460](v30, -1, -1);
    }

    else
    {

      v25 = v29;
    }

    v37 = *(v0 + 8);

    v37();
  }

  else
  {
    *(v0 + 400) = v24;
    v31 = *(v0 + 376);
    if (v24 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = v31 + 16 * v24;
      v33 = *(v32 + 32);
      *(v0 + 408) = v33;
      v34 = *(v32 + 40);
      *(v0 + 416) = v34;
      v35 = v34;
      v36 = v33;
      sub_29EBE2304(v35, (v0 + 56));
      v38 = *(v0 + 72);
      v39 = *(v0 + 80);
      *(v0 + 424) = *(v0 + 64);
      *(v0 + 432) = v38;
      *(v0 + 440) = v39;
      v65 = *(v0 + 88);
      *(v0 + 448) = sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
      sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);

      sub_29EC00EE8();
      v40 = sub_29EC00E88();
      sub_29EBF0B38(0, &qword_2A188A110, 0x29EDB8820);
      v41 = v40;
      v42 = sub_29EC00F28();
      *(v0 + 456) = v42;
      v43 = [v42 encryptedValues];
      swift_getObjectType();
      v44 = sub_29EC00898();
      v45 = MEMORY[0x29EDB87D0];
      *(v0 + 120) = MEMORY[0x29EDC99B0];
      *(v0 + 128) = v45;
      *(v0 + 96) = v44;
      *(v0 + 104) = v46;
      sub_29EC00EF8();
      swift_unknownObjectRelease();
      [v42 encryptedValues];
      swift_getObjectType();
      *(v0 + 216) = v65;
      v47 = sub_29EC011D8();
      *(v0 + 160) = MEMORY[0x29EDC99B0];
      *(v0 + 168) = v45;
      *(v0 + 136) = v47;
      *(v0 + 144) = v48;
      sub_29EC00EF8();

      swift_unknownObjectRelease();
      v49 = v36;
      v50 = sub_29EC00968();
      v51 = sub_29EC00ED8();

      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315138;
        *(v0 + 288) = v49;
        v55 = v49;
        v56 = sub_29EC00B48();
        v58 = sub_29EBD24D0(v56, v57, v68);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_29EBB9000, v50, v51, "Migrate data to manatee CloudKit database START {recordID: %s}", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x29EDAC460](v54, -1, -1);
        MEMORY[0x29EDAC460](v53, -1, -1);
      }

      v59 = *(*(v0 + 328) + 240);
      v60 = [v42 recordID];
      *(v0 + 464) = v60;
      *(v0 + 224) = v60;
      *(v0 + 232) = v42;
      v67 = (v59 + *v59);
      v61 = swift_task_alloc();
      *(v0 + 472) = v61;
      *v61 = v0;
      v61[1] = sub_29EBE07A8;

      v67(v0 + 224, v0 + 232);
    }
  }
}

uint64_t sub_29EBE2170()
{
  v16 = v0;

  v1 = *(v0 + 384);
  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v0 + 208) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v8 = sub_29EC00B48();
    v10 = sub_29EBD24D0(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Manatee container migration FAIL {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x29EDAC460](v6, -1, -1);
    MEMORY[0x29EDAC460](v5, -1, -1);
  }

  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

void sub_29EBE2304(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [objc_msgSend(a1 encryptedValues)];
  swift_unknownObjectRelease();
  v6 = sub_29EC00C58();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = [a1 encryptedValues];
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;
  v10 = sub_29EC00AB8();
  v11 = [v9 objectForKeyedSubscript_];

  sub_29EBECD14(v11, 0xD000000000000010, 0x800000029EC08130);
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_74;
  }

  v53 = a2;
  v12 = sub_29EC00AB8();
  v13 = [v9 objectForKeyedSubscript_];

  if (v13 && (v56 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A208, &qword_29EC05DC0), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v54;
    v14 = v55;
  }

  else
  {
    v14 = 0xE100000000000000;
    v15 = 49;
  }

  v16 = HIBYTE(v14) & 0xF;
  v17 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_71;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v22 = sub_29EBFF2E4(v15, v14, 10);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v54 = v15;
    v55 = v14 & 0xFFFFFFFFFFFFFFLL;
    if (v15 == 43)
    {
      if (!v16)
      {
LABEL_83:
        __break(1u);
        return;
      }

      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v33 = &v54 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v19)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v15 == 45)
    {
      if (!v16)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v26 = &v54 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v16)
    {
      v22 = 0;
      v38 = &v54;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        v38 = (v38 + 1);
        if (!--v16)
        {
LABEL_68:
          LOBYTE(v19) = 0;
          goto LABEL_70;
        }
      }
    }
  }

  else
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      v19 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = sub_29EC01078();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v29 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (!v19)
          {
            goto LABEL_70;
          }

          v30 = v19 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v29)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_82;
    }

    if (v20 == 45)
    {
      if (v17 >= 1)
      {
        v21 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (!v19)
          {
            goto LABEL_70;
          }

          v23 = v19 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v17)
    {
      v22 = 0;
      if (!v19)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v36 = *v19 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        ++v19;
        if (!--v17)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_69:
  v22 = 0;
  LOBYTE(v19) = 1;
LABEL_70:
  LOBYTE(v56) = v19;
  v41 = v19;

  if (v41)
  {
LABEL_71:
    v22 = 1;
  }

LABEL_72:
  v42 = sub_29EC00858();
  v44 = v43;

  if (v44 >> 60 == 15)
  {
    sub_29EBBD72C();
    swift_allocError();
    *v45 = 0xD000000000000030;
    *(v45 + 8) = 0x800000029EC08150;
    *(v45 + 16) = 0;
    swift_willThrow();
LABEL_74:
    swift_unknownObjectRelease();

    return;
  }

  v46 = [a1 recordID];
  v47 = [v46 recordName];

  v48 = sub_29EC00AE8();
  v50 = v49;
  swift_unknownObjectRelease();

  *v53 = v48;
  v53[1] = v50;
  v53[2] = v42;
  v53[3] = v44;
  v53[4] = v22;
}

void sub_29EBE28A4(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v104 = a3;
  v6 = sub_29EC00828();
  v111 = *(v6 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v93[-v11];
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v93[-v13];
  v16 = *a2;
  v15 = a2[1];
  v17 = MEMORY[0x29EDABA00](0x746E65644979656BLL, 0xED00007265696669);
  v18 = sub_29EBECD14(v17, 0xD000000000000014, 0x800000029EC082A0);
  if (v3)
  {
    sub_29EBBFF9C(v16, v15);

LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  v98 = v12;
  v99 = v9;
  v100 = 0;
  v101 = v19;
  v20 = v111;
  v102 = v16;
  v103 = v15;
  v97 = v18;
  swift_unknownObjectRelease();
  v21 = a1;
  if (!MEMORY[0x29EDABA00](0x7373416567616D69, 0xEA00000000007465))
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v44 = MEMORY[0x29EDABA00](0x6567616D69, 0xE500000000000000);
    v45 = v100;
    sub_29EBECD14(v44, 0x692E64726F636572, 0xEC0000006567616DLL);
    if (v45)
    {
      sub_29EBBFF9C(v102, v103);

      goto LABEL_3;
    }

    swift_unknownObjectRelease();
    v47 = v102;
    v46 = v103;
    goto LABEL_24;
  }

  v23 = [v22 fileURL];
  if (!v23)
  {
    sub_29EBBFF9C(v102, v103);

    if (qword_2A1889AF8 != -1)
    {
      swift_once();
    }

    v48 = sub_29EC00988();
    __swift_project_value_buffer(v48, qword_2A188A090);
    v49 = sub_29EC00968();
    v50 = sub_29EC00EB8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_29EBB9000, v49, v50, "Public record asset isn't locally cached", v51, 2u);
      MEMORY[0x29EDAC460](v51, -1, -1);
    }

    sub_29EBBD72C();
    swift_allocError();
    *v52 = xmmword_29EC01BA0;
    *(v52 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v24 = v98;
  v25 = v23;
  sub_29EC007F8();

  v26 = v20;
  v27 = *(v20 + 32);
  v28 = v14;
  v29 = v24;
  v30 = v6;
  v27(v14, v29, v6);
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v98 = v21;
  v31 = sub_29EC00988();
  __swift_project_value_buffer(v31, qword_2A188A090);
  v32 = v99;
  (*(v26 + 16))(v99, v28, v6);
  v33 = sub_29EC00968();
  v34 = sub_29EC00E98();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v95 = v35;
    v96 = swift_slowAlloc();
    *&v106 = v96;
    *v35 = 136315138;
    sub_29EBF2A70(&qword_2A1889BE0, 255, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v36 = sub_29EC011D8();
    v38 = v37;
    v94 = v34;
    v39 = *(v26 + 8);
    v39(v32, v30);
    v40 = sub_29EBD24D0(v36, v38, &v106);

    v41 = v95;
    *(v95 + 1) = v40;
    v42 = v41;
    _os_log_impl(&dword_29EBB9000, v33, v94, "Reading data from %s", v41, 0xCu);
    v43 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x29EDAC460](v43, -1, -1);
    MEMORY[0x29EDAC460](v42, -1, -1);
  }

  else
  {

    v39 = *(v26 + 8);
    v39(v32, v30);
  }

  v47 = v102;
  v53 = v100;
  sub_29EC00AA8();
  if (v53)
  {
    v39(v28, v30);
    swift_unknownObjectRelease();
    sub_29EBBFF9C(v47, v103);

    return;
  }

  v39(v28, v30);
  swift_unknownObjectRelease();
  v46 = v103;
  v21 = v98;
LABEL_24:
  v54 = sub_29EC00858();
  v56 = v55;

  if (v56 >> 60 == 15)
  {
    sub_29EBBFF9C(v47, v46);

    sub_29EBBD72C();
    swift_allocError();
    *v57 = 0xD000000000000030;
    *(v57 + 8) = 0x800000029EC082C0;
    *(v57 + 16) = 0;
    swift_willThrow();
LABEL_26:

    return;
  }

  v58 = MEMORY[0x29EDABA00](0x6E6F6973726576, 0xE700000000000000);
  if (v58 && (v105[0] = v58, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A208, &qword_29EC05DC0), (swift_dynamicCast() & 1) != 0))
  {
    v59 = *(&v106 + 1);
    v60 = v106;
  }

  else
  {
    v59 = 0xE100000000000000;
    v60 = 49;
  }

  v61 = HIBYTE(v59) & 0xF;
  v62 = v60 & 0xFFFFFFFFFFFFLL;
  if ((v59 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v59) & 0xF;
  }

  else
  {
    v63 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {

    goto LABEL_93;
  }

  if ((v59 & 0x1000000000000000) != 0)
  {
    v67 = sub_29EBFF2E4(v60, v59, 10);
    v92 = v91;

    if ((v92 & 1) == 0)
    {
      v47 = v102;
      v46 = v103;
      goto LABEL_94;
    }

    v47 = v102;
    v46 = v103;
    goto LABEL_93;
  }

  if ((v59 & 0x2000000000000000) == 0)
  {
    if ((v60 & 0x1000000000000000) != 0)
    {
      v64 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v64 = sub_29EC01078();
    }

    v65 = *v64;
    if (v65 == 43)
    {
      if (v62 >= 1)
      {
        v74 = v62 - 1;
        if (v62 != 1)
        {
          v67 = 0;
          if (!v64)
          {
            goto LABEL_92;
          }

          v75 = v64 + 1;
          while (1)
          {
            v76 = *v75 - 48;
            if (v76 > 9)
            {
              break;
            }

            v77 = 10 * v67;
            if ((v67 * 10) >> 64 != (10 * v67) >> 63)
            {
              break;
            }

            v67 = v77 + v76;
            if (__OFADD__(v77, v76))
            {
              break;
            }

            ++v75;
            if (!--v74)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_102;
    }

    if (v65 == 45)
    {
      if (v62 >= 1)
      {
        v66 = v62 - 1;
        if (v62 != 1)
        {
          v67 = 0;
          if (!v64)
          {
            goto LABEL_92;
          }

          v68 = v64 + 1;
          while (1)
          {
            v69 = *v68 - 48;
            if (v69 > 9)
            {
              break;
            }

            v70 = 10 * v67;
            if ((v67 * 10) >> 64 != (10 * v67) >> 63)
            {
              break;
            }

            v67 = v70 - v69;
            if (__OFSUB__(v70, v69))
            {
              break;
            }

            ++v68;
            if (!--v66)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      __break(1u);
      goto LABEL_101;
    }

    if (v62)
    {
      v67 = 0;
      if (!v64)
      {
        goto LABEL_92;
      }

      while (1)
      {
        v81 = *v64 - 48;
        if (v81 > 9)
        {
          break;
        }

        v82 = 10 * v67;
        if ((v67 * 10) >> 64 != (10 * v67) >> 63)
        {
          break;
        }

        v67 = v82 + v81;
        if (__OFADD__(v82, v81))
        {
          break;
        }

        ++v64;
        if (!--v62)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_91;
  }

  *&v106 = v60;
  *(&v106 + 1) = v59 & 0xFFFFFFFFFFFFFFLL;
  if (v60 != 43)
  {
    if (v60 == 45)
    {
      if (!v61)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v64 = (v61 - 1);
      if (v61 != 1)
      {
        v67 = 0;
        v71 = &v106 + 1;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          v73 = 10 * v67;
          if ((v67 * 10) >> 64 != (10 * v67) >> 63)
          {
            break;
          }

          v67 = v73 - v72;
          if (__OFSUB__(v73, v72))
          {
            break;
          }

          ++v71;
          if (!--v64)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v61)
    {
      v67 = 0;
      v83 = &v106;
      while (1)
      {
        v84 = *v83 - 48;
        if (v84 > 9)
        {
          break;
        }

        v85 = 10 * v67;
        if ((v67 * 10) >> 64 != (10 * v67) >> 63)
        {
          break;
        }

        v67 = v85 + v84;
        if (__OFADD__(v85, v84))
        {
          break;
        }

        ++v83;
        if (!--v61)
        {
LABEL_90:
          LOBYTE(v64) = 0;
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v67 = 0;
    LOBYTE(v64) = 1;
LABEL_92:
    LOBYTE(v105[0]) = v64;
    v86 = v64;

    if ((v86 & 1) == 0)
    {
LABEL_94:
      v105[0] = v47;
      v105[1] = v46;
      sub_29EBED40C(v97, v101, v54, v56, v105, v67, &v106);

      v87 = v107;
      v88 = v108;
      v89 = v110;
      v90 = v104;
      *v104 = v106;
      *(v90 + 2) = v87;
      *(v90 + 3) = v88;
      v90[2] = v109;
      *(v90 + 6) = v89;
      return;
    }

LABEL_93:
    v67 = 1;
    goto LABEL_94;
  }

  if (v61)
  {
    v64 = (v61 - 1);
    if (v61 != 1)
    {
      v67 = 0;
      v78 = &v106 + 1;
      while (1)
      {
        v79 = *v78 - 48;
        if (v79 > 9)
        {
          break;
        }

        v80 = 10 * v67;
        if ((v67 * 10) >> 64 != (10 * v67) >> 63)
        {
          break;
        }

        v67 = v80 + v79;
        if (__OFADD__(v80, v79))
        {
          break;
        }

        ++v78;
        if (!--v64)
        {
          goto LABEL_92;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_103:
  __break(1u);
}

uint64_t sub_29EBE3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a5;
  v8[43] = a6;
  v8[40] = a3;
  v8[41] = a4;
  v8[38] = a1;
  v8[39] = a2;
  sub_29EBBFF48(a7, a8);
  sub_29EBBFF48(a7, a8);
  sub_29EBBFF48(a7, a8);

  return MEMORY[0x2A1C73D48](sub_29EBE33BC, a6, 0);
}

uint64_t sub_29EBE33BC()
{
  v22 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = sub_29EC00988();
  v0[46] = __swift_project_value_buffer(v2, qword_2A188A090);

  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00ED8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_29EC00AE8();
    v14 = v13;

    v15 = sub_29EBD24D0(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  v16 = v0[40];
  v17 = *(v0[43] + 320);
  v0[32] = v0[39];
  v0[33] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[47] = v18;
  *v18 = v0;
  v18[1] = sub_29EBE3694;

  return (v20)(v0 + 30, v0 + 32);
}

uint64_t sub_29EBE3694()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_29EBE3D1C;
  }

  else
  {
    v2 = sub_29EBE37A8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBE37C4(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  *(v1 + 392) = v2;
  *(v1 + 400) = v3;
  v4 = sub_29EC00968();
  v5 = sub_29EC00E98();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v9 = *(v1 + 352);
    v8 = *(v1 + 360);

    sub_29EBBFF48(v9, v8);
    v10 = swift_task_alloc();
    *(v1 + 432) = v10;
    *v10 = v1;
    v10[1] = sub_29EBE44D4;
    v11 = *(v1 + 352);
    v12 = *(v1 + 360);
    v13 = *(v1 + 336);
    v14 = *(v1 + 344);
    v15 = *(v1 + 320);
    v16 = *(v1 + 328);
    v17 = *(v1 + 312);
    v18 = v1 + 72;
LABEL_11:

    return sub_29EBE77E0(v18, v17, v15, v16, v13, v14, v11, v12);
  }

  if (v6)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Record exists locally. Loading.", v19, 2u);
    MEMORY[0x29EDAC460](v19, -1, -1);
  }

  v20 = *(v1 + 384);

  sub_29EC00668();
  swift_allocObject();
  sub_29EC00658();
  sub_29EBF28F4();
  sub_29EC00648();
  v21 = v20;
  *(v1 + 408) = v20;

  if (v20)
  {

    v22 = v20;
    v23 = sub_29EC00968();
    v24 = sub_29EC00EB8();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v1 + 312);
      v25 = *(v1 + 320);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50[0] = v28;
      *v27 = 136315394;
      *(v1 + 296) = v21;
      v29 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v30 = sub_29EC00B48();
      v32 = sub_29EBD24D0(v30, v31, v50);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_29EBD24D0(v26, v25, v50);
      _os_log_impl(&dword_29EBB9000, v23, v24, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v28, -1, -1);
      MEMORY[0x29EDAC460](v27, -1, -1);
    }

    sub_29EBBFF48(*(v1 + 352), *(v1 + 360));
    v33 = swift_task_alloc();
    *(v1 + 416) = v33;
    *v33 = v1;
    v33[1] = sub_29EBE3F4C;
    v11 = *(v1 + 352);
    v12 = *(v1 + 360);
    v13 = *(v1 + 336);
    v14 = *(v1 + 344);
    v15 = *(v1 + 320);
    v16 = *(v1 + 328);
    v17 = *(v1 + 312);
    v18 = v1 + 184;
    goto LABEL_11;
  }

  v35 = sub_29EC00968();
  v36 = sub_29EC00ED8();

  v37 = os_log_type_enabled(v35, v36);
  v39 = *(v1 + 352);
  v38 = *(v1 + 360);
  if (v37)
  {
    v40 = *(v1 + 312);
    v49 = *(v1 + 320);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, v50);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_29EBD24D0(v40, v49, v50);
    _os_log_impl(&dword_29EBB9000, v35, v36, "Fetch %s END -- Local load {filename: %s}", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v42, -1, -1);
    MEMORY[0x29EDAC460](v41, -1, -1);
  }

  sub_29EBF28E0(v2, v3);

  sub_29EBBFF9C(v39, v38);
  sub_29EBBFF9C(v39, v38);
  sub_29EBBFF9C(v39, v38);
  v43 = *(v1 + 304);
  v44 = *(v1 + 144);
  v45 = *(v1 + 152);
  v46 = *(v1 + 176);
  v47 = *(v1 + 160);
  *v43 = *(v1 + 128);
  *(v43 + 16) = v44;
  *(v43 + 24) = v45;
  *(v43 + 32) = v47;
  *(v43 + 48) = v46;
  sub_29EBBFF9C(*(v1 + 352), *(v1 + 360));
  v48 = *(v1 + 8);

  return v48();
}

uint64_t sub_29EBE3D38()
{
  v24 = v0;
  v1 = v0[48];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[48];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315394;
    v0[34] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, &v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29EBD24D0(v7, v6, &v23);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  sub_29EBBFF48(v0[44], v0[45]);
  v14 = swift_task_alloc();
  v0[56] = v14;
  *v14 = v0;
  v14[1] = sub_29EBE4A30;
  v15 = v0[44];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[41];
  v21 = v0[39];

  return sub_29EBE77E0((v0 + 2), v21, v19, v20, v17, v18, v15, v16);
}

uint64_t sub_29EBE3F4C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_29EBE428C;
  }

  else
  {
    v4 = sub_29EBE4078;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE4078()
{
  v23 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  if (v3)
  {
    v9 = *(v0 + 312);
    v20 = *(v0 + 320);
    v10 = swift_slowAlloc();
    v21 = v4;
    v22 = swift_slowAlloc();
    v11 = v22;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, &v22);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EBD24D0(v9, v20, &v22);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
    sub_29EBF28E0(v6, v5);
    v12 = v21;
  }

  else
  {
    sub_29EBF28E0(*(v0 + 392), *(v0 + 400));
    v12 = v4;
  }

  sub_29EBBFF9C(v7, v8);
  sub_29EBBFF9C(v7, v8);
  sub_29EBBFF9C(v7, v8);
  v13 = *(v0 + 304);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 232);
  v17 = *(v0 + 216);
  *v13 = *(v0 + 184);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v17;
  *(v13 + 48) = v16;
  sub_29EBBFF9C(*(v0 + 352), *(v0 + 360));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29EBE428C()
{
  v22 = v0;
  v1 = v0[53];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[53];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, v21);
    *(v8 + 12) = 2080;
    v0[36] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, v21);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_29EBD24D0(v7, v6, v21);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v14 = v0[50];
  v15 = v0[51];
  v16 = v0[49];
  swift_willThrow();
  sub_29EBF28E0(v16, v14);

  v18 = v0[44];
  v17 = v0[45];
  sub_29EBBFF9C(v18, v17);
  sub_29EBBFF9C(v18, v17);
  sub_29EBBFF9C(v18, v17);
  sub_29EBBFF9C(v18, v17);
  v19 = v0[1];

  return v19();
}

uint64_t sub_29EBE44D4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_29EBE47F4;
  }

  else
  {
    v4 = sub_29EBE4600;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE4600()
{
  v20 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  if (v3)
  {
    v8 = *(v0 + 312);
    v18 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, &v19);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v18, &v19);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- load from CloudKit {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  sub_29EBF28E0(v5, v4);

  sub_29EBBFF9C(v6, v7);
  sub_29EBBFF9C(v6, v7);
  sub_29EBBFF9C(v6, v7);
  v11 = *(v0 + 304);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  *v11 = *(v0 + 72);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  sub_29EBBFF9C(*(v0 + 352), *(v0 + 360));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29EBE47F4()
{
  v21 = v0;
  v1 = v0[55];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, v20);
    *(v8 + 12) = 2080;
    v0[35] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, v20);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_29EBD24D0(v7, v6, v20);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v14 = v0[49];
  v15 = v0[50];
  swift_willThrow();
  sub_29EBF28E0(v14, v15);
  v17 = v0[44];
  v16 = v0[45];
  sub_29EBBFF9C(v17, v16);
  sub_29EBBFF9C(v17, v16);
  sub_29EBBFF9C(v17, v16);
  sub_29EBBFF9C(v17, v16);
  v18 = v0[1];

  return v18();
}

uint64_t sub_29EBE4A30()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_29EBE4D48;
  }

  else
  {
    v4 = sub_29EBE4B5C;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE4B5C()
{
  v19 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  if (v3)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v18);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  sub_29EBBFF9C(v5, v6);
  sub_29EBBFF9C(v5, v6);
  sub_29EBBFF9C(v5, v6);
  v11 = *(v0 + 304);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);
  *v11 = *(v0 + 16);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  sub_29EBBFF9C(*(v0 + 352), *(v0 + 360));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29EBE4D48()
{
  v13 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00EB8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[39];
    v3 = v0[40];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_29EBD24D0(0x655263696C627550, 0xEC00000064726F63, v12);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29EBD24D0(v4, v3, v12);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v6, -1, -1);
    MEMORY[0x29EDAC460](v5, -1, -1);
  }

  v7 = v0[48];
  swift_willThrow();

  v9 = v0[44];
  v8 = v0[45];
  sub_29EBBFF9C(v9, v8);
  sub_29EBBFF9C(v9, v8);
  sub_29EBBFF9C(v9, v8);
  sub_29EBBFF9C(v9, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_29EBE4F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBE4F3C, a6, 0);
}

uint64_t sub_29EBE4F3C()
{
  v22 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_29EC00988();
  v0[36] = __swift_project_value_buffer(v2, qword_2A188A090);

  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00ED8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_29EC00AE8();
    v14 = v13;

    v15 = sub_29EBD24D0(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  v16 = v0[32];
  v17 = *(v0[35] + 320);
  v0[24] = v0[31];
  v0[25] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_29EBE5220;

  return (v20)(v0 + 22, v0 + 24);
}

uint64_t sub_29EBE5220()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_29EBE5850;
  }

  else
  {
    v2 = sub_29EBE5334;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBE5350(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  v4 = sub_29EC00968();
  v5 = sub_29EC00E98();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v1 + 352) = v8;
    *v8 = v1;
    v8[1] = sub_29EBE5F88;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 56;
LABEL_11:

    return sub_29EBE9A58(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v16 = *(v1 + 304);

  sub_29EC00668();
  swift_allocObject();
  sub_29EC00658();
  sub_29EBF2B94();
  sub_29EC00648();
  v17 = v16;
  *(v1 + 328) = v16;

  if (v16)
  {

    v18 = v16;
    v19 = sub_29EC00968();
    v20 = sub_29EC00EB8();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v1 + 248);
      v21 = *(v1 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315394;
      *(v1 + 232) = v17;
      v25 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v26 = sub_29EC00B48();
      v28 = sub_29EBD24D0(v26, v27, v42);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_29EBD24D0(v22, v21, v42);
      _os_log_impl(&dword_29EBB9000, v19, v20, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v24, -1, -1);
      MEMORY[0x29EDAC460](v23, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v1 + 336) = v29;
    *v29 = v1;
    v29[1] = sub_29EBE5A78;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 136;
    goto LABEL_11;
  }

  v31 = sub_29EC00968();
  v32 = sub_29EC00ED8();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = *(v1 + 248);
    v33 = *(v1 + 256);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v42);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_29EBD24D0(v34, v33, v42);
    _os_log_impl(&dword_29EBB9000, v31, v32, "Fetch %s END -- Local load {filename: %s}", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v36, -1, -1);
    MEMORY[0x29EDAC460](v35, -1, -1);
  }

  sub_29EBF28E0(v2, v3);

  v37 = *(v1 + 240);
  v38 = *(v1 + 104);
  v39 = *(v1 + 128);
  v40 = *(v1 + 112);
  *v37 = *(v1 + 96);
  *(v37 + 8) = v38;
  *(v37 + 16) = v40;
  *(v37 + 32) = v39;
  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_29EBE586C()
{
  v22 = v0;
  v1 = v0[38];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v0[26] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29EBD24D0(v7, v6, &v21);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[46] = v14;
  *v14 = v0;
  v14[1] = sub_29EBE6480;
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[33];
  v19 = v0[31];

  return sub_29EBE9A58((v0 + 2), v19, v17, v18, v15, v16);
}

uint64_t sub_29EBE5A78()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_29EBE5D6C;
  }

  else
  {
    v4 = sub_29EBE5BA4;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE5BA4()
{
  v18 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 312);
  if (v3)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v17);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  sub_29EBF28E0(v6, v5);

  v11 = *(v0 + 240);
  v12 = *(v0 + 144);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  *v11 = *(v0 + 136);
  *(v11 + 8) = v12;
  *(v11 + 16) = v14;
  *(v11 + 32) = v13;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_29EBE5D6C()
{
  v20 = v0;
  v1 = v0[43];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v19);
    *(v8 + 12) = 2080;
    v0[28] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, v19);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_29EBD24D0(v7, v6, v19);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v14 = v0[40];
  v15 = v0[41];
  v16 = v0[39];
  swift_willThrow();
  sub_29EBF28E0(v16, v14);

  v17 = v0[1];

  return v17();
}

uint64_t sub_29EBE5F88()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_29EBE6270;
  }

  else
  {
    v4 = sub_29EBE60B4;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE60B4()
{
  v17 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  if (v3)
  {
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29EBD24D0(v7, v6, &v16);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- load from CloudKit {cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  sub_29EBF28E0(v5, v4);

  v10 = *(v0 + 240);
  v11 = *(v0 + 64);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  *v10 = *(v0 + 56);
  *(v10 + 8) = v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29EBE6270()
{
  v19 = v0;
  v1 = v0[45];

  v2 = v1;
  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v18);
    *(v8 + 12) = 2080;
    v0[27] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, v18);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_29EBD24D0(v7, v6, v18);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v14 = v0[39];
  v15 = v0[40];
  swift_willThrow();
  sub_29EBF28E0(v14, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_29EBE6480()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_29EBE675C;
  }

  else
  {
    v4 = sub_29EBE65AC;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EBE65AC()
{
  v16 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 304);
  if (v3)
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_29EBD24D0(v6, v5, &v15);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 24);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  *v9 = *(v0 + 16);
  *(v9 + 8) = v10;
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_29EBE675C()
{
  v11 = v0;

  v1 = sub_29EC00968();
  v2 = sub_29EC00EB8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29EBD24D0(v4, v3, v10);
    _os_log_impl(&dword_29EBB9000, v1, v2, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v6, -1, -1);
    MEMORY[0x29EDAC460](v5, -1, -1);
  }

  v7 = v0[38];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_29EBE68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBE6920, a6, 0);
}

uint64_t sub_29EBE6920()
{
  v22 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_29EC00988();
  v0[36] = __swift_project_value_buffer(v2, qword_2A188A090);

  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00ED8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_29EC00AE8();
    v14 = v13;

    v15 = sub_29EBD24D0(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  v16 = v0[32];
  v17 = *(v0[35] + 320);
  v0[24] = v0[31];
  v0[25] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_29EBE6C04;

  return (v20)(v0 + 22, v0 + 24);
}

uint64_t sub_29EBE6C04()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_29EBE7234;
  }

  else
  {
    v2 = sub_29EBE6D18;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBE6D34(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  v4 = sub_29EC00968();
  v5 = sub_29EC00E98();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v1 + 352) = v8;
    *v8 = v1;
    v8[1] = sub_29EBE7588;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 56;
LABEL_11:

    return sub_29EBE8AD0(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v16 = *(v1 + 304);

  sub_29EC00668();
  swift_allocObject();
  sub_29EC00658();
  sub_29EBF2B94();
  sub_29EC00648();
  v17 = v16;
  *(v1 + 328) = v16;

  if (v16)
  {

    v18 = v16;
    v19 = sub_29EC00968();
    v20 = sub_29EC00EB8();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v1 + 248);
      v21 = *(v1 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315394;
      *(v1 + 232) = v17;
      v25 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v26 = sub_29EC00B48();
      v28 = sub_29EBD24D0(v26, v27, v42);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_29EBD24D0(v22, v21, v42);
      _os_log_impl(&dword_29EBB9000, v19, v20, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v24, -1, -1);
      MEMORY[0x29EDAC460](v23, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v1 + 336) = v29;
    *v29 = v1;
    v29[1] = sub_29EBE745C;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 136;
    goto LABEL_11;
  }

  v31 = sub_29EC00968();
  v32 = sub_29EC00ED8();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = *(v1 + 248);
    v33 = *(v1 + 256);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v42);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_29EBD24D0(v34, v33, v42);
    _os_log_impl(&dword_29EBB9000, v31, v32, "Fetch %s END -- Local load {filename: %s}", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v36, -1, -1);
    MEMORY[0x29EDAC460](v35, -1, -1);
  }

  sub_29EBF28E0(v2, v3);

  v37 = *(v1 + 240);
  v38 = *(v1 + 104);
  v39 = *(v1 + 128);
  v40 = *(v1 + 112);
  *v37 = *(v1 + 96);
  *(v37 + 8) = v38;
  *(v37 + 16) = v40;
  *(v37 + 32) = v39;
  v41 = *(v1 + 8);

  return v41();
}